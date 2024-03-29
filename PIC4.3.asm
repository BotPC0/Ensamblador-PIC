__CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC

LIST P=16F84A
INLUDE <P16F84A.INC>

ORG 0

NUMERO EQU d'12'

INICIO

bsf STATUS,RP0
clrf TRISB
movlw b'00011111'
movwf TRISA
bcf STATUS,RP0

PRINCIPAL

movf PORTA,W
sublw NUMERO ; l - W -> W
btfss STATUS,C
goto EsNegativo

EsPositivo
movlw b'01010101' ;SE ENCIENDEN LOS PARES
movwf PORTB
goto PRINCIPAL

EsNegativo
movlw b'11111111' ;SE ENCIENDEN TODOS
movwf PORTB
goto PRINCIPAL

