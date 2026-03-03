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
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "sleep.h"

// xparameters.h 기반 주소 정의
#define FND_BASEADDR XPAR_AXI_GPIO_FND_BASEADDR
#define SW_BASEADDR  XPAR_AXI_GPIO_SW_BASEADDR

#define FND_AN_CHANNEL 1    // (seven seg led an)
#define FND_DISP_CHANNEL 2  // (seven seg led disp)
#define SW_CHANNEL 1  

int main()
{
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application");

    XGpio fnd_device;
    XGpio sw_device;
    
    // 1. FND 장치 초기화 및 방향 설정
    XGpio_Initialize(&fnd_device, FND_BASEADDR);
    XGpio_SetDataDirection(&fnd_device, FND_AN_CHANNEL, 0x0);   // 출력
    XGpio_SetDataDirection(&fnd_device, FND_DISP_CHANNEL, 0x0); // 출력

    // 2. 스위치 장치 초기화 및 방향 설정
    XGpio_Initialize(&sw_device, SW_BASEADDR);
    XGpio_SetDataDirection(&sw_device, SW_CHANNEL, 0xFFFF);    // 16비트 입력
    
    int16_t sw;
    int16_t fnd;
    
    // Basys3용 0~F 패턴 (Common Anode 기준, 0일 때 점등)
    // 만약 숫자가 반대로 나온다면 이 값들에 ~를 붙이세요.
    uint8_t fnd_font[] = {
        0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8,
        0x80, 0x90, 0x88, 0x83, 0xC6, 0xA1, 0x86, 0x8E
    };

    // 자릿수 선택 (Anode) 신호 (0일 때 해당 자릿수 선택)
    uint8_t fnd_sel[] = {0xE, 0xD, 0xB, 0x7};

    while(1){
            // 스위치 16개 한꺼번에 읽기
            sw = XGpio_DiscreteRead(&sw_device, SW_CHANNEL);

            for(int i = 0; i < 4; i++) {
                // 4비트씩 끊어서 숫자 값 추출 (0~F)
                uint8_t digit_val = (sw >> (i * 4)) & 0x0F;
                
                // fnd 변수에 패턴 저장 (질문하신 형식 유지)
                fnd = fnd_font[digit_val];

                // 1. 모양 출력 (채널 2)
                XGpio_DiscreteWrite(&fnd_device, FND_DISP_CHANNEL, fnd);
                // 2. 자릿수 선택 (채널 1)
                XGpio_DiscreteWrite(&fnd_device, FND_AN_CHANNEL, fnd_sel[i]);
                
                usleep(1000); // 1ms 잔상 효과
            }

        





            
        }
    cleanup_platform();
    return 0;
}

//



