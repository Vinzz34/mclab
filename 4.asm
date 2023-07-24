;create seperate files and add all to the source group
i)main.asm
PRESERVE8
		THUMB
		AREA |.text|,CODE, READONLY
	 EXPORT __main
	EXTERN func
__main
	LDR R0,=0x10 ;VALUE OF X
	BL func
Stop b stop
  END
	
2)func.asm
PRESERVE8
		THUMB
		AREA |.text|,CODE, READONLY
	 EXPORT func
	EXTERN func1
func
	;calculating value of y
PUSH{LR}
;load value of x to r1
MOVS R1,R0
;MULTIPLY 2 to  r1
MULS R1,R1,#2
; ADD 9 to the x value
ADDS R1,R1,#9
BL func1
POP{PC}
END

3)func1.asm

PRESERVE8
		THUMB
		AREA |.text|,CODE, READONLY
	 EXPORT func1

func1
	ADDS R2,R1
	BX LR
END
