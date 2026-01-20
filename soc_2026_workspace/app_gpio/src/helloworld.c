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

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xparameters.h"
#include "xgpio.h"

#define gpio_baseaddr XPAR_AXI_GPIO_0_BASEADDR
#define LED_CHANNEL 1
#define SW_CHANNEL 2 

int main()
{
    init_platform();

    print("Hello World\n");
    print("Successfully ran Hello World application");

    XGpio gpio_device;
    XGpio_Initialize(&gpio_device,gpio_baseaddr);
    XGpio_SetDataDirection(&gpio_device, SW_CHANNEL, 0xffff);    //스위치 입력
    XGpio_SetDataDirection(&gpio_device, LED_CHANNEL,0); //led 출력
    
    u32 data=0;
    while(1){
        data= XGpio_DiscreteRead(&gpio_device, SW_CHANNEL);
        XGpio_DiscreteWrite(&gpio_device, LED_CHANNEL, data);

        print("Hello World!!\n");
        sleep(1);                        
    }
    cleanup_platform();
    return 0;
}
