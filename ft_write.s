section .text
		global ft_write
		extern __errno_location
;fd = rdi, buff = rsi, size = rdx

ft_write:
	 	mov rax, 1
		syscall

		cmp rax, 0
		jl _err_call
		ret

_err_call:
		neg rax
		mov r15, rax
		call __errno_location
		mov [rax], r15
		mov rax, -1
		ret
