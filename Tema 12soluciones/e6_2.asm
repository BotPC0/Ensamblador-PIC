;************************************ 6.2.asm ************************************
;
; Los diodos pares conectados al puerto de salida se encienden durante 0,5 segundos y los
; impares permanecen apagados. Después al contrario durante el mismo tiempo.
;
; ZONA DE DATOS **********************************************************************

	LIST		P=16F84A
	INCLUDE		<P16F84A.INC>
	__CONFIG	_CP_OFF &  _WDT_OFF & _PWRTE_ON & _XT_OSC

	CBLOCK  0x0C
	ENDC

; ZONA DE CÓDIGOS ********************************************************************

	ORG	0
Inicio
	bsf		STATUS,RP0
	clrf	PORTB
	bcf		STATUS,RP0
	movlw	b'01010101'				; Carga el dato inicial en la salida.
	movwf	PORTB
Principal
 	call	Retardo_500ms
	comf	PORTB,F					; Invierte los diodos LED conectados a la salida.
	goto 	Principal

	INCLUDE  <RETARDOS.INC>			; Subrutinas de retardo.
	END
	