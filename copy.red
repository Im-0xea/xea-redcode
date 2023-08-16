;redcode-94
;name miaucopy
;author 0xea
;strategy copy yourself all over, watch pretty pixies :o

;assert CORESIZE != 0

off	equ 6
st:	dat #0, #eb+off+1
ld:	dat #0, #eb
	org be
be:	mov @ld, <st
	djn be, $ld
	mov #eb-ld, $ld+off
	mov #eb-st+off+1, $st+off
eb:	jmp $be+off
