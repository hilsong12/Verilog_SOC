#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"

// AXI Lite 슬레이브 레지스터 오프셋 (32비트 = 4바이트 단위)
#define REG_DATA_OFFSET   0  // slv_reg0: 데이터 (Send Buffer)
#define REG_CTRL_OFFSET   1  // slv_reg1: 제어 (Bit 0: Send, Bit 1: RS)
#define REG_BUSY_OFFSET   2  // slv_reg2: Busy Flag (Read Only)

// LCD 명령어 집합
#define LCD_CMD_CLEAR           0x01
#define LCD_CMD_RETURN_HOME     0x02
#define LCD_CMD_ENTRY_MODE      0x06
#define LCD_CMD_DISPLAY_ON      0x0C
#define LCD_CMD_DISPLAY_OFF     0x08
#define LCD_CMD_FUNCTION_SET    0x28 // 4-bit, 2-line, 5x8 dots
#define LCD_CMD_SHIFT_DISPLAY_R 0x1C
#define LCD_CMD_SET_DDRAM_ADDR  0x80
#define LCD_CMD_SET_CGRAM_ADDR  0x40

#define lcd_cntr_addr XPAR_MYIP_IIC_CNTR_0_BASEADDR
#define dht_cntr_addr XPAR_MYIP_DHT11_0_BASEADDR


// volatile 키워드 필수! (컴파일러 최적화 방지)
volatile unsigned int *lcd_ip_base = (unsigned int *)lcd_cntr_addr;
volatile unsigned int *dht_ip_base = (unsigned int *)dht_cntr_addr;



// [핵심 1] 하드웨어가 쉴 때까지 기다리는 함수
void LCD_WaitBusy() {
    // slv_reg2(Offset 8)의 값을 읽어서 Busy(Bit 0)가 1인 동안 무한 대기
    // 하드웨어 속도(I2C)가 느리기 때문에 반드시 필요함
    while (lcd_ip_base[REG_BUSY_OFFSET] & 0x01); 

    // int timeout = 0;
    // // Busy가 1이면 계속 돔
    // while (lcd_ip_base[REG_BUSY_OFFSET] & 0x01) {
    //     timeout++;
    //     // 1초 이상 기다려도 안 끝나면? (MicroBlaze 기준 대략적인 카운트)
    //     if(timeout > 1000000) { 
    //         print("ERROR: Hardware stuck in BUSY!\n\r");
    //         break;
    //     }
    // }        
}

// [핵심 2] 펄스 생성 및 데이터 전송
void LCD_Write(u8 value, u8 is_data) {
    
    // 1. 하드웨어가 이전 작업을 끝낼 때까지 대기
    LCD_WaitBusy();

    // 2. 데이터 버퍼(slv_reg0)에 값 쓰기
    lcd_ip_base[REG_DATA_OFFSET] = value;

    // 3. 제어 신호 준비 (아직 Send는 0)
    // RS 비트 설정: 데이터(1) or 명령(0)
    u32 ctrl_rs = (is_data) ? 0x02 : 0x00; // Bit 1이 RS

    // 4. [Rising Edge 만들기] 
    // Step A: Send = 0 상태 확정 (혹시 1로 남아있을까봐)
    lcd_ip_base[REG_CTRL_OFFSET] = ctrl_rs | 0x00; 
    
    // Step B: Send = 1 로 변경 (0 -> 1 순간에 하드웨어가 동작!)
    lcd_ip_base[REG_CTRL_OFFSET] = ctrl_rs | 0x01; 

    // Step C: Send = 0 으로 복귀 (다음 전송을 위해 방아쇠 당기기 전 상태로)
    // MicroBlaze가 너무 빠를 수 있으니 아주 잠깐 딜레이 (안전빵)
    for(volatile int k=0; k<100; k++); 
    lcd_ip_base[REG_CTRL_OFFSET] = ctrl_rs | 0x00;

    // // Step B: Send = 1 (Rising Edge)
    // lcd_ip_base[REG_CTRL_OFFSET] = ctrl_rs | 0x01; 

    // // [디버깅] 여기서 Busy 비트
    // // 정상이라면 Send=1을 주자마자 하드웨어는 Busy=1이 되어야 함.
    // u32 status = lcd_ip_base[REG_BUSY_OFFSET];
    // xil_printf("Cmd Sent. Status Register: 0x%02x\n\r", status);
}

// ----------------------------------------------------------------
// 3. 미들웨어 (Wrapper)
// ----------------------------------------------------------------
void LCD_SendCommand(u8 cmd) {
    LCD_Write(cmd, 0); // RS = 0
}

void LCD_SendData(u8 data) {
    LCD_Write(data, 1); // RS = 1
}

void LCD_Init_Soft() {
    // 하드웨어(Verilog) 내부에서 전원 인가 후 약 80ms 동안 초기화 로직이 돔.
    // 소프트웨어는 안전하게 100ms 정도 멍 때려줘야 함.
    usleep(100000); 
    
    // Verilog FSM이 초기화를 마치면 IDLE 상태가 됨.
    // 혹시 모르니 강제로 기능 설정 한 번 더 (안전 장치)
    LCD_SendCommand(LCD_CMD_FUNCTION_SET); // 0x28
    LCD_SendCommand(LCD_CMD_DISPLAY_ON);   // 0x0C
    LCD_SendCommand(LCD_CMD_ENTRY_MODE);   // 0x06
    LCD_SendCommand(LCD_CMD_CLEAR);        // 0x01
}

// 문자열 출력용 래퍼 함수 (중요!)
void LCD_PrintString(char *str) {
    while(*str) {
        LCD_SendData(*str++);
    }
}

// ----------------------------------------------------------------
// 4. 메인 함수
// ----------------------------------------------------------------
int main()
{
    init_platform();
    print("LCD Custom IP Control Start...\n\r");

    // [중요] 하드웨어 자체 초기화 시간 벌어주기
    LCD_Init_Soft();

    print("Init Done. Sending Text...\n\r");
    
    u32 humidity, temperature;    
    char buffer[20]; // 변환된 문자열을 담을 공간 (넉넉히 20바이트)
    
    while(1){
    
    humidity= dht_ip_base[0];
    temperature= dht_ip_base[1];
    

    // 1. 첫 번째 줄: 습도 출력
    LCD_SendCommand(0x80); // 1번째 줄 시작
    usleep(10000);

    // humidity 값을 문자열로 변환하여 buffer에 저장
    sprintf(buffer, "Humidity : %d %%", humidity); 
    LCD_PrintString(buffer); // [수정] 반복문 대신 함수 호출


    // 두 번째 줄  : 온도 출력  (0xC0: 2번째 줄 시작 주소)
    LCD_SendCommand(0xC0); 
    usleep(10000);

    // temperature 값을 문자열로 변환
    sprintf(buffer, "Temp : %d C", temperature);
    LCD_PrintString(buffer); // [수정] 반복문 대신 함수 호출
    
    }

    print("Done.\n\r");
    
    cleanup_platform();
    return 0;
}