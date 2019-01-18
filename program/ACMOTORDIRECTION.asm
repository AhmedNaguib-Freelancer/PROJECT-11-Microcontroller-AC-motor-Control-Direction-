
_main:

;ACMOTORDIRECTION.c,1 :: 		void main() {
;ACMOTORDIRECTION.c,2 :: 		TRISB=0;
	CLRF       TRISB+0
;ACMOTORDIRECTION.c,3 :: 		TRISD=1;
	MOVLW      1
	MOVWF      TRISD+0
;ACMOTORDIRECTION.c,4 :: 		PORTB=0B00000000;
	CLRF       PORTB+0
;ACMOTORDIRECTION.c,5 :: 		PORTD.F0=0;
	BCF        PORTD+0, 0
;ACMOTORDIRECTION.c,6 :: 		PORTD.F1=0;
	BCF        PORTD+0, 1
;ACMOTORDIRECTION.c,7 :: 		while(1)
L_main0:
;ACMOTORDIRECTION.c,9 :: 		if(PORTD.F0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;ACMOTORDIRECTION.c,10 :: 		PORTB=0B00000001;
	MOVLW      1
	MOVWF      PORTB+0
	GOTO       L_main3
L_main2:
;ACMOTORDIRECTION.c,11 :: 		else if(PORTD.F1==1)
	BTFSS      PORTD+0, 1
	GOTO       L_main4
;ACMOTORDIRECTION.c,12 :: 		PORTB=0B00000010;
	MOVLW      2
	MOVWF      PORTB+0
	GOTO       L_main5
L_main4:
;ACMOTORDIRECTION.c,14 :: 		PORTB=0B00000000;
	CLRF       PORTB+0
L_main5:
L_main3:
;ACMOTORDIRECTION.c,15 :: 		}
	GOTO       L_main0
;ACMOTORDIRECTION.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
