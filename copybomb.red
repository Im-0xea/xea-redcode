;redcode-94
;name miaucopybomb
;author 0xea
;strategy copy your bomber all over

;assert CORESIZE != 0

off	equ 3500

lf:	dat #0, #0
st:	dat #0, #eb+off+1
ld:	dat #0, #eb

	org be

be:
	mov @ld, <st
	djn be, $ld
	mov #eb-ld, $ld+off
	mov #eb-st+off+1, $st+off
	spl bb
	jmp $be+off
bb:	add #4, $rf
	sub #4, $lf
	mov $lf, @lf
	mov $rf, @rf
	jmp bb
eb: rf:	dat #0, #0
