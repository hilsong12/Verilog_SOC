/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

// #include <stdio.h>
// #include "platform.h"
// #include "xil_printf.h"
// #include "xparameters.h"
// #include "sleep.h"
// #include "xgpio.h"

// #define cooktimer_ip_addr XPAR_MYIP_COOKTIMER_0_BASEADDR
// #define button_ip_addr XPAR_AXI_GPIO_0_BASEADDR

// // AXI Lite 슬레이브 레지스터 오프셋 (32비트 = 4바이트 단위)
// #define COOKTIMER_SET_SEC_OFFSET   0  // slv_reg0: sec 
// #define COOKTIMER_SET_MIN_OFFSET   1  // slv_reg1: min 
// #define COOKTIMER_CNTR_OFFSET   2  // slv_reg2: (Bit 0: dcnt_start, Bit 1: alarmoff)
// #define COOKTIMER_SEC_OFFSET    3  // 현재 sec값
// #define COOKTIMER_MIN_OFFSET    4   //현재 min값

// #define COOKTIMER_START_MASK 0b01
// #define COOKTIMER_ALARMOFF_MASK 0b10

// #define BUTTON_CHANNEL 1

// // volatile 키워드 필수! (컴파일러 최적화 방지)
// volatile unsigned int *cooktimer_addr = (unsigned int *)cooktimer_ip_addr;


// int main()
// {
//     init_platform();
    
//     XGpio button_device;
//     XGpio_Initialize(&button_device,button_ip_addr);
//     XGpio_SetDataDirection(&button_device, BUTTON_CHANNEL, 0xffff);    //버튼 입력
   
//    //변수 설정
//     u32 set_sec=0 ,set_min=0;
//     u8 dcnt_start, alarmoff;  
//     u32 data=0;
//     u32 sec, min =0;


//     //시간,초 변경
//     set_min=0;
//     set_sec=5;   

//     cooktimer_addr[COOKTIMER_SET_SEC_OFFSET] = set_sec;
//     cooktimer_addr[COOKTIMER_SET_MIN_OFFSET] = set_min; 
 
//     print("Hello World1\n\r");

//     while(1){
       

//         data = XGpio_DiscreteRead(&button_device, BUTTON_CHANNEL);      
//         dcnt_start= data & COOKTIMER_START_MASK;
//         alarmoff = data & COOKTIMER_ALARMOFF_MASK;


//         if(dcnt_start)
//         {cooktimer_addr[COOKTIMER_SET_SEC_OFFSET] = set_sec;
//         cooktimer_addr[COOKTIMER_SET_MIN_OFFSET] = set_min;        
//         alarmoff =0;
//         cooktimer_addr[COOKTIMER_CNTR_OFFSET] =  dcnt_start | alarmoff;        
//         }

//         else{
//         cooktimer_addr[COOKTIMER_CNTR_OFFSET] =  dcnt_start | alarmoff;             
//         }
        

//         sec = cooktimer_addr[COOKTIMER_SEC_OFFSET];
//         min = cooktimer_addr[COOKTIMER_MIN_OFFSET];        
        
//         printf("min: %d  sec: %d\r\n",min,sec );

//         usleep(50000);
//     }

    
//     print("Successfully ran Hello World application");
//     cleanup_platform();
//     return 0;
// }





#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"
#include "xgpio.h"



#define cooktimer_addr XPAR_MYIP_COOKTIMER_0_BASEADDR

#define button_addr XPAR_AXI_GPIO_0_BASEADDR
#define BTN_CHANNEL 1

int main(){

    init_platform();

    unsigned int *cooktimer_device = (unsigned int*)cooktimer_addr;
    cooktimer_device[0] = 10;
    cooktimer_device[1] = 1;

    // cooktimer_device[2] = cooktimer_device[2] | 0b11;  
    // cooktimer_device[2] = cooktimer_device[2] & 0xffffc; 
    // cooktimer_device[2] = cooktimer_device[2] | 0b1;    


    XGpio button_device;
    XGpio_Initialize(&button_device,button_addr);
    XGpio_SetDataDirection(&button_device, BTN_CHANNEL, 0xf);    //버튼 입력

    u32 btn_value;

    while(1)
    {   
        btn_value = XGpio_DiscreteRead(&button_device, BTN_CHANNEL);  

        if(btn_value == 0b0001){
            cooktimer_device[2] = cooktimer_device[2] | 0b11;  
            cooktimer_device[2] = cooktimer_device[2] & 0xffffc; 
            cooktimer_device[2] = cooktimer_device[2] | 0b1;   
        }        
        
        if(btn_value == 0b0010){
            cooktimer_device[2] = cooktimer_device[2] | 0b10;            
        }
        
                         
        xil_printf("%d: %d\n",cooktimer_device[4],cooktimer_device[3]);
        sleep(1);
    }

    cleanup_platform();
    return    0;
    
}























// #include <stdio.h>
// #include "platform.h"
// #include "xil_printf.h"
// #include "xparameters.h"
// #include "sleep.h"
// #include "xgpio.h"

// #define cooktimer_ip_addr XPAR_MYIP_COOKTIMER_0_BASEADDR
// #define button_ip_addr XPAR_AXI_GPIO_0_BASEADDR

// // AXI Lite 슬레이브 레지스터 오프셋 (32비트 = 4바이트 단위)
// #define COOKTIMER_SET_SEC_OFFSET   0  // slv_reg0: sec 
// #define COOKTIMER_SET_MIN_OFFSET   1  // slv_reg1: min 
// #define COOKTIMER_CNTR_OFFSET   2  // slv_reg2: (Bit 0: dcnt_start, Bit 1: alarmoff)
// #define COOKTIMER_SEC_OFFSET    3  // 현재 sec값
// #define COOKTIMER_MIN_OFFSET    4   //현재 min값

// #define COOKTIMER_START_MASK 0b01
// #define COOKTIMER_ALARMOFF_MASK 0b10

// #define BUTTON_CHANNEL 1

// // volatile 키워드 필수! (컴파일러 최적화 방지)
// volatile unsigned int *cooktimer_addr = (unsigned int *)cooktimer_ip_addr;


// int main()
// {
//     init_platform();
    
//     XGpio button_device;
//     XGpio_Initialize(&button_device,button_ip_addr);
//     XGpio_SetDataDirection(&button_device, BUTTON_CHANNEL, 0xffff);    //버튼 입력
   
//    //변수 설정
//     u32 set_sec=0 ,set_min=0;
//     u8 dcnt_start, alarmoff;  
//     u32 data=0;
//     u32 sec, min =0;

//     cooktimer_addr[COOKTIMER_CNTR_OFFSET] =0;

//     //시간,초 변경
//     set_min=0;
//     set_sec=5;   

//     // // [필수] 하드웨어 레지스터에 설정값 전송
//     // cooktimer_addr[COOKTIMER_SET_SEC_OFFSET] = set_sec;
//     // cooktimer_addr[COOKTIMER_SET_MIN_OFFSET] = set_min;    
    
//     // // 2. 잠시 대기 (하드웨어가 값을 인식할 시간)
//     // usleep(100);

//     // // 3. 확실한 상승 엣지(0 -> 1) 만들기
//     // cooktimer_addr[COOKTIMER_CNTR_OFFSET] &= ~0b01; // 일단 START 비트를 0으로
//     // usleep(100);                                   // 아주 잠깐 대기
//     // cooktimer_addr[COOKTIMER_CNTR_OFFSET] |= 0b01;  // 이제 1로 만들어서 Pedge 발생!
            
//     // [수정된 초기화 시퀀스]
//     // 1. 값 설정 (아직 Start 안 함)
//     cooktimer_addr[COOKTIMER_SET_SEC_OFFSET] = set_sec;
//     cooktimer_addr[COOKTIMER_SET_MIN_OFFSET] = set_min;

//     // 2. [중요] 마스킹 & 정지 (Start=0, AlarmOff=1)
//     // 알람 끄기 신호(Bit 1)를 1로 줘서, 0초라도 알람이 안 울리게 막습니다.
//     cooktimer_addr[COOKTIMER_CNTR_OFFSET] = COOKTIMER_ALARMOFF_MASK;
//     usleep(1000); 

//     // 3. [중요] 마스크 쓴 채로 로딩 (Start=1, AlarmOff=1)
//     // Start 신호(Bit 0)를 주지만, AlarmOff(Bit 1)도 유지합니다. (OR 연산)
//     // 이러면 5초가 로딩되는 동안 알람이 켜지지 않습니다.
//     cooktimer_addr[COOKTIMER_CNTR_OFFSET] = COOKTIMER_START_MASK | COOKTIMER_ALARMOFF_MASK;
//     usleep(5000); // 데이터가 확실히 로딩될 시간 대기

//     // 4. 진짜 출발 (Start=1, AlarmOff=0)
//     // 이제 내부 시간이 5초가 되었으므로, AlarmOff를 꺼도 안전합니다.
//     cooktimer_addr[COOKTIMER_CNTR_OFFSET] = COOKTIMER_START_MASK;


//     printf("alarm start command sent! %d %d\r\n", set_min, set_sec);

//     while(1){
       
//         data = XGpio_DiscreteRead(&button_device, BUTTON_CHANNEL);      
//         alarmoff = data & COOKTIMER_ALARMOFF_MASK;

//         // Bit 1(alarmoff) 자리만 0으로 지우고, 현재 버튼 상태(0 또는 2)를 넣음
//         cooktimer_addr[COOKTIMER_CNTR_OFFSET] = (cooktimer_addr[COOKTIMER_CNTR_OFFSET] & ~0x02) | alarmoff; 
            

//         sec = cooktimer_addr[COOKTIMER_SEC_OFFSET];
//         min = cooktimer_addr[COOKTIMER_MIN_OFFSET];        
        
//         printf("min: %d  sec: %d\r\n",min,sec );

//         usleep(50000);
//     }

    
//     print("Successfully ran Hello World application");
//     cleanup_platform();
//     return 0;
// }
















// #include <stdio.h>
// #include "platform.h"
// #include "xil_printf.h"
// #include "xparameters.h"
// #include "sleep.h"
// #include "xgpio.h"

// #define GPIO_ADDR XPAR_XGPIO_0_BASEADDR
// #define COOKTIMER_ADDR XPAR_MYIP_COOKTIMER_0_BASEADDR
// #define SW_CHANNEL 1

// // AXI Lite 슬레이브 레지스터 오프셋
// #define REG_SEC_OFFSET   0  
// #define REG_MIN_OFFSET   1  
// #define REG_CTRL_OFFSET  2  
// #define REG_SEC 3

// // 제어 비트 마스크
// #define CTRL_START_MASK         0x01 // Bit 0
// #define CTRL_ALARM_OFF_MASK     0x02 // Bit 1

// volatile unsigned int *timer_ip = (unsigned int *)COOKTIMER_ADDR;

// // Verilog 코드는 "알람 끄기 버튼(alarm_off)을 누르면 타이머 동작 신호(dcnt_set)도 꺼진다"
// // 그냥 Start만 주면: 값이 로딩되기 전 찰나의 순간(0초) 때문에 LED가 켜짐
// // Start + AlarmOff를 같이 주면: Verilog 로직 때문에 타이머 엔진이 꺼짐
// // Start가 0에서 1로 올라가는 **상승 엣지(Rising Edge)**가 필요

// void Timer_Reset_And_Start() {
//     // -------------------------------------------------------
//     // 1단계: 마스킹 & 정지
//     // -------------------------------------------------------
//     // Start=0, Off=1 (LED 억제)
//     timer_ip[REG_CTRL_OFFSET] = CTRL_ALARM_OFF_MASK; 
    
//     timer_ip[REG_SEC_OFFSET] = 0x05;
//     timer_ip[REG_MIN_OFFSET] = 0x00; 
//     usleep(1000);

//     // -------------------------------------------------------
//     // 2단계: 가짜 시동 (값 로딩용)
//     // -------------------------------------------------------
//     // Start=1, Off=1
//     // 효과: Rising Edge 발생 -> 하드웨어가 5초를 로딩함.
//     // 부작용: Verilog 로직에 의해 엔진(dcnt_set)은 바로 꺼짐. (괜찮음!)
//     timer_ip[REG_CTRL_OFFSET] = CTRL_START_MASK | CTRL_ALARM_OFF_MASK;
//     usleep(1000); 

//     // -------------------------------------------------------
//     // 3단계: 스위치 내리기 (다음 엣지를 위해)
//     // -------------------------------------------------------
//     // Start=0, Off=1 (여전히 LED는 억제)
//     // 현재 내부 시간(sec)은 5초로 안전하게 저장되어 있음.
//     timer_ip[REG_CTRL_OFFSET] = CTRL_ALARM_OFF_MASK;
//     usleep(1000);

//     // -------------------------------------------------------
//     // 4단계: 진짜 출발!
//     // -------------------------------------------------------
//     // Start=1, Off=0
//     // 효과: 새로운 Rising Edge 발생 -> 엔진(dcnt_set) 켜짐.
//     // 안전: 이미 시간이 5초이므로 알람이 울리지 않음.
//     timer_ip[REG_CTRL_OFFSET] = CTRL_START_MASK; 
// }

// void Stop_Alarm() {
//     // 1. Alarm Off 신호 켜기 (Start 비트는 유지 | 연산 사용)
//     timer_ip[REG_CTRL_OFFSET] |= CTRL_ALARM_OFF_MASK; 
    
//     // 2. 신호가 확실히 들어가도록 대기
//     usleep(1000);
    
//     // 3. Alarm Off 신호만 끄기 (Start 비트는 유지하면서 AlarmOff 비트만 0으로 만듦)
//     // ~CTRL_ALARM_OFF_MASK는 1111...1101 이므로 AND 연산 시 Bit 1만 0이 됨
//     timer_ip[REG_CTRL_OFFSET] &= ~CTRL_ALARM_OFF_MASK;
// }

// int main()
// {
//     init_platform();
//     XGpio gpio_device;
    
//     XGpio_Initialize(&gpio_device, GPIO_ADDR);
//     XGpio_SetDataDirection(&gpio_device, SW_CHANNEL, 0xffff);

//     print("Hello World\n\r");
//     print("Ramyun Timer Ready.\n\r");
    
//     Stop_Alarm();
//     Timer_Reset_And_Start(); 
    
//     u32 current_btn = 0;
//     u32 prev_btn = 0; // 이전 버튼 상태를 기억할 변수
    
//     while(1){
//         current_btn = XGpio_DiscreteRead(&gpio_device, SW_CHANNEL);
        
//         // [Rising Edge Detection]
//         // "지금은 눌렸는데(current!=0), 아까는 안 눌렸었다면(prev==0)" -> 바로 그 순간!
//         if (current_btn != 0 && prev_btn == 0) {
            
//             print("Button Pushed! (Rising Edge) -> Action!\r\n");
            
//             Stop_Alarm();
//             Timer_Reset_And_Start();
//         } 
        
             
        
//         // 현재 상태를 '과거'로 저장해둠
//         prev_btn = current_btn;

//         // 버튼 채터링(떨림) 방지 및 CPU 부하 조절
//         usleep(10000); // 10ms
//     }

//     cleanup_platform();
//     return 0;
// }

