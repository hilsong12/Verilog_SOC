#include <stdio.h>
#include <stdlib.h> // sscanf 등 무거운거 안 씀
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"

// ==========================================================
// [설정] 주소 정의
// ==========================================================
#define MY_CAN_BASE XPAR_MYIP_CAN_CONTROLLER_0_BASEADDR 

// 레지스터 오프셋
#define REG_CTRL    (MY_CAN_BASE + 0x00)
#define REG_TX_CFG  (MY_CAN_BASE + 0x08)
#define REG_TX_DATL (MY_CAN_BASE + 0x0C)
#define REG_TX_DATH (MY_CAN_BASE + 0x10)

// 모드 이름 (디버그용)
const char* MODE_NAMES[] = {"NORMAL", "SCENARIO", "MANUAL", "REMOTE"};

// ==========================================================
// [함수 1] CAN 패킷 전송 (지석님 RX 코드 맞춤: Mode << 16)
// ==========================================================
void send_can_packet(int id, int enable, int angle, int mode) {
    u32 tx_packet = 0;

    // 범위 제한 (Safety)
    if(angle > 180) angle = 180;
    if(mode > 3) mode = 3;

    // ------------------------------------------------------
    // [데이터 패킹]
    // ------------------------------------------------------
    tx_packet |= (id & 0x3F);
    if(enable) tx_packet |= (1 << 6);
    tx_packet |= ((angle & 0xFF) << 8);
    tx_packet |= ((mode & 0x03) << 16); // RX코드 (>>16) 대응

    // 디버그 출력
    xil_printf("\r\n>>> [TX] ID:%d, En:%d, Ang:%d, Mode:%d\r\n", id, enable, angle, mode);

    // 하드웨어 레지스터 쓰기
    Xil_Out32(REG_TX_CFG, (0x123 << 4) | 0x8);
    Xil_Out32(REG_TX_DATL, tx_packet);
    Xil_Out32(REG_TX_DATH, 0x00);

    // 전송 트리거
    Xil_Out32(REG_CTRL, 0x01);
    usleep(10);
    Xil_Out32(REG_CTRL, 0x00);
}

// ==========================================================
// [함수 2] ★ 초경량 파싱 함수 (sscanf 대체) ★
// ==========================================================
// 입력 예: "5,1,90,3" -> id=5, en=1, ang=90, mod=3
void parse_and_send_manual(char* buffer) {
    int values[4] = {0, 0, 0, 0}; // [0]:ID, [1]:En, [2]:Ang, [3]:Mod
    int idx = 0; // 현재 몇 번째 숫자를 분석 중인지
    int i = 0;
    
    // 문자열 끝까지 반복
    while(buffer[i] != '\0' && idx < 4) {
        char c = buffer[i];

        if (c >= '0' && c <= '9') {
            // 숫자면 자릿수 올리면서 더하기 (atoi 원리)
            values[idx] = values[idx] * 10 + (c - '0');
        } 
        else if (c == ',') {
            // 콤마를 만나면 다음 숫자로 넘어감
            idx++;
        }
        // 공백이나 다른 문자는 무시
        i++;
    }

    // 데이터가 4개(0~3) 다 찼거나, 적어도 입력이 있었다면 전송
    // (idx가 3까지 왔으면 4개의 데이터를 모두 읽고 있는 중이거나 완료된 것)
    send_can_packet(values[0], values[1], values[2], values[3]);
}

// ==========================================================
// [메인 함수]
// ==========================================================
int main() {
    init_platform();

    char buffer[64]; // 입력 버퍼
    int buf_idx = 0;

    xil_printf("\r\n==============================================\r\n");
    xil_printf("   UART to CAN (Lightweight Version)\r\n");
    xil_printf("   Format: 5,1,90,3  (Comma Separated)\r\n");
    xil_printf("==============================================\r\n");
    xil_printf("Input> ");

    while(1) {
        // 1. 문자 하나 받기
        char c = inbyte(); 

        // 2. 에코 (화면에 보여줌)
        if(c != '\r' && c != '\n') {
            xil_printf("%c", c);
        }

        // 3. 엔터키 입력 시 처리
        if (c == '\r' || c == '\n') {
            buffer[buf_idx] = '\0'; // 문자열 끝 맺음

            xil_printf("\r\n"); // 줄바꿈

            // ★ sscanf 대신 직접 만든 가벼운 함수 호출
            if (buf_idx > 0) {
                parse_and_send_manual(buffer);
            }

            // 버퍼 초기화
            buf_idx = 0;
            // buffer 배열을 0으로 밀어버릴 필요는 없음 (idx만 0이면 됨)
            
            xil_printf("Input> ");
        } 
        else {
            // 엔터가 아니면 버퍼에 담기 (버퍼 오버플로우 방지)
            if (buf_idx < 63) {
                buffer[buf_idx++] = c;
            }
        }
    }

    cleanup_platform();
    return 0;
}