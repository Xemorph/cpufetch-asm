;============================================
; cpuid_asm.win.asm file
; Ref:
;============================================
.code
; See asm/cpuid_asm.h
; void gcpuid(uint32_t *eax, uint32_t *ebx, uint32_t *ecx, uint32_t *edx);
gcpuid PROC
    push	rbx
	mov	eax, DWORD PTR [rcx]
	mov	r10, rcx
	mov	r11, rdx
	mov	ecx, DWORD PTR [r8]
;--------------------------------------------
; Call cpuid
;--------------------------------------------
    cpuid
;--------------------------------------------
; Save results
;--------------------------------------------
    mov	DWORD PTR [r10], eax
	mov	DWORD PTR [r11], ebx
	mov	DWORD PTR [r8], ecx
	mov	DWORD PTR [r9], edx
	pop	rbx
	ret
gcpuid ENDP
;----------------------------------------------
END
;----------------------------------------------
; To compile this file use:
; ml.exe   cpuid_asm.win.asm /c /coff (For 32 Bit)
; ml64.exe cpuid_asm.win.asm /c       (For 64 Bit)