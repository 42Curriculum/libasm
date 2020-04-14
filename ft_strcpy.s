section .text
	global ft_strcpy

;destr str, source str
;modify dest without overwriting it

;move byte by byte until str = 0

;rdi = dest
;rsi = src

ft_strcpy:
		cmp rsi, 0 ;if rsi is null, return dst
		je _ret_null

		push rsi
		push rdi
		; saves rsi and rdi ? I think?
_ft_loop:
		mov r15b, [rsi]
		mov [rdi], r15b
		inc rdi
		inc rsi
		cmp r15b, 0
		jne _ft_loop

		mov r15b, [rsi]
		mov [rdi], r15b
		pop rdi
		pop rsi
_ret_null:
		mov rax, rdi
		ret 
