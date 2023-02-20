__CONFIG _CP_OFF & _WDT_OFF_ & _PWRTE_ON & _XT_OSC

LIST P=16F84A
INCLUDE <P16F84A.INC>



CBLOCK 0x0C
Dato1
Resultado
ENDC

ORG 0

INICIO

bsf STATUS,RP0
clrf TRISB
movlw b'00011111'
movwf TRISA
bcf STATUS,RP0


PROGRAMA
movlw d'0'
movwf Dato1
movlw d'1'
addwf Dato1,Resultado
movf Resultado,PORTB

Bucle
movf W, Dato1
movf Resultado,W
addwf Dato1,Resultado
movf Resultado,PORTB
sublw d'144'
btfss STATUS,Z
goto Bucle
goto PROGRAMA
END
