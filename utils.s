%macro _ERR_CALL 1
_err_call:
		mov rdi, %1
		neg rdi
		mov r15, rdi
		call __errno_location
		mov [rax], r15
		mov rax, -1
		ret
%endmacro
	
