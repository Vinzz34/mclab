#include <stdio.h>
#include "NUC1xx.h"
#include "Driver\DrvGPIO.h"
#include "Driver\DrvUART.h"
#include "Driver\DrvSYS.h"


void EINT1Callback(void) 
{
  DrvGPIO_ClrBit(E_GPC,14); 
	DrvSYS_Delay(100000);	    
	DrvGPIO_SetBit(E_GPC,14); 
	DrvSYS_Delay(100000);	    	
}

int main (void)
{
	UNLOCKREG();
	DrvSYS_SetOscCtrl(E_SYS_XTL12M, 1);
	DrvSYS_Delay(5000);                
	DrvSYS_SelectHCLKSource(0);         
	LOCKREG();

	DrvGPIO_Open(E_GPC, 14, E_IO_OUTPUT);
   
	//Interrupt (Don't change code here)
  DrvGPIO_Open(E_GPC, 14, E_IO_INPUT);       
  DrvGPIO_EnableEINT1(E_IO_BOTH_EDGE, E_MODE_EDGE, EINT1Callback);

  while(1)
	{
  }
}
