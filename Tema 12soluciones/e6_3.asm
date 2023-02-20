;************************************ 6.3.asm ************************************
;
; Por la barra de leds conectada al puerto de salida un LED encendido rota a la izquierda
; durante 0,3 segundos en cada posición. Cuando llega al final comienza a rotar a derechas
; durante 0,5 segundos en cada posición. Luego se apagan todos los LEDs y repite de nuevo
; la operación.
;
; ZONA DE DATOS **********************************************************************

	LIST		P=16F84A
	INCLUDE		<P16F84A.INC>
	__CONFIG	_CP_OFF &  _WDT_OFF & _PWRTE_ON & _XT_OSC

	CBLOCK  0x0C
	ENDC

; ZONA DE CÓDIGOS ********************************************************************

	ORG 	0
Inicio
	bsf		STATUS,RP0
	clrf	PORTB
	bcf		STATUS,RP0
Principal
	bsf		STATUS,C				; Carga el dato inicial en el Carry.
	clrf	PORTB					; y en la salida.
RotaIzquierda
 	call	Retardo_200ms
	call	Retardo_100ms
	rlf		PORTB,F					; Rota un lugar a la izq. hasta que da una vuelta
	btfss	STATUS,C				; completa que se detecta cuando el Carry = 1.
	goto 	RotaIzquierda			; Todavía no ha terminado y vuelve a rotar.
RotaDerecha
 	call	Retardo_500ms
	rrf		PORTB,F					; Rota un lugar a la derecha hasta que da una vuelta
	btfss	STATUS,C				; completa que se detecta cuando el Carry = 1.
	goto 	RotaDerecha				; Todavía no ha terminado y vuelve a rotar.
	goto 	Principal				; Repite el ciclo.

	INCLUDE  <RETARDOS.INC>			; Subrutinas de retardo.
	END								; Fin del programa.
	