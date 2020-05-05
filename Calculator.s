@ Basic Calculator using Subroutines
@ Hugo Roman 19199
@ Mario de Leon 19019

/*|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||*/

@ Variables / mensajes
.data
.align 2

op_1:	.asciz "El operando 1 es: %d \n"
op_2:	.asciz "El operando 2 es: %d \n"

res_sum: .asciz "El resultado  es: %d \n"
res_res: .asciz "El resultado  es: %d \n"
res_mul: .asciz "El resultado  es: %d \n"
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
.align	2
.global	main
.type	main, %function

main:
	stmfd	sp!, {lr}	/* El resultado se ira almacenando en R5. R4 es el input del usuario. */
	
	mov r4,#0
	
	@NUMERO INICIAL 0
	@and r5,#0
	
	@RESULTADO R6
	@and r6,#0
	
	@b menu_loop
	
	
	ldr r0,=menu_calc	/* Mostrar menu principal */
	bl puts
	bl getchar
	
	ldr r1,=opcion_msg	/* Mostrar mensaje opcion_msg */
	strb r0,[r1]
	
	ldr r4,= opcion_msg
	ldrb r4,[r4]
	
	
	
	@b check
	

	cmp r4, #'+' 
	beq sumar		/* Si r5 = + suma */
	
	cmp r4, #'-'
	beq Restar	/* Si r5 = - resta */

	cmp r4, #'*'
	beq multiplicacion	 /*Si r5 = * mutiplicacion */

	/*cmp r4, #'M'
	beq subroutine_div	 	Si r5 = M division */

	cmp r4, #'P'
	beq potencia	/* Si r5 = P potencia*/ 

	/*cmp r4, #'='
	beq subroutine_tot	 Si r5 = = resultado */

	cmp r4, #'q'
	beq _exit		/* Si r5 = q salida */

	@bne invalido 	@@En caso de no ser ningun valor irse a la funcion
	
sumar:
	ldr r0,= txt_operando
	bl puts
	
	ldr r0,= getop
	ldr r1,=op_1
	bl scanf
	
	ldr r0,=op_1
	ldr r0,[r0]
	mov r5,r0
	ldr r1,=op
	ldr r1,[r1]
	bl subroutine_suma
	
	mov r1, r0
	ldr r0,= res_sum
	bl printf
	ldr r10,=op
	str r5,[r10]
	bl getchar
	b main
	
Restar:
	ldr r0,= txt_operando
	bl puts
	
	ldr r0,= getop
	ldr r1,=op_1
	bl scanf
	
	ldr r0,=op_1
	ldr r0,[r0]
	mov r5,r0
	ldr r1,=op
	ldr r1,[r1]
	bl subroutine_resta
	
	mov r1, r0
	ldr r0,= res_res
	bl printf
	ldr r10,=op
	str r5,[r10]
	bl getchar
	b main
	
multiplicacion:
	ldr r0,= txt_operando
	bl puts
	
	ldr r0,= getop
	ldr r1,=op_1
	bl scanf
	
	ldr r0,=op_1
	ldr r0,[r0]
	mov r5,r0
	ldr r1,=op
	ldr r1,[r1]
	bl subroutine_multiplicacion
	
	mov r1, r0
	ldr r0,= res_mul
	bl printf
	ldr r10,=op
	str r5,[r10]
	bl getchar
	b main
	
	
potencia:
	ldr r0,= txt_operando
	bl puts
	
	ldr r0,= getop
	ldr r1,=op_1
	bl scanf
	
	ldr r0,=op_1
	ldr r0,[r0]
	mov r5,r0
	ldr r1,=op
	ldr r1,[r1]
	bl subroutine_potencia
	
	mov r1, r0
	ldr r0,= res_pot
	bl printf
	ldr r10,=op
	str r5,[r10]
	bl getchar
	b main
	
	

_exit:
	@mov	r3, #0	
	@mov	r0, r3
	ldmfd	sp!, {lr}	/* Salida correcta */
	bx	lr
	
