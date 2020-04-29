@ Basic Calculator using Subroutines
@ Hugo Roman 19199
@ Mario de Leon 19019

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
opcion: .byte ' '

/*|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||*/

.text
.align	2
.global	main
.type	main, %function

main:
	stmfd	sp!, {lr}
	and r4,#0
	and r5,#0
	and r6,#0
	
menu_loop:
	ldr r0,=menu_calc	/* Mostrar menu principal */
	bl puts
	ldr r0,=opcion_msg	/* Mostrar mensaje opcion_msg */
	bl puts
	bl getchar			/* Obtener char eleccion */
	ldr r1,=opcion
	strb r0,[r1]

_exit:
	mov	r3, #0	
	mov	r0, r3
	ldmfd	sp!, {lr}	/* Salida correcta */
	bx	lr
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

