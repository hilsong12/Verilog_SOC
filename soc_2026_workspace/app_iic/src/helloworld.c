#include <stdio.h>
#include <xiic_l.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"
#include "xiic.h"

#define iic_addr XPAR_XIIC_0_BASEADDR
#define LCD_DEVICE_ADDR 0x27

// RS 값 정의
#define LCD_COMMAND 0
#define LCD_DATA    1



void I2C_LCD_SendByte(u8 data, u8 rs) {
    u8 high_nibble = data & 0xF0;
    u8 low_nibble = (data << 4) & 0xF0;
    u8 bl = 0x08; 
    u8 en = 0x04; 

    u8 buf[5];
    buf[0] = high_nibble | bl | 0  | rs; 
    buf[1] = high_nibble | bl | en | rs; 
    buf[2] = low_nibble  | bl | 0  | rs; 
    buf[3] = low_nibble  | bl | en | rs; 
    buf[4] = low_nibble  | bl | 0  | rs; 

    XIic_Send(iic_addr, LCD_DEVICE_ADDR, buf, 5, XIIC_STOP);
    usleep(2000); 
}

void I2C_LCD_Init() {
    usleep(50000); 
    I2C_LCD_SendByte(0x33, LCD_COMMAND); 
    I2C_LCD_SendByte(0x32, LCD_COMMAND); 
    I2C_LCD_SendByte(0x28, LCD_COMMAND); 
    I2C_LCD_SendByte(0x0C, LCD_COMMAND); 
    I2C_LCD_SendByte(0x06, LCD_COMMAND); 
    I2C_LCD_SendByte(0x01, LCD_COMMAND); 
    usleep(5000);
}

void LCD_Print(char *str) {
    while (*str) {
        I2C_LCD_SendByte((u8)(*str), LCD_DATA);
        str++;
    }
}

// --- [추가] 커서 위치 이동 함수 ---
void LCD_GotoXY(u8 row, u8 col) {
    u8 address;
    if (row == 0) address = 0x80 + col;      // 1번째 줄 주소: 0x80~
    else          address = 0xC0 + col;      // 2번째 줄 주소: 0xC0~ (0x80 + 0x40)
    
    I2C_LCD_SendByte(address, LCD_COMMAND);   // 위치 설정 명령 전송
}

// --- [추가] 커스텀 캐릭터 생성을 위한 함수 ---
void LCD_CreateChar(u8 location, u8 charmap[]) {
    location &= 0x07; // 0~7번 저장소만 사용 가능
    // CGRAM 주소 설정 명령 (0x40은 CGRAM의 시작 주소)
    I2C_LCD_SendByte(0x40 | (location << 3), LCD_COMMAND);
    
    for (int i = 0; i < 8; i++) {
        I2C_LCD_SendByte(charmap[i], LCD_DATA); // 8행의 픽셀 데이터를 저장
    }
}



int main()
{
    init_platform();

    print("LCD I2C Test Start...\n\r");
    // 1. 초기화 실행
    I2C_LCD_Init();

    // --- [추가] 커스텀 캐릭터 비트맵 데이터 설계 (5x8 픽셀) ---
    u8 heart[8]  = {0x00, 0x0A, 0x1F, 0x1F, 0x0E, 0x04, 0x00, 0x00}; // 하트
    u8 smile[8]  = {0x00, 0x00, 0x0A, 0x00, 0x11, 0x0E, 0x00, 0x00}; // 스마일
    u8 person[8] = {0x0E, 0x0E, 0x04, 0x1F, 0x04, 0x0A, 0x0A, 0x00}; // 사람 모양

    // 0번, 1번, 2번 저장소에 캐릭터 등록
    LCD_CreateChar(0, heart);
    LCD_CreateChar(1, smile);
    LCD_CreateChar(2, person);

 // 출력 시에는 반드시 다시 DDRAM 주소(화면 위치)를 잡아줘야 합니다.
    LCD_GotoXY(0, 0); 
    LCD_Print("HELLO WORLD ");
    I2C_LCD_SendByte(0, LCD_DATA); // 0번에 저장된 하트 출력
    I2C_LCD_SendByte(1, LCD_DATA); // 1번에 저장된 스마일 출력

    LCD_GotoXY(1, 0);
    LCD_Print("HI Jinhyuk ");
    I2C_LCD_SendByte(2, LCD_DATA); // 2번에 저장된 사람 출력

    printf("Done!\n");
 
    while(1){
        // 무한 루프
        // 화면 전체를 왼쪽으로 한 칸 이동시키는 명령어: 0x18
        I2C_LCD_SendByte(0x18, LCD_COMMAND);
        
        // 이동 속도 조절 (500ms 마다 한 칸씩)
        usleep(500000);
    }

    cleanup_platform();
    return 0;
}