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

#define fnd_cntr_addr XPAR_MYIP_FND_CNTR_0_BASEADDR


int main()
{
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application");

    unsigned int *fnd_cntr = (unsigned int *)fnd_cntr_addr;
    fnd_cntr[0] = 675;
    fnd_cntr[1] =0;
    unsigned int data=0;
         
    while(1){
        fnd_cntr[0]= data++;
        msleep(100)        
;    }

    cleanup_platform();
    return 0;
}
