;redcode-94
;name miaucopyfect
;author 0xea
;strategy copy yourself all over, scan for and infect code

;assert CORESIZE != 0

off	equ 500
scn	equ 32

st:	dat #0, #eb+off+1
ld:	dat #0, #eb
	org be
be:	mov @ld, <st
	djn be, $ld
	spl bb
	mov #eb-ld, $ld+off
	mov #eb-st+off+1, $st+off
	jmp $be+off
bb:	sne @sc, #0
	spl @sc
	add #scn, $sc
	jmp $bb
eb:	sc: dat #0, #8
