@ Calculator subroutines


.text
.align 2

	and r7,#0
	
.global subroutine_suma
@--------------------------------------------------
@Subrutina para sumar dos numeros
@Param:
@	r0: valor1
@	r1: valor2
@Return:
@	r0: retorna el resultado r0+r1
@--------------------------------------------------
subroutine_suma:

	
	add r0,r0,r1
	mov pc,lr
	
.global subroutine_resta
@--------------------------------------------------
@Subrutina para sumar dos numeros
@Param:
@	r0: valor1
@	r1: valor2
@Return:
@	r0: retorna el resultado r0-r1
@--------------------------------------------------
subroutine_resta:

	sub r0,r1,r0
	mov pc,lr
	
.global subroutine_multiplicacion
@--------------------------------------------------
@Subrutina para sumar dos numeros
@Param:
@	r0: valor1
@	r1: valor2
@Return:
@	r0: retorna el resultado r0*r1
@--------------------------------------------------
subroutine_multiplicacion:

	mul r0,r0,r1
	mov pc,lr

.global subroutine_potencia
@--------------------------------------------------
@Subrutina para potenciar dos numeros
@Param:
@	r0: valor1
@	r1: valor2
@Return:
@	r0: retorna el resultado r0+r1
@--------------------------------------------------
subroutine_potencia:
	
	mul r0,r1,r1
	add r7,r7,#1
	cmp r7,r1
	bne subroutine_potencia
	and r7,#0
	mov pc,lr

.global subroutine_division
@--------------------------------------------------
@Subrutina para potenciar dos numeros
@Param:
@	r0: valor1
@	r1: valor2
@Return:
@	r0: retorna el resultado r0/r1
@--------------------------------------------------
subroutine_division:
	
	sub r0,r0,r1
	add r7,r7,#1
	cmp r0,r1
	bge subroutine_division
	mov r0,r1
	and r7,#0	
	mov pc,lr





