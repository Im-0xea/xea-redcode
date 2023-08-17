;redcode-94
;name miaufect
;author 0xea
;strategy scan for code and infect it

;assert CORESIZE != 0

scn equ 8

be:	sne @sc, #0
	spl @sc
	add #scn, $sc
	jmp $be
sc:	dat #0, #10
