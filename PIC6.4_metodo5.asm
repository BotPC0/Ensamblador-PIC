__CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC

LIST P=16F84A
INCLUDE <P16F84A.INC>

INICIO

CBLOCK 0x0C
LongitudTabla
PosicionTabla
ENDC

ORG 0

bsf STATUS,RP0
clrf TRISB
movlw b'00011111'
movwf TRISA
bcf STATUS,RP0

PROGRAMA

movlw b'00000000'
movwf PosicionTabla
movlw d'6'
movwf LongitudTabla

INICIO
movf PosicionTabla,W
call Tabla
movwf PORTB
call Retardo_200ms
incfsz PosicionTabla,F
decfsz LongitudTabla,F
goto INICIO
goto PROGRAMA



Tabla
addwf PCL,F
	retlw	b'00000000'
	retlw	b'00000001'
	retlw	b'00000010'
	retlw	b'00000100'
	retlw	b'00001000'
	retlw	b'00010000'
	retlw	b'00100000'


INCLUDE<RETARDOS.INC>

END
