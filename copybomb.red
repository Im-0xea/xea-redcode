;redcode-94
;name miaucopybomb
;author 0xea
;strategy copy your bomber all over

;assert CORESIZE == 8000

off	equ 3500

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
bb:	add #4, $lf
	sub #4, $rf
	mov $3, @lf
	mov $3, @rf
	jmp bb
lf:	dat #0, #0
eb: rf:	dat #0, #-5
