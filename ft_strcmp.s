section .text
		global ft_strcmp

;rdi s1
;rsi s2

ft_strcmp:
		push rdi
		push rsi
_cmp:
		mov r14b, [rsi]
		mov r15b, [rdi]

		cmp r14b, 0
		je	_return

		cmp r15b, 0
		je _return

		inc rsi
		inc rdi

		cmp r14b, r15b
		je _cmp
_return:
		pop rsi
		pop rdi
		sub r15b, r14b
		movsx rax, r15b
		ret
