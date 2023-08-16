;redcode--94
;name antiimp
;author 0xea

;assert CORESIZE != 0

sc:	dat #0, #-4
org be
be:	jmz be, <sc
	add #3, $sc
	mov #0, @sc
	mov #0, @sc
	mov #0, @sc
	jmp $be
