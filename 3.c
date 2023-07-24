#include<stdio.h>
#include “NUICxx.h”
#include “Driver/DrvSYS.h”  
#include “Driver/DrvGPIO.h”
#include “Driver/DrvUART.h”

void int()
{
	DrvGPIO_Open(E_GPC,14,E_IO_OUTPUT);
	DrvGPIO_SetBit(E_GPC,14);
}
int main(void)
{
	UNLOCKREG();        
	DrvSYS_Open(48000000);
	LOCKREG();
init()
while (1)
{	
	DrvGPIO_ClrBit(E_GPC,15);
        DrvGPIO_Delay(300000)
        DrvGPIO_SetBit(E_GPC,15);
        DrvGPIO_Delay(300000);
}
}
