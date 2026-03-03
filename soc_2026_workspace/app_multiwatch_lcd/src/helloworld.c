#include <stdint.h>
#include <stdio.h>
#include <xil_exception.h>
#include <xintc_l.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"
#include "xgpio.h"
#include "xintc.h"  
#include "xuartlite.h" 
#include <string.h>
#include "xil_types.h"   // u8, u32

// 주소 정의
#define stopwatch_addr XPAR_MYIP_STOPWATCH_0_BASEADDR
#define cooktimer_addr XPAR_MYIP_COOKTIMER_0_BASEADDR
#define watch_addr XPAR_MYIP_WATCH_0_BASEADDR
#define gpio_addr XPAR_AXI_GPIO_0_BASEADDR
#define fnd_addr XPAR_MYIP_FND_CNTR_0_BASEADDR
#define intc_addr XPAR_MICROBLAZE_RISCV_0_AXI_INTC_BASEADDR
#define uart_addr XPAR_XUARTLITE_0_BASEADDR
//#define pixel_addr XPAR_MYIP_PIXEL_LCD_0_BASEADDR

#define GPIO_VEC_ID XPAR_FABRIC_XGPIO_0_INTR
#define UART_VEC_ID XPAR_FABRIC_AXI_UARTLITE_0_INTR

#define btn_channel 1
#define sw_channel 2 

#define watch 0
#define speedSkating 1
#define alpineSkiing 2
#define iceHockey    3

// LCD 관련 정의
#define iic0_addr XPAR_MYIP_IIC_CNTR_0_BASEADDR
#define iic1_addr XPAR_MYIP_IIC_CNTR_1_BASEADDR

#define REG_DATA_OFFSET   0  
#define REG_CTRL_OFFSET   1  
#define REG_BUSY_OFFSET   2  

#define LCD_CMD_CLEAR           0x01
#define LCD_CMD_RETURN_HOME     0x02
#define LCD_CMD_ENTRY_MODE      0x06
#define LCD_CMD_DISPLAY_ON      0x0C
#define LCD_CMD_FUNCTION_SET    0x28 
#define LCD_CMD_LINE1 0x80   // DDRAM 0x00
#define LCD_CMD_LINE2 0xC0   // DDRAM 0x40

// 아이스하키 상태 정의
#define ICE_IDLE         0    
#define ICE_PERIOD       1    // 경기 시간 (20분)
#define ICE_TIMEOUT      2    // 작전 시간 (30초)
#define ICE_INTERMISSION 3    // 휴식 시간 (15분)

// 스피드스케이팅 
#define TOTAL_LAPS   4
#define CSEC_PER_SEC 100

volatile int lap_count = 0;                 // 저장된 랩 수(0~4)
volatile unsigned int last_abs_sec  = 0;    // 직전 Lap 누적 sec
volatile unsigned int last_abs_csec = 0;    // 직전 Lap 누적 csec
volatile unsigned int split_sec[TOTAL_LAPS];   // 각 랩 split sec
volatile unsigned int split_csec[TOTAL_LAPS];  // 각 랩 split csec
volatile unsigned int best_split_csec = 0;  // PB(최소 split), 0이면 아직 없음

volatile unsigned int *lcd0_ip_base = (unsigned int *)iic0_addr;
volatile unsigned int *lcd1_ip_base = (unsigned int *)iic1_addr;

// ------------------- LCD 함수들 ---------------------------
void LCD0_WaitBusy() { while (lcd0_ip_base[REG_BUSY_OFFSET] & 0x01); }
void LCD1_WaitBusy() { while (lcd1_ip_base[REG_BUSY_OFFSET] & 0x01); }

void LCD0_Write(u8 value, u8 is_data) {
    LCD0_WaitBusy();
    lcd0_ip_base[REG_DATA_OFFSET] = value;                           
    u32 ctrl_rs = (is_data) ? 0x02 : 0x00;
    lcd0_ip_base[REG_CTRL_OFFSET] = ctrl_rs | 0x00; 
    lcd0_ip_base[REG_CTRL_OFFSET] = ctrl_rs | 0x01; 
    for(volatile int k=0; k<100; k++); 
    lcd0_ip_base[REG_CTRL_OFFSET] = ctrl_rs | 0x00;
}

void LCD1_Write(u8 value, u8 is_data) {
    LCD1_WaitBusy();
    lcd1_ip_base[REG_DATA_OFFSET] = value;
    u32 ctrl_rs = (is_data) ? 0x02 : 0x00;
    lcd1_ip_base[REG_CTRL_OFFSET] = ctrl_rs | 0x00; 
    lcd1_ip_base[REG_CTRL_OFFSET] = ctrl_rs | 0x01; 
    for(volatile int k=0; k<100; k++); 
    lcd1_ip_base[REG_CTRL_OFFSET] = ctrl_rs | 0x00;
}

void LCD0_SendCommand(u8 cmd) { LCD0_Write(cmd, 0); }
void LCD1_SendCommand(u8 cmd) { LCD1_Write(cmd, 0); }
void LCD0_SendData(u8 data) { LCD0_Write(data, 1); }
void LCD1_SendData(u8 data) { LCD1_Write(data, 1); }

void LCD0_Init_Soft() {
    usleep(100000); 
    LCD0_SendCommand(LCD_CMD_FUNCTION_SET);
    LCD0_SendCommand(LCD_CMD_DISPLAY_ON); 
    LCD0_SendCommand(LCD_CMD_ENTRY_MODE); 
    LCD0_SendCommand(LCD_CMD_CLEAR);      
}

void LCD1_Init_Soft() {
    usleep(100000); 
    LCD1_SendCommand(LCD_CMD_FUNCTION_SET);
    LCD1_SendCommand(LCD_CMD_DISPLAY_ON); 
    LCD1_SendCommand(LCD_CMD_ENTRY_MODE); 
    LCD1_SendCommand(LCD_CMD_CLEAR);      
}

void LCD0_PrintString(char *str) { while(*str) { LCD0_SendData(*str++); } }
void LCD1_PrintString(char *str) { while(*str) { LCD1_SendData(*str++); } }

// 16칸 고정 출력(남는 칸 공백)
static void LCD0_Print16(u8 line_cmd, const char *s)
{
    char buf[17];
    int n = (int)strlen(s);
    if (n > 16) n = 16;
    for (int i=0;i<16;i++) buf[i] = ' ';
    for (int i=0;i<n;i++)  buf[i] = s[i];
    buf[16] = '\0';
    LCD0_SendCommand(line_cmd);
    LCD0_PrintString(buf);
}

static void LCD1_PrintN(const char *s, int n) // n글자만 출력(부족하면 공백)
{
    for (int i=0;i<n;i++) {
        char c = (s && s[i]) ? s[i] : ' ';
        LCD1_SendData((u8)c);
    }
}
// -----------------------------------------------------------------------

XUartLite uart_device;
XIntc intc; 
XGpio gpio_device; 

unsigned int *stopwatch_device = (unsigned int*) stopwatch_addr;
unsigned int *watch_device = (unsigned int*) watch_addr;
unsigned int *cooktimer_device = (unsigned int*) cooktimer_addr;
//unsigned int *pixel_device = (unsigned int*) pixel_addr;
unsigned int *fnd_device = (unsigned int*)fnd_addr;   

void Gpio_Handler(void *CallBackRef);
void RecvHandler(void *CallBackRef, unsigned int EventData);
void SendHandler(void *CallBackRef, unsigned int EventData);

volatile char btn_flag = 0;
volatile char sw_flag = 0; // 스위치 변경 감지용 플래그

// 1. 전역 변수 선언
volatile char uart_rx_data = 0;
volatile int uart_rx_flag = 0;

// 전역 변수 추가
volatile unsigned int shared_btn_value = 0;
volatile unsigned int seoul_hour, seoul_min, seoul_sec =0;
volatile unsigned int milan_hour;

void milan_change(){
    unsigned int current_seoul_hour = watch_device[4];
    
    if(current_seoul_hour >= 8)  
        milan_hour = current_seoul_hour - 8;
    else  
        milan_hour = current_seoul_hour + 16;
}


// ------------------- 아이스하키 헬퍼 함수 -------------------
void hockey_start_timer(int seconds) {
    int min = seconds / 60;
    int sec = seconds % 60;

    cooktimer_device[2] = 0b10;   // 정지
    usleep(10000);

    cooktimer_device[0] = sec;
    cooktimer_device[1] = min;

    cooktimer_device[2] = 0b01;   // start 펄스 (딱 1번)
    usleep(1000);
    cooktimer_device[2] = 0x00;
}

void hockey_pause_timer() {
    cooktimer_device[2] = 0b10;      // alarm_off
}

void hockey_resume_timer() {
    int cur = hockey_get_remaining_time();
    int min = cur / 60;
    int sec = cur % 60;

    cooktimer_device[2] = 0b10;   // 일단 정지
    usleep(1000);

    // 🔴 핵심: 현재 값으로 load 갱신
    cooktimer_device[0] = sec;
    cooktimer_device[1] = min;

    cooktimer_device[2] = 0b01;   // start 펄스
    usleep(1000);
    cooktimer_device[2] = 0;
}

void hockey_clear_timer(){
    cooktimer_device[2] = 0b10;
    usleep(10000);
    cooktimer_device[2] = 0;
    cooktimer_device[0] = 0;
    cooktimer_device[1] = 0;
}
void hockey_hard_reset_timer() {
    cooktimer_device[2] = 0;        // 모든 제어 비트 LOW
    usleep(10000);

    cooktimer_device[0] = 0;        // sec
    cooktimer_device[1] = 0;        // min
    usleep(10000);

    cooktimer_device[2] = 0b10;     // alarm_off 강제
    usleep(10000);
    cooktimer_device[2] = 0;        // 완전 클리어
}

int hockey_get_remaining_time() {
    int min = cooktimer_device[4];       // 분 읽기
    int sec = cooktimer_device[3];       // 초 읽기
    return (min * 60) + sec;             // 초로 변환
}

// ------------------- 스피드스케이팅 헬퍼 함수 -------------------

static inline void Stopwatch_ToggleStartStop(void)
{
    stopwatch_device[0] |= 0b001;
    stopwatch_device[0] &= ~0b001;
}

// 누적(sec,csec) -> total_csec 변환
static inline unsigned int to_csec(unsigned int sec, unsigned int csec)
{
    return sec * CSEC_PER_SEC + (csec % CSEC_PER_SEC);
}

// total_csec -> (sec,csec) 변환
static inline void from_csec(unsigned int total_csec, unsigned int *sec, unsigned int *csec)
{
    *sec = total_csec / CSEC_PER_SEC;
    *csec = total_csec % CSEC_PER_SEC;
}

// 기록 전체 초기화 (Clear 버튼에서 사용)
static void Speed_Reset(void)
{
    lap_count = 0;
    last_abs_sec = 0;
    last_abs_csec = 0;
    best_split_csec = 0;

    for (int i=0;i<TOTAL_LAPS;i++) {
        split_sec[i] = 0;
        split_csec[i] = 0;
    }
}

// LCD0 2줄(BEST)만 갱신
static void Speed_UpdateBestLine(void)
{
    char best_line[17];
    if (best_split_csec == 0) {
        snprintf(best_line, sizeof(best_line), "BEST:--.--");
    } else {
        unsigned int bs, bc;
        from_csec(best_split_csec, &bs, &bc);
        snprintf(best_line, sizeof(best_line), "BEST:%02u.%02u", bs, bc);
    }
    LCD0_Print16(LCD_CMD_LINE2, best_line);
}

// idx(0~3) 해당 랩 "8칸"만 LCD1의 정확한 위치에 출력
static void Speed_UpdateOneLapCell(int idx)
{
    // L1(1~2랩): base=LINE1, col=0 or 8
    // L2(3~4랩): base=LINE2, col=0 or 8
    u8 base = (idx < 2) ? LCD_CMD_LINE1 : LCD_CMD_LINE2;
    u8 col  = (idx % 2) * 8;
    LCD1_SendCommand((u8)(base + col));

    char cell[9];
    int lap_no = idx + 1;

    if (lap_count >= lap_no) {
        // 8칸 안에 들어가는 포맷: "n:SS.CC" (최대 7글자) + 공백 padding
        snprintf(cell, sizeof(cell), "%d:%02u.%02u", lap_no, split_sec[idx], split_csec[idx]);
    } else {
        snprintf(cell, sizeof(cell), "%d:--.--", lap_no);
    }

    // 8칸 고정 출력(부족한 글자는 LCD1_PrintN에서 공백으로 채움)
    LCD1_PrintN(cell, 8);
}

// speed skating 화면 프레임(초기 화면) 출력
static void Speed_ShowFrame(void)
{
    // LCD0 1줄: 모드 고정 문구
    LCD0_Print16(LCD_CMD_LINE1, "SPEED SKATING");
    // LCD0 2줄: BEST 표시
    Speed_UpdateBestLine();

    // LCD1: 4개 칸 모두 placeholder 출력
    Speed_UpdateOneLapCell(0);
    Speed_UpdateOneLapCell(1);
    Speed_UpdateOneLapCell(2);
    Speed_UpdateOneLapCell(3);
}

// Lap 버튼 처리: 이번 split 계산/저장 + BEST 갱신 + "해당 칸만" LCD 업데이트
static void Speed_OnLap(void)
{
    if (lap_count >= TOTAL_LAPS) {
        xil_printf("Already finished 4 laps.\r\n");
        return;
    }

    // Stopwatch IP 누적 시간 읽기
    unsigned int abs_sec  = stopwatch_device[1];
    unsigned int abs_csec = stopwatch_device[2] % CSEC_PER_SEC;

    // now_total - last_total = 이번 Lap split
    unsigned int now_total  = to_csec(abs_sec, abs_csec);
    unsigned int last_total = to_csec(last_abs_sec, last_abs_csec);
    if (now_total < last_total) now_total = last_total; // 안전장치

    unsigned int split_total = now_total - last_total;

    // split_total을 sec/csec로 변환해서 저장
    unsigned int sp_s, sp_c;
    from_csec(split_total, &sp_s, &sp_c);

    int idx = lap_count; // 이번에 저장할 랩 인덱스(0~3)

    split_sec[idx]  = sp_s;
    split_csec[idx] = sp_c;

    // PB 갱신(최초 또는 더 작은 split이면 업데이트)
    if (best_split_csec == 0 || split_total < best_split_csec) {
        best_split_csec = split_total;
    }

    lap_count++;

    // 다음 split 계산을 위한 기준점(직전 누적시간) 갱신
    last_abs_sec  = abs_sec;
    last_abs_csec = abs_csec;

    xil_printf("Lap %d split=%u.%02u  (BEST=%u.%02u)\r\n",
               lap_count, sp_s, sp_c,
               best_split_csec / CSEC_PER_SEC, best_split_csec % CSEC_PER_SEC);

    // ★ LCD 갱신은 "이번 랩 칸(8칸)"만 업데이트해서 옆 칸 영향 방지
    Speed_UpdateOneLapCell(idx);

    // BEST 라인만 업데이트
    Speed_UpdateBestLine();

    if (lap_count >= TOTAL_LAPS) {
        Stopwatch_ToggleStartStop();   // start/stop 토글 -> stop
        xil_printf("4 LAPS DONE -> AUTO STOP\r\n");
    }
}
// ============================================================

int main(){
    init_platform();
   
    XUartLite_Initialize(&uart_device, uart_addr);
    XGpio_Initialize(&gpio_device, gpio_addr);

    XGpio_SetDataDirection(&gpio_device, btn_channel, 0xf);
    XGpio_SetDataDirection(&gpio_device, sw_channel, 0xffff);
    
    // [추가] LCD 초기화 (필수)
    LCD0_Init_Soft();
    LCD1_Init_Soft();

    XIntc_Initialize(&intc, intc_addr);
    XIntc_Connect(&intc, GPIO_VEC_ID, Gpio_Handler, (void *)&gpio_device);
    XIntc_Connect(&intc, UART_VEC_ID, (XInterruptHandler) XUartLite_InterruptHandler, (void *)&uart_device);                                    
                                    
    XIntc_Enable(&intc, GPIO_VEC_ID); 
    XIntc_Enable(&intc, UART_VEC_ID); 
    XIntc_Start(&intc, XIN_REAL_MODE);

    XGpio_InterruptEnable(&gpio_device, btn_channel); 
    XGpio_InterruptEnable(&gpio_device, sw_channel); 
    XGpio_InterruptGlobalEnable(&gpio_device);

    XUartLite_SetRecvHandler(&uart_device, RecvHandler, (void *)&uart_device);
    XUartLite_SetSendHandler(&uart_device, SendHandler, (void *)&uart_device);
    XUartLite_EnableInterrupt(&uart_device);
    
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XIntc_InterruptHandler, (void *)&intc);
    Xil_ExceptionEnable();  
        
    print("System Started\n");
    fnd_device[1] = 1; 

    print("Initializing Pixel LCD (ILI9341)...\n");
   // volatile unsigned int *pixel_cntr = (unsigned int*)(pixel_addr +4);
    //*pixel_cntr = 1;
    //usleep(10000);
    //*pixel_cntr = 0;
   // usleep(120000);
  //  print("Pixel LCD reset complete\n");
   // pixel_device[0] = 0;
  //  print("Pixel LCD initialization done\n");

    //watch 시간 설정
    seoul_hour = 07;
    seoul_min = 59;
    seoul_sec = 55;

    watch_device[0] =seoul_hour;
    watch_device[1] =seoul_min;
    watch_device[2] =seoul_sec;


   // 2. Load 신호 발생 (0번 비트가 load라고 가정)
    watch_device[3] |= (1 << 0);  // Load 신호 High (0 -> 1 상승 엣지 발생)
    usleep(10);                   // 하드웨어가 인식할 아주 짧은 시간 대기
    watch_device[3] &= ~(1 << 0); // Load 신호 Low (다음 설정을 위해 초기화)

    int mode = 0; 
    int prev_mode = -1;
    char lcd_buff[32];
    int loop_cnt = 0;
    int penalty_time = 0;

    // 아이스하키 전역 변수
    int hockey_state = ICE_IDLE;      
    int hockey_period = 1;              // 현재 피리어드 (1~3)
    int hockey_timer_running = 0;       // 타이머 동작 여부
    int hockey_saved_time = 0;          // 작전타임 시 저장할 경기 시간
    int hockey_prev_time = -1;

    // speed skating 초기 화면
    Speed_Reset();
    LCD0_SendCommand(LCD_CMD_CLEAR);
    LCD1_SendCommand(LCD_CMD_CLEAR);
    usleep(2000);
    Speed_ShowFrame();

    // [중요] 첫 번째 데이터를 받을 준비 (멍석 깔기)
    XUartLite_Recv(&uart_device, (u8*)&uart_rx_data, 1);

    while(1)
    {   
        unsigned int current_sec = stopwatch_device[1];
        unsigned int current_csec = stopwatch_device[2];
        milan_change();



        if(uart_rx_flag) {
        XUartLite_Recv(&uart_device, (u8*)&uart_rx_data, 1);
        xil_printf("Data received: %c\r\n", uart_rx_data);

        uart_rx_flag = 0; // 플래그 초기화
        }

        // 1. 스위치 값으로 모드 설정
        unsigned int sw_val = XGpio_DiscreteRead(&gpio_device, sw_channel);
        
            // 1. 모드 선택 (Switch)
        switch (sw_val & 0x0F) { // 0x01, 0x02, 0x04, 0x08 비트 체크
        case 0x01: mode = watch ; break;
        case 0x02: mode = speedSkating; break;
        case 0x04: mode = alpineSkiing; break;
        case 0x08: mode = iceHockey; break;
        default: mode = watch; // 상태 유지 필요 시 추가
        }



       // 2. 버튼 처리 (모드별 동작 분기)
        if (btn_flag) {
        btn_flag = 0;    
        print("btn_flag=0\n");
        unsigned int btn_value = shared_btn_value; // 저장된 값 사용

        switch (mode) {
            case speedSkating: // [스톱워치 모드]
                switch (btn_value) {
                    case 1: // btn 0 - Start/Stop
                        stopwatch_device[0] |= 0b001;
                        stopwatch_device[0] &= ~0b001;
                        xil_printf("start/stop\n");

                        while (XGpio_DiscreteRead(&gpio_device, btn_channel) != 0) { }
                        usleep(30000);
                        break;
                    
                    case 2: // Lap
                        Speed_OnLap();
                        while (XGpio_DiscreteRead(&gpio_device, btn_channel) != 0) { }
                        usleep(30000);
                        break;

                    case 4: // Clear
                        // Clear에서만 기록 초기화
                        Speed_Reset();
                        Speed_ShowFrame();

                        stopwatch_device[0] |= 0b100;
                        stopwatch_device[0] &= ~0b100;
                        xil_printf("clear\n");

                        while (XGpio_DiscreteRead(&gpio_device, btn_channel) != 0) { }
                        usleep(30000);
                        break;
                }
                    
              
                break;

            case alpineSkiing: 
                 switch (btn_value) {
                    case 1: stopwatch_device[0] |= 0b001; stopwatch_device[0] &= ~0b001; print("start\n"); break; // Start
                    case 2: stopwatch_device[0] |= 0b010; stopwatch_device[0] &= ~0b010; print("lap\n"); break; // Lap
                    case 4: stopwatch_device[0] |= 0b100; stopwatch_device[0] &= ~0b100; penalty_time = 0; print("clear\n");break; // Clear
                    case 8: penalty_time += 3; usleep(200000); print("Penalty +3s\n");  break;   // 벌점 누적
                }
                
                break;

            case iceHockey:
                switch (btn_value){
                    case 1: // btn0 - start/pause
                        switch(hockey_state){
                            case ICE_IDLE:
                                hockey_hard_reset_timer();
                                hockey_state = ICE_PERIOD;
                                hockey_timer_running = 1;
                                hockey_start_timer(20*2);
                                usleep(100000);
                                print("GAME START\n");
                                break;

                            case ICE_PERIOD:
                                if(hockey_timer_running){
                                    hockey_pause_timer();
                                    hockey_timer_running = 0;
                                }
                                else{
                                    hockey_resume_timer();
                                    hockey_timer_running = 1;
                                }
                                break;
                        }
                        break;

                    case 2: // btn1 - timeout
                        if(hockey_state == ICE_PERIOD && hockey_timer_running){
                            hockey_saved_time = hockey_get_remaining_time();
                            hockey_pause_timer();
                            hockey_state = ICE_TIMEOUT;
                            hockey_timer_running = 1;
                            hockey_start_timer(3);
                        }
                        break;
                    
                    case 4: // btn2 - HARD RESET
                        hockey_hard_reset_timer();

                        hockey_state = ICE_IDLE;
                        hockey_period = 1;
                        hockey_timer_running = 0;
                        hockey_saved_time = 0;
                        hockey_prev_time = -1;

                        print("Hockey HARD RESET\n");
                        break;

                }
                break;

            case watch: // [시계 모드]
                switch(btn_value){
                    case 1: // btn0 - hour++
                        seoul_hour = (seoul_hour +1)%24;
                        break;
                    case 2: // btn1 - min++
                        seoul_min = (seoul_min +1)%60;
                        break;
                    case 4: // btn2 - sec++
                        seoul_sec = (seoul_sec +1)%60;
                        break;
                    case 8: // btn3 - reset
                        seoul_hour = 0;
                        seoul_min = 0;
                        seoul_sec = 0;
                        break;
                }

                watch_device[0] = seoul_hour;
                watch_device[1] = seoul_min;
                watch_device[2] = seoul_sec;

                watch_device[3] |= (1 << 0);
                usleep(10);
                watch_device[3] &= ~(1 << 0);
                break;
        }
        }

        // 자동 전환 로직 부분 수정
        if (mode == iceHockey && hockey_timer_running){
            int current_time = hockey_get_remaining_time();
    
            // 이전 시간이 0보다 크고, 현재 0이 된 경우에만 전환
            if(current_time == 0 && hockey_prev_time > 0){
                switch (hockey_state){
                 case ICE_PERIOD:
                        if(hockey_period < 3){
                            hockey_state = ICE_INTERMISSION;
                         hockey_start_timer(15*2);
                         hockey_prev_time = -1; // 리셋
                         print("INTERMISSION\n");
                      }
                      else{
                          hockey_state = ICE_IDLE;
                          hockey_period = 1;
                          hockey_timer_running = 0;
                          hockey_prev_time = -1; // 리셋
                          hockey_clear_timer();
                          print("GAME OVER\n");
                      }
                     break;

                  case ICE_TIMEOUT:
                      hockey_state = ICE_PERIOD;
                      hockey_start_timer(hockey_saved_time);
                       hockey_prev_time = -1; // 리셋
                     print("TIMEOUT END\n");
                     break;
            
                 case ICE_INTERMISSION:
                      hockey_period++;
                      hockey_state = ICE_PERIOD;
                      hockey_start_timer(20*2);
                     hockey_prev_time = -1; // 리셋
                      print("NEXT PERIOD START\n");
                     break;
                }
            }
        hockey_prev_time = current_time; // 현재 시간 저장
        }


        // 3. 모드 변경 시 화면 클리어 및 초기 문구 출력
        if (mode != prev_mode) {
        stopwatch_device[0] = 0;
        stopwatch_device[0] |= 0b100;   // clear
        stopwatch_device[0] &= ~0b100;
        cooktimer_device[2] = 0;
        fnd_device[0] = 0;
        //pixel_device[0] = mode;
        LCD0_SendCommand(LCD_CMD_CLEAR);
        LCD1_SendCommand(LCD_CMD_CLEAR);
        usleep(2000); 

        switch (mode) {
            case speedSkating:
                Speed_Reset();
                stopwatch_device[0] |= 0b100;  // clear
                stopwatch_device[0] &= ~0b100;
                Speed_ShowFrame();
                break;
            case alpineSkiing:
                LCD0_SendCommand(0x80);
                LCD0_PrintString("ALPINE SKIING");
                usleep(10000);
                LCD0_SendCommand(0xC0); 
                usleep(10000);
                LCD0_PrintString("MILANO-CORTINA ");

                LCD1_SendCommand(0x80);
                LCD1_PrintString("RECORD SEC CSEC ");
                break;
            case iceHockey:
                LCD0_SendCommand(0x80);
                LCD0_PrintString("MILANO-CORTINA");
                usleep(10000);
                LCD0_SendCommand(0xC0);
                usleep(10000);
                LCD0_PrintString("ICE HOCKEY ");

                LCD1_SendCommand(0x80);
                LCD1_PrintString("MODE    TIME");
                break;
            case watch: 
                LCD0_PrintString("   SEOUL TIME   ");
                LCD1_PrintString("   MILAN TIME   ");
                break;
        }
        prev_mode = mode;
        }

        // 4. 실시간 LCD 및 FND 갱신 (항상 실행되는 구간)
        if (mode == alpineSkiing) {
        int total_sec = current_sec + penalty_time; // 하드웨어 초 + 누적 벌점

        // LCD 시간 업데이트 (두 번째 줄)
        LCD1_SendCommand(0xC0); 
        sprintf(lcd_buff, "TIME  %d:%02d %d ", total_sec, current_csec,penalty_time/3); 
        LCD1_PrintString(lcd_buff);
        } 

        if (mode == watch) {
        // LCD 시간 업데이트 (두 번째 줄)
        LCD0_SendCommand(0xC0); 
        sprintf(lcd_buff, "    %02d:%02d:%02d    ", watch_device[4], watch_device[5],watch_device[6]); 
        LCD0_PrintString(lcd_buff);

        LCD1_SendCommand(0xC0); 
        sprintf(lcd_buff, "    %02d:%02d:%02d    ", milan_hour, watch_device[5],watch_device[6]); 
        LCD1_PrintString(lcd_buff);

        } 

        else if(mode == iceHockey){
            int min = 0;
            int sec = 0;

            char state_str[8];
            switch(hockey_state){
                case ICE_IDLE:
                    sprintf(state_str, "IDLE");
                    break;
                case ICE_PERIOD:
                    sprintf(state_str, "P%d", hockey_period);
                    min = hockey_get_remaining_time() / 60;
                    sec = hockey_get_remaining_time() % 60;
                    break;
                case ICE_TIMEOUT:
                    sprintf(state_str, "T/O");
                    min = hockey_get_remaining_time() / 60;
                    sec = hockey_get_remaining_time() % 60;
                    break;
                case ICE_INTERMISSION:
                    sprintf(state_str, "INT");
                    min = hockey_get_remaining_time() / 60;
                    sec = hockey_get_remaining_time() % 60;
                    break;
            }

    sprintf(lcd_buff, "%-4s    %02d:%02d   ", state_str, min, sec);
    LCD1_SendCommand(0xc0);
    LCD1_PrintString(lcd_buff);

    xil_printf("State:%d Running:%d Time:%d\n",
        hockey_state, hockey_timer_running,
        (hockey_state == ICE_IDLE) ? 0 : hockey_get_remaining_time());
    }





        //4. fnd 출력    
        switch(mode){
            case speedSkating:    fnd_device[0] = ((stopwatch_device[1]/10)<<12) 
                                                +((stopwatch_device[1]%10)<<8) 
                                                +((stopwatch_device[2]/10)<<4) 
                                                +(stopwatch_device[2]%10);      break;
            case alpineSkiing:   fnd_device[0] = ((stopwatch_device[1]/10)<<12) 
                                                +((stopwatch_device[1]%10)<<8) 
                                                +((stopwatch_device[2]/10)<<4) 
                                                +(stopwatch_device[2]%10);      break;
            case iceHockey: {
                int remaining;

                if (hockey_state == ICE_IDLE) {
                    remaining = 0;   // ✅ IDLE이면 무조건 0
                } 
                else {
                    remaining = hockey_get_remaining_time();
                }

                int min = remaining / 60;
                int sec = remaining % 60;

                fnd_device[0] = ((min/10)<<12)
                              + ((min%10)<<8)
                              + ((sec/10)<<4)
                              + (sec%10);
                break;
            }
            case watch: 

                fnd_device[0] = ((watch_device[4]/10)<<12)
                              + ((watch_device[4]%10)<<8)
                              + ((watch_device[5]/10)<<4)
                              + (watch_device[5]%10);
                break;



        }



        // // 4. 화면 갱신 (너무 빠르면 LCD 글자 깨지므로 속도 조절)
        // if(loop_cnt++ > 50000) { 
        //     loop_cnt = 0;
        //     LCD1_SendCommand(LCD_CMD_RETURN_HOME); // 커서 위치 초기화

        //     if (mode == 0) { // 스톱워치 값 출력
        //         unsigned int sec = stopwatch_device[1];
        //         unsigned int msec = stopwatch_device[2];

        //         // FND 출력
        //         fnd_device[0] = ((sec/10)<<12) + ((sec%10)<<8) + ((msec/10)<<4) + (msec%10);
                
        //         // LCD 출력
        //         sprintf(lcd_buff, "Time: %02d.%02d   ", sec, msec);
        //         LCD1_PrintString(lcd_buff);
        //     }
        //     else if (mode == 1) { // 쿡타이머 출력
        //         fnd_device[0] = 0xCCCC; // Cook 표시
        //         LCD1_PrintString("Cook Timer...   ");
        //     }
        //     else if (mode == 2) { // 시계 출력
        //         fnd_device[0] = 0x8888; // Watch 표시
        //         LCD1_PrintString("Digital Watch   ");
        //     }
        // }
    }

    cleanup_platform();
    return 0;
}

// ------------------- 인터럽트 핸들러 -------------------
void Gpio_Handler(void *CallBackRef){
    XGpio *gpio_ptr = (XGpio *)CallBackRef;
    
    unsigned int isr = XGpio_InterruptGetStatus(gpio_ptr);
                 
    if (isr & 1) { // 버튼
        unsigned int current_btn = XGpio_DiscreteRead(gpio_ptr, btn_channel);
        // 중요: 버튼을 누른 상태(0이 아님)일 때만 메인 루프에 알림
        if (current_btn != 0) {
            shared_btn_value = current_btn;
            btn_flag = 1;
            xil_printf("Button Pressed: %d\r\n", shared_btn_value);
        }
        XGpio_InterruptClear(gpio_ptr, btn_channel);
    }
    
    if (isr & 2) { // 스위치
        sw_flag = 1; 
        print("switch interrupt\r\n");
        XGpio_InterruptClear(gpio_ptr, sw_channel);
    }
} 

void RecvHandler(void *CallBackRef, unsigned int EventData){
    // xil_printf를 지우고 데이터만 읽어서 저장합니다.

    uart_rx_flag = 1; // 메인 루프에게 데이터 왔다고 알림
}

void SendHandler(void *CallBackRef, unsigned int EventData){
    return;
}