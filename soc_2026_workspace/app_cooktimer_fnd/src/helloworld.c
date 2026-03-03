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


#include <stdint.h>
#include <stdio.h>
#include <xil_exception.h>
#include <xintc_l.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"
#include "xgpio.h"
#include "xintc.h"  //인터럽트 컨트롤러 해더파일
#include "xuartlite.h" // 유아트 핸들러


#define cooktimer_addr XPAR_MYIP_COOKTIMER_0_BASEADDR
#define btn_addr XPAR_XGPIO_0_BASEADDR
#define fnd_addr XPAR_MYIP_FND_CNTR_0_BASEADDR
#define intc_addr XPAR_MICROBLAZE_RISCV_0_AXI_INTC_BASEADDR
#define uart_addr XPAR_XUARTLITE_0_BASEADDR

#define BTN_VEC_ID XPAR_FABRIC_XGPIO_0_INTR
#define UART_VEC_ID XPAR_FABRIC_AXI_UARTLITE_0_INTR

#define btn_channel 1

XUartLite uart_device;
XIntc intc; //인터럽트 객체 만들기

unsigned int *cooktimer_device = (unsigned int*) cooktimer_addr;
unsigned int *fnd_device = (unsigned int*)fnd_addr;   

void btn_handler(void *CallBackRef); //프로토 타입 선언
void RecvHandler(void *CallBackRef, unsigned int EventData);
void SendHandler(void *CallBackRef, unsigned int EventData);

char btn_flag;

int main(){
    XGpio btn_device;

    init_platform();

   
    XUartLite_Initialize(&uart_device, uart_addr);// 유아트 초기화
    XGpio_Initialize(&btn_device, btn_addr);
    XGpio_SetDataDirection(&btn_device, btn_channel, 0xf);

    cooktimer_device[0] =10;
    cooktimer_device[1] =0;


    XIntc_Initialize(&intc, intc_addr); //인터럽트 초기화
    

    XIntc_Connect(&intc, BTN_VEC_ID, btn_handler,
             (void *)&btn_device);   //함수 이름만 넣으면 주소 () 넣으면 함수 호출하는것
                                         
    XIntc_Connect(&intc, UART_VEC_ID,
                 (XInterruptHandler) XUartLite_InterruptHandler,
                  (void *)&uart_device);                                    
                                    //구조체를 void타입캐스팅을 해야한다.
    XIntc_Enable(&intc, BTN_VEC_ID); //인터럽트 인에이블 
    XIntc_Enable(&intc, UART_VEC_ID); 
    XIntc_Start(&intc, XIN_REAL_MODE); //개별 인터럽트 인에이블

    XGpio_InterruptEnable(&btn_device, btn_channel); //
    XGpio_InterruptGlobalEnable(&btn_device);
    
    XUartLite_SetRecvHandler(&uart_device, RecvHandler, (void *)&uart_device);
    XUartLite_SetSendHandler(&uart_device, SendHandler, (void *)&uart_device);
    XUartLite_EnableInterrupt(&uart_device);
    
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, 
            (Xil_ExceptionHandler)XIntc_InterruptHandler, (void *)&intc);
    Xil_ExceptionEnable();  
        
                
    while(1)
    {   
        if(btn_flag){
            btn_flag=0;            
            usleep(1); //인터럽트 서비스 루틴에 딜레이 쓰면 안된다. 
            
            unsigned int btn_value;
            btn_value = XGpio_DiscreteRead(&btn_device, btn_channel);

            if(btn_value ==1){  //down count start
                cooktimer_device[2] = cooktimer_device[2] &0b10;
                cooktimer_device[2] = cooktimer_device[2] |0b01;
            }    

            if(btn_value ==2){  //alarm off
                cooktimer_device[2] = cooktimer_device[2] | 0b10;
                cooktimer_device[2] = cooktimer_device[2] & 0b01;
            }    
           
        }
       fnd_device[0] = cooktimer_device[4]*100 +cooktimer_device[3];
    }

    cleanup_platform();
    return    0;
    
}

void btn_handler(void *CallBackRef){

    XGpio *gpio_ptr = (XGpio *)CallBackRef;
    btn_flag=1;
    print("button interrupt\n");       
    XGpio_InterruptClear(gpio_ptr,btn_channel);    
    return;    
}

void RecvHandler(void *CallBackRef, unsigned int EventData){
    u8 rxData;
    XUartLite_Recv(&uart_device, &rxData, 1);
    xil_printf("recv %c\n",rxData);
    return;
    //유아트는 인터럽트 클리어를 안한다. 
}

void SendHandler(void *CallBackRef, unsigned int EventData){
    return;
}