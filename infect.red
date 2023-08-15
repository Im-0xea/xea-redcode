;redcode-94
;name miaufect
;author 0xea
;strategy copy yourself all over, watch pretty pixies :o

;assert CORESIZE == 8000

scn equ 8

be:	sne @sc, #0
	spl @sc
	add #scn, $sc
	jmp $be
sc:	dat #0, #10
