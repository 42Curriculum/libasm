section .data
		txt db "Hello",10
section .text
		global ft_strdup
		extern ft_strlen
		extern ft_strcpy
		extern malloc
		extern __errno_location

ft_strdup:
		push rdi ; copy the string to rsi (as second arg for strcpy)
		call ft_strlen ; get len of str in rax
		cmp rax, 0

		mov rdi, rax; copy len in rdi (as first arg for malloc)
		call malloc
		cmp rax, 0
		je ret_null
		mov rdi, rax; copy result memory in rdi as first arg for strcpy
		pop rsi
		call ft_strcpy
		ret
ret_null:
		call __errno_location
		mov rdi, 12
		mov [rax], rdi
		xor rax, rax
		ret