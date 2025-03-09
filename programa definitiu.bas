'servo 0=cintura'
'servo 1=espatlla'
'servo 2=colze'
'servo 3=canell'
'servo 4=rotacio canell'
'servo 5=pinza'


inici:

irin[1000,inici],C.0,b0
if b0=0 then goto posicionament
if b0=1 then goto saludar
if b0=2 then goto ampolla1
if b0=3 then goto ampolla2
goto inici	

posicionament:
servo 1,175 'aixecar espatlla'
pause 1000
servo 0,150 'posicio neutre cintura'
pause 100
servo 2,200 'posicio colze'
pause 1000
servo 3,50  'posicio canell'
pause 1000
servo 4,125 'gir canell'
pause 1000
low 0,1,2,3,4,5 'desactivar servos 0,1,2,3,4,5
goto inici

saludar:
servo 1,175 'aixecar espatlla'
pause 1000
servo 2,200 'aixecar colze'
pause 100
servo 0,220 'posicio esquerra cintura'
pause 1000
servo 0,50  'posicio dreta cintura'
pause 1000
servo 0,150 'posicio neutre cintura'
pause 1000
servo 3,75  'posicio canell'
pause 1000
servo 3,150 'aixecar canell'
pause 1000
servo 4,75  'girar canell esquerra'
pause 1000
servo 4,200 'girar canell dreta'
pause 1000
servo 4,75  'girar canell esquerra'
pause 1000
servo 4,200  'girar canell dreta'
pause 1000
servo 4,125  'posicio neutre canell'
pause 1000
servo 5,75  'tencar pinza'
pause 1000
servo 5,200 'obrir pinza'
pause 1000
servo 5,75  'tencar pinza'
pause 1000
servo 0,50  'posicio esquerra cintura'
pause 1000
servo 0,150 'posicio neutre cintura'
pause 1000
servo 0,220 'posicio dreta cintura'
pause 1000
servo 0,150 'posicio neutre cintura'
pause 1000

FOR B0=150 TO 50 STEP -5 
SERVO 3,B0  'baixar canell lentament'
PAUSE 100
NEXT B0
wait 1

low 0,1,2,3,4,5 'desactivar servos 0,1,2,3,4 i 5'
goto inici

ampolla1:
servo 1,175  'aixecar espatlla'	
pause 1000
servo 0,217  'colocar davant de l'ampolla'
pause 1000
servo 2,230  'posicio del colze per agafar ampolla'
pause 1000  
servo 3,183  'posicio del canell per agafar ampolla'
pause 1000
servo 4,125  'gir canell'
pause 1000
servo 5,175 'obrir pinza'
pause 1000

FOR B1=175 TO 90 STEP -1 
SERVO 1,B1  'baixar espatalla lentament'
PAUSE 100
NEXT B1
wait 1

servo 5,70   'tancar pinza'
pause 1000
low 0,2,4   'desactivar servos 0,2 i 4'
servo 1,115 'aixecar espatlla'
pause 1000
servo 1,150 'aixecar espatlla'
pause 1500
servo 3,183 'aixecar canell'
pause 1500
servo 0,100 'gir cintura'
pause 1000
servo 4,225 'gir canell'
pause 2000

FOR B3=150 TO 91 STEP -5 
SERVO 1,B3  'baixar espatlla lentament'
PAUSE 100
NEXT B3
wait 1

FOR B4=100 TO 50 STEP -5 
SERVO 0,B4  'baixar bra? lentament'
PAUSE 100
NEXT B4
wait 1

servo 0,50 'posicio cintura per agafar ampolla'
pause 5000
servo 5,175 'obrir pinza'
pause 1000
servo 0,40 'colocar ampolla'
pause 1000
servo 1,90 'retorn de l'espatlla
pause 1000
servo 1,125 'aixecar bra?'
pause 1000
servo 0,100 'retorn de la cintura'
pause 1000
servo 0,150 'posicio final cintura
pause 1000
servo 1,150 'posicio final espatlla'
pause 1000

FOR B5=183 TO 50 STEP -5 
SERVO 3,B5  'baixar canell lentament'
PAUSE 100
NEXT B5
wait 1

low 0,1,2,3,4,5 'desactivar servo 0,1,2,3,4,5'
goto inici

ampolla2:

servo 1,175  'aixecar espatlla'   
pause 1000
servo 0,225  'posicio de la cintura per agafar ampolla"
pause 1500
servo 2,213  'posicio del colze per agafar ampolla'
pause 1000  
servo 3,170  'posicio del canell per agafar ampolla
pause 1000
servo 4,125  'gir canell'
pause 1000
servo 5,175  'obrir pinza'
pause 1000

FOR B1=175 TO 85 STEP -1
SERVO 1,B1  'baixar espatlla lentament'
PAUSE 100
NEXT B1
wait 1

servo 5,65   'tancar pinza'
pause 1000
low 0,2,4

FOR B2=92 TO 150 STEP -5 
SERVO 1,B2  '`aixecar espatlla lentament'
PAUSE 100
NEXT B2
wait 1


servo 1,115 'aixecar espatlla'
pause 1000
servo 1,150 'aixecar espatlla'
pause 1500
servo 3,185 'aixecar canell'
pause 1500
servo 0,110 'gir cintura'
pause 1000
servo 4,227 'gir canell'
pause 1000

FOR B3=150 TO 105 STEP -5
servo 1,B3  'baixar espatlla lentament'
pause 100
NEXT B3
wait 1

FOR B4=185 TO 133 STEP -5
servo 3,B4  'baixar canell lentament'
pause 100
NEXT B4
wait 1

FOR B5=100 TO 45 STEP -5 
SERVO 0,B5  'colocar ampolla lentament'
PAUSE 100
NEXT B5
wait 1

servo 1,103
pause 1000
servo 0,40
pause 5000
servo 5,175 'obrir pinza'
pause 1000
servo 1,125 'aixecar espatlla'
pause 1000
servo 0,55 'retorn de la cintura'
pause 1000
servo 0,100 'retorn de la cintura'
pause 1000
servo 0,150 'posicio final cintura
pause 1000
servo 1,150 'posicio final espatlla'
pause 1000

FOR B6=136 TO 50 STEP -5 
SERVO 3,B6  'baixar canell lentament'
PAUSE 100
NEXT B6
wait 1

low 0,1,2,3,4,5 'desactivar servos 0,1,2,3,4,5'

goto inici