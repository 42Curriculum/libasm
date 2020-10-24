section .text
		global ft_read
		extern __errno_location
ft_read:
		mov rax, 0

		cmp sil, 0
		je _ret_0
		
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
_ret_0:
		mov rax, 0
		ret