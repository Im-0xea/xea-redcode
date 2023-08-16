;redcode-94
;name miauship
;author 0xea
;strategy make big bomber fleats

;assert CORESIZE != 0

off	equ 1000
bmb	equ 8

org be

be:
	spl bb1
	spl bb2
	spl bb3
	jmp bb4


cnl:dat #0, #-4
	dat #0, #13+off+1
	dat #0, #12
bb1:mov @-1, <-2
	djn -1, $-2
	mov #0, $off+cnl
	mov #12, $off-4
	mov #13+off+1, $off-6
	spl 2
	jmp $off-6
	add #bmb, $cnr
	sub #bmb, $cnl
	mov $cnl, @cnl
	mov $cnr, @cnr
	jmp -4
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0

	dat #0, #12+off+1
	dat #0, #11
bb2:mov @-1, <-2
	djn -1, $-2
	mov #11, $off-3
	mov #12+off+1, $off-5
	spl 2
	jmp $off-5
	add #bmb, $cnr
	sub #bmb, $cnl
	mov $cnl, @cnl
	mov $cnr, @cnr
	jmp -4
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0

	dat #0, #12+off+1
	dat #0, #11
bb3:mov @-1, <-2
	djn -1, $-2
	mov #11, $off-3
	mov #12+off+1, $off-5
	spl 2
	jmp $off-5
	add #bmb, $cnr
	sub #bmb, $cnl
	mov $cnl, @cnl
	mov $cnr, @cnr
	jmp -4
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	nop $0
	
	dat #0, #13+off+1
	dat #0, #12
bb4:mov @-1, <-2
	djn -1, $-2
	mov #0, $off+cnr
	mov #12, $off-4
	mov #13+off+1, $off-6
	spl 2
	jmp $off-6
	add #bmb, $cnr
	sub #bmb, $cnl
	mov $cnl, @cnl
	mov $cnr, @cnr
	jmp -4
cnr:dat #0, #4
