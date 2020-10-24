section .text
		global ft_strlen
		
ft_strlen:
		cmp rdi, 0
		ej _isnull

		mov r8, rdi
		mov rbx, 0

		mov cl, [r8]
		cmp cl, 0
		je _isnull 
_count:
		inc rbx
		inc r8
		mov cl, [r8]
		cmp cl, 0
		jne _count

		mov rax, rbx
		ret
_isnull:
		mov rax, 0
		ret