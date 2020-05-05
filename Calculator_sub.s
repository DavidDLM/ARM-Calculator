@ Calculator subroutines

/*|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||*/

@ Variables / mensajes
.data
.align 2

op_1:	.asciz "El operando 1 es: %d \n"
op_2:	.asciz "El operando 2 es: %d \n"

res_sum: .asciz "El resultado de la suma es: %d \n"
res_res: .asciz "El resultado de la resta es: %d \n"
res_mul: .asciz "El resultado de la multiplicacion es: %d \n"
res_div: .asciz "El resultado de la division es: %d \n"
res_div_res: .asciz "El residuo es: %d \n"
res_pot: .asciz "El resultado de la potencia es: %d \n"
res_tot: .asciz "El resultado de las operaciones efectuadas es: %d \n"

menu_calc: .asciz "Bienvenido! \n+.Suma \n-.Resta \n*.Multiplicacion \nM.Division con residuo \nP.Potencia \n=.Resultado total \nq.Salir"
opcion_msg: .asciz "Eleccion: "
getop:	.asciz "%d"
opcion: .byte ' '
op: .word 0
txt_operando: .asciz "Numero a operar: "

/*|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||*/

.text
.align 2


.global subroutine_suma
@--------------------------------------------------
@Subrutina para sumar dos numeros
@Param:
@	r0: mensajes
@	r1: temporal
@	r5: valor guardado en memoria resultado 
@	r7: recibe un .word para operar
@Return:
@	r5: retorna el resultado r1+r5
@	r1: el valor de r5 a r1 listo para imprimirse
@--------------------------------------------------
subroutine_suma:

	
	add r0,r0,r1
	mov pc,lr
	
.global subroutine_resta
@--------------------------------------------------
@Subrutina para restar dos numeros
@Param:
@	r0: mensajes
@	r1: temporal
@	r5: valor guardado en memoria resultado 
@	r7: recibe un .word para operar
@Return:
@	r5: retorna el resultado r7-r5
@	r1: el valor de r5 a r1 listo para imprimirse
@--------------------------------------------------
subroutine_resta:

	sub r0,r0,r1
	mov pc,lr
	
.global subroutine_multiplicacion
@--------------------------------------------------
@Subrutina para multiplicar dos numeros
@Param:
@	r0: mensajes
@	r1: temporal
@	r5: valor guardado en memoria resultado 
@	r7: recibe un .word para operar
@Return:
@	r5: retorna el resultado r7-r5
@	r1: el valor de r5 a r1 listo para imprimirse
@--------------------------------------------------
subroutine_multiplicacion:

	mul r0,r0,r1
	mov pc,lr
	
