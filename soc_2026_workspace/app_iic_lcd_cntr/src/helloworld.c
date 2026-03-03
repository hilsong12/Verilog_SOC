
/**
Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
SPDX-License-Identifier: MIT
**/
/*
 
helloworld.c: simple test application*
This application configures UART 16550 to baud rate 9600.
PS7 UART (Zynq) is not initialized by this application, since
bootrom/bsp configures it to baud rate 115200*
------------------------------------------------
| UART TYPE   BAUD RATE                        |
------------------------------------------------
uartns550   9600
uartlite    Configurable only in HW design
ps7_uart    115200 (configured by bootrom/bsp)*/

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"

#define  lcd_addr XPAR_MYIP_IIC_CNTR_0_BASEADDR 
 unsigned int *lcd_cntr = (unsigned int *) lcd_addr; 
void send_data(char data){
    while (!lcd_cntr[2]);
    lcd_cntr[0] = data;
    lcd_cntr[1] = lcd_cntr[1] | 0b10; 
    lcd_cntr[1] = lcd_cntr[1] | 0b1;
    while (!lcd_cntr[2]);
    lcd_cntr[1] = lcd_cntr[1] | 0b10; 
    return;
}

void send_command(char command){
    while (!lcd_cntr[2]);
    lcd_cntr[0] = command;
    lcd_cntr[1] = lcd_cntr[1] | 0b01; 
    lcd_cntr[1] = lcd_cntr[1] | 0b1;
    while (!lcd_cntr[2]);
    lcd_cntr[1] = lcd_cntr[1] | 0b10; 
    return;
}


int main()
{
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application");

    send_data('a'); 
    send_command(0xc0);

    while (1) {

    }

    cleanup_platform();
    return 0;
}




// #include <stdio.h>
// #include "platform.h"
// #include "xil_printf.h"
// #include "xparameters.h"
// #include "sleep.h"

// #define lcd_cntr_addr XPAR_MYIP_IIC_CNTR_0_BASEADDR

// // 제어 비트 정의 (IP 설계에 따라 다를 수 있음)
// #define RS_BIT    0x02  //0-command 1-data
// #define SEND_BIT 0x01   //1-start 0-stop

// volatile unsigned int *lcd_cntr = (volatile unsigned int *)lcd_cntr_addr;

//     // 1바이트 데이터를 전송하는 함수
//     void lcd_send(unsigned char data, int rs) {
//     lcd_cntr[0] = data;           // 데이터 세팅
//     if(rs) 
//         lcd_cntr[1] = RS_BIT | SEND_BIT; // RS=1 (데이터) + 전송 시작
//     else 
//         lcd_cntr[1] = SEND_BIT;          // RS=0 (명령어) + 전송 시작
    
//     usleep(5000); // IP가 처리할 시간을 줌 (I2C 속도에 따라 조절)
//     lcd_cntr[1] = 0; // <--- 중요: 다음 전송을 위해 신호를 0으로 초기화
    
//     }   

// int main()
// {
//     init_platform();    
//     print("Hello World\n\r");
//     print("app_iic_lcd_cntr");
    
//     // 보통 LCD 전원 안정화 및 초기화 시퀀스에 약 100ms~500ms 정도면 충분합니다.
//     usleep(200000);

//     // 2. "Hello" 출력
//     char *msg = "Hello World";
    
//    while(*msg){
//     lcd_send(*msg++, 1); // RS를 1로 하여 문자 데이터 전송
//    }


//     while(1){

//     }
//     cleanup_platform();
//     return 0;
// }
