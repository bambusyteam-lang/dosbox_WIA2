org 100h

mov AH, 01h     ; odczyt znaku z klawiatury - zostanie on odłożony w rejestrze AL
int 21h

push AX      ; przeniesienie odczytanego znaku (w sumie calego AX, nasz znak to tylko AL) na stos

mov AH, 02h     ; drukowanie spacji, przed odczytanym znakiem
mov DL, ' '
int 21h

mov AH, 02h     ; znaku odczytanego z klawiatury
pop DX      ; zwrócenie odczytanego znaku do rejestru DL (stos zrzuci poprzedni AX do DX), z chwilowo przechowywanego na stosie
int 21h

mov AX, 4C00h
int 21h