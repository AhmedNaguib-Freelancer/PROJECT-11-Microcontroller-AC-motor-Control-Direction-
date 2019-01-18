#line 1 "C:/Users/only try/Desktop/PROJECT 11 Microcontroller (AC motor Control Direction)/program/ACMOTORDIRECTION.c"
void main() {
TRISB=0;
TRISD=1;
PORTB=0B00000000;
PORTD.F0=0;
PORTD.F1=0;
while(1)
{
 if(PORTD.F0==1)
 PORTB=0B00000001;
 else if(PORTD.F1==1)
 PORTB=0B00000010;
 else
 PORTB=0B00000000;
}
}
