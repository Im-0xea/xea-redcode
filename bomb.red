;redcode-94
;name miaubomb
;author 0xea
;strategy bomb in both directions

;assert CORESIZE == 8000

be:	add #4, $lf
	sub #4, $rf
	mov $3, @lf
	mov $3, @rf
	jmp be
lf:	dat #0, #0
rf:	dat #0, #-5
