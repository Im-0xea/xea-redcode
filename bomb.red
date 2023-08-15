;redcode-94
;name miaubomb
;author 0xea
;strategy bomb in both directions

;assert CORESIZE == 8000

lf:	dat #0, #0
	org be
be:	add #4, $rf
	sub #4, $lf
	mov $lf, @lf
	mov $rf, @rf
	jmp be
rf:	dat #0, #0
