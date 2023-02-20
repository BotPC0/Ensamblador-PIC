;ZONA DE DATOS***************

__CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC

LIST P=16F84A
INCLUDE <P16F84A.INC>


;ZONA DE CODIGO*************

ORG 0

INICIO
bsf STATUS,RP0
clrf TRISB
;movlw b´00011111´ o bien vale decir b'11111111' el bit 5, 6 y 7 no tienen utilidad
;movwf TRISA
bcf STATUS,RP0

PRINCIPAL
movf PORTA,W ;PORTA -> W
andlw b'00000111'
call TABLA
movwf PORTB
goto PRINCIPAL

Tabla
addwf PCL,F
retlw b'00000000'
retlw b'00000001'
retlw b'00000011'
retlw b'00000111'
retlw b'00001111'
retlw b'00011111'
retlw b'00111111'
retlw b'01111111'


END
