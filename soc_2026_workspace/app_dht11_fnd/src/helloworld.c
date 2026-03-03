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
#include "xparameters.h"
#include "sleep.h"

#define dht11_cntr_addr XPAR_MYIP_DHT11_0_BASEADDR
#define fnd_cntr_addr XPAR_MYIP_FND_CNTR_0_BASEADDR

int main()
{
    init_platform();

    volatile unsigned int *dht11_cntr = (volatile unsigned int *)dht11_cntr_addr;
    volatile unsigned int *fnd_cntr = (volatile unsigned int *)fnd_cntr_addr;
   
    print("hello");
    // fnd_cntr[0]= dht11_cntr[0]&0xC || dht11_cntr[1]&0x3;
    fnd_cntr[0]= 678;
    fnd_cntr[1]= 0;    

    u32 humidity, temperature;
    while(1){

        humidity= dht11_cntr[0];
        temperature= dht11_cntr[1];
        fnd_cntr[0] = humidity *100 +temperature;
        sleep(3);

    }

    print("Hello World\n\r");
    print("Successfully ran Hello World application");
    cleanup_platform();
    return 0;
}
