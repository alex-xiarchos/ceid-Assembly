.arm
.text
.global main

main:

STMDB R13!,{R0-R12,R14}

LDR R0,=ArrayA			@������� �
LDR R1,=ArrayB			@������� �

LDR R2,=ArrayC		    @������� C

LDR R6,=ArrayA			
ADD R6,R6,#16			@� ������� � ������ ����� ���

loop:
LDR R4,[R0],#4			@����������� �
LDR R5,[R1],#4			@����������� �


ADD R3,R4,R5			@���������� ������
STR R3,[R2],#4

CMP R0, R6				@�������� ��� ���������� ������ R0 ��� ��� ������ ��� ��� R6
BLT loop
			 
LDMIA R13!,{R0-R12,R14}


.data

ArrayA:
.byte 0x20,0x7F,0xFE,0x39
.byte 0x16,0x6F,0x30,0x0B
.byte 0x57,0x2D,0x72,0x2D
.byte 0x42,0x17,0x86,0xA8

ArrayB:
.byte 0x13,0x01,0x12,0x59
.byte 0x5A,0x70,0x39,0x20
.byte 0x17,0x62,0x43,0x53
.byte 0x92,0x8C,0xC8,0x43
		
ArrayC:
.word 0x00,0x00,0x00,0x00