org 100h

mov AH, 02h     ; zmiana pozycji kursora na centrum, zakladajac rozdzielczosc znakowa 80x25 w Trybie 3 (Color Text Mode)
mov DH, 0Ch     ; 12 wiersz - środek ekranu (25/2 - 1 = 12) -hex-> #0Ch
mov DL, 27h     ; 39 kolumna - środek ekranu (80/2 - 1 = 39) -hex-> #27h
int 10h

; 1. Wypisanie znaku bez koloru
mov AH, 02h     ; Wypisanie C bez koloru
mov DL, 'C'
int 21h

; ; 2. Wypisanie znaku z kolorem
; mov AH, 09h     ; Funkcja BIOS: zapisz znak i atrybut w pozycji kursora
; mov AL, 'C'     ; Znak do wyświetlenia
; mov BH, 00h     ; Strona wideo
; mov BL, 02h     ; ATRYBUT: 0 = tło czarne, 2 = tekst zielony
; mov CX, 01h     ; Ile razy powtórzyć znak
; int 10h

mov AX, 4C00h
int 21h