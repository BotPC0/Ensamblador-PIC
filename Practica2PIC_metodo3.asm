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
call TABLA
movwf PORTB
goto PRINCIPAL

TABLA
addwf PCL,F

retlw b'00100000'

retlw b'00000000'

retlw b'00100000'

retlw b'00100000'

retlw b'00000000'

retlw b'00000000'

retlw b'00100000'

retlw b'00000000'

retlw b'00100000'

retlw b'00100000'

retlw b'00000000'

retlw b'00000000'

retlw b'00100000'

retlw b'00000000'

retlw b'00100000'

retlw b'00000000'

END
