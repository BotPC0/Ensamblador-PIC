;ZONA DE DATOS*****

__CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC

LIST P=16F84A
INCLUDE <P16F84A.INC>

;ZONA DE CODIGO****

ORG 0

INICIO

bsf STATUS,RP0
clrf TRISB
movlw b'00011111'
movwf TRISA
bcf STATUS,RP0

PRINCIPAL

movf PORTA,W
andlw b'00000111'
addwf PCL,F

TABLA

goto S0
goto S1
goto S2
goto S3
goto S4
goto S5
goto S6
goto S7


S0
movlw b'10000011'
goto SALIDA
S1
movlw b'01000011'
goto SALIDA
S2
movlw b'00000100'
goto SALIDA
S3
movlw b'00100010'
goto SALIDA
S4
movlw b'00000100'
goto SALIDA
S5
movlw b'00000100'
goto SALIDA
S6
movlw b'00100100'
goto SALIDA
S7
movlw b'00001000'
goto SALIDA


SALIDA

movwf PORTB
goto PRINCIPAL

END
