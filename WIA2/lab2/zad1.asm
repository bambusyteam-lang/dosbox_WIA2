; musi być jako pierwsza linijka
org 100h

; wyswietlenie liteki 'A' od początku do końca
mov AH, 02h
mov DL, 'A'
int 21h

; to samo, ale 'g'
mov AH, 02h
mov DL, 'g'
int 21h

; musi być jako ostatnia linijka - zawsze kończy program
mov AH, 00h
int 21h