//Total = 0;
for (i=0; i<5;  i++)
Total =Total + i; total is r0, I is r1//
PRESERVE8
		THUMB
		AREA |.text|,CODE, READONLY
	 EXPORT __main
__main
	LDR R0,=0x20000100
	LDR R1,= 0x20000500
	LDR R3,=0
LOOP
	LDRB R2,[R0]
	ADDS R0,R0,#1
	ADDS R1,R1,R3
	SUBS R1,R1,#1
	BNE LOOP
STOP B STOP 
	END
