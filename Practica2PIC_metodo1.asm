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
andlw b'00001111'
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
goto S8
goto S9
goto S10
goto S11
goto S12
goto S13
goto S14
goto S15

S0
movlw b'00100000'
goto SALIDA
S1
movlw b'00000000'
goto SALIDA
S2
movlw b'00100000'
goto SALIDA
S3
movlw b'00100000'
goto SALIDA
S4
movlw b'00000000'
goto SALIDA
S5
movlw b'00000000'
goto SALIDA
S6
movlw b'00100000'
goto SALIDA
S7
movlw b'00000000'
goto SALIDA
S8
movlw b'00100000'
goto SALIDA
S9
movlw b'00100000'
goto SALIDA
S10
movlw b'00000000'
goto SALIDA
S11
movlw b'00000000'
goto SALIDA
S12
movlw b'00100000'
goto SALIDA
S13
movlw b'00000000'
goto SALIDA
S14
movlw b'00100000'
goto SALIDA
S15
movlw b'00000000'
goto SALIDA

SALIDA

movwf PORTB
goto PRINCIPAL

END
