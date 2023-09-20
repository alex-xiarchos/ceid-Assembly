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

MOV R10, #0				@Carry �������

loop:
LDR R4,[R0],#4			@����������� �
LDR R5,[R1],#4			@����������� �

ADDS R3,R4,R5			@���������� ������

ADD R3, R3, R10

MOVCS R10, #1
MOVCC R10, #0

STR R3,[R2],#4

CMP R0, R6				@�������� ��� ���������� ������ R0 ��� ��� ������ ��� ��� R6
BLT loop
			 
LDMIA R13!,{R0-R12,R14}


.data

ArrayA:
.word 0x39FE7F20
.word 0x0B306F16
.word 0xFFFFFFFF
.word 0xA8861742

ArrayB:
.word 0x59120113
.word 0x2039705A
.word 0x53436217
.word 0x43C88C92
		
ArrayC:
.word 0x00,0x00,0x00,0x00