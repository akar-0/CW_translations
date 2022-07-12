global NAME

section .text

      ; <--  SIGNATURE  -->
      ; n := edi
      ; b := esi
      ; c := rdx
NAME:
    xor rax,rax     ; rax, the result
    ret
;<--    end of NAME -->
