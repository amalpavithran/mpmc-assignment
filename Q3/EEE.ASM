ORG 0
STRT : MOV TMOD,#15H
       SETB P3.4
	   MOV TL0,#00H
	   MOV TH0,#00H
	   TIM1: MOV R3,#16
	   BACK : MOV TL1,#0
	          MOV TH1,#0
			  SETB TR1
			  SETB TR0
			  CHECK : JNB TF1,CHECK
			          CLR TF1
					  DJNZ R3,BACK
					  MOV A,TL0
					  MOV P2,A
					  MOV A,TH0
					  MOV P1,A
					  SJMP STRT
   END