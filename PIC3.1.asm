;ZONA DE DATOS***************

__CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC

LIST P=16F84A
INCLUDE <P16F84A.INC>

Constante EQU d´74´

;ZONA DE CODIGO*************

ORG 0

INICIO
bsf STATUS,RP0
clrf TRISB
;movlw b´00011111´ o bien vale decir b'11111111' el bit 5, 6 y 7 no tienen utilidad
;movwf TRISA
bcf STATUS,RP0

PRINCIPAL
movf PORTA, 0 ;PORTA -> W
addlw Constante ;Suma constante al registro W -> W
movwf PORTB ;W -> PORTB

goto PRINCIPAL

END
