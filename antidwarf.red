;redcode--94
;name antidwarf
;author 0xea

;assert CORESIZE != 0

sh:	dat #0, #0
sc:	dat #0, #-4
org be
be:	jmz $be, <sc
	sub @sc, $sh
	;mul #-1, $sh
	add $sc, $sh
	mov #0, <sh
	jmp $be
