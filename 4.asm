;main.asm

	PRESERVE8       
        	THUMB           
                 AREA    |.text|, CODE, READONLY
	EXPORT __main 
	EXTERN  func

__main
	LDR R0,=0x10;
 	BL func
stop B stop
  END


;(ii) func.asm

PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY
	EXPORT func
	EXTERN func2
	
func
	push{LR}
	LDR R3,=0x2
	MULS R0, R3, R0
	movs R1, R0
	BL func2
	pop{PC}
    	END


;(iii) func2.asm

      PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY
	EXPORT func2
	
func2
	MOVS R2,#09
	adds R1, R1, R2
	BX LR
	   END
