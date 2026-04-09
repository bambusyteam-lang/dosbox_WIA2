org 100h

jmp start                           ;omijamy wykonanie tekstu nizej
; tekst db "Marek Kowalik",0Ah,0Dh,"$"  ; wersja z dwma znakami przechodzenia do nowej linii: 0Ah (LF - Line Feed) i 0Dh (CR - Carriage Return). Wtedy tekst jest wyswietlany w nowej linii.
tekst db "Marek Kowalik","$"

start:
    ; mov AX, CS        ; rejestr DS (data segment) odpowiada za gdzie CPU szuka zmiennych. Nasz tekst jest w sekcji kodu, wiec fizyczny adres ma w CS (code segment). 
    ; mov DS, AX        ; te dwie operacje to bezpiecznik, pod skomplikowane programy albo format .exe. Wtedy mamy enforcera do pokazywania zmiennych w kodzie (CS) w DS (gdzie patrzy CPU). 
    mov DX, tekst
    mov AH, 09h
    int 21h

    mov AX, 4C00h
    int 21h