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

rlf PORTA,W
;andlw b'00011111' se puede poner pero sobra.
addwf PCL,F

TABLA

movlw b'00100000'
goto SALIDA

movlw b'00000000'
goto SALIDA

movlw b'00100000'
goto SALIDA

movlw b'00100000'
goto SALIDA

movlw b'00000000'
goto SALIDA

movlw b'00000000'
goto SALIDA

movlw b'00100000'
goto SALIDA

movlw b'00000000'
goto SALIDA

movlw b'00100000'
goto SALIDA

movlw b'00100000'
goto SALIDA

movlw b'00000000'
goto SALIDA

movlw b'00000000'
goto SALIDA

movlw b'00100000'
goto SALIDA

movlw b'00000000'
goto SALIDA

movlw b'00100000'
goto SALIDA

movlw b'00000000'
goto SALIDA

SALIDA

movwf PORTB
goto PRINCIPAL

END
