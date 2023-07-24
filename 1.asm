PRESERVE8
		THUMB
		AREA |.text|,CODE, READONLY
	 EXPORT __main
__main
          LDRS R1,=0x00000200
         LDRS R2,=0x00000400
         LDMIA R1!, {R3,R4}
        MOV SP,  R2
       PUSH(R3,R4)
       POP(R6,R7)
STOP B STOP
        END
