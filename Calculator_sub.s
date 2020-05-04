@ Calculator subroutines

.text
.align 2


.global subroutine_suma
@--------------------------------------------------
@Subrutina para sumar dos numeros
@Param:
@	r0: total, tambien un valor
@	r1: otro valor
@Return:
@	r0: retorna el resultado r1+r5
@--------------------------------------------------
subroutine_suma:	
	
	add r0,r0,r1
	mov pc,lr


.global subroutine_resta
@--------------------------------------------------
@Subrutina para sumar dos numeros
@Param:
@	r0: total, tambien un valor
@	r1: otro valor
@Return:
@	r0: retorna el resultado r1-r5
@--------------------------------------------------
subroutine_resta:

	sub r0,r0,r1
	mov pc,lr



