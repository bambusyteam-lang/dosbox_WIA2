; Naiwne podejście w przechowaniem znaku w DH.
org 100h

mov AH, 01h     ; odczyt znaku z klawiatury - zostanie on odłożony w rejestrze AL
int 21h

mov DH, AL      ; przeniesienie odczytanego znaku do rejestru DL (aby go wydrukować)

mov AH, 02h     ; drukowanie spacji, przed odczytanym znakiem
mov DL, ' '
int 21h

mov AH, 02h     ; znaku odczytanego z klawiatury
mov DL, DH      ; zwrócenie odczytanego znaku do rejestru DL, z chwilowo przechowywanego w DH
int 21h

mov AX, 4C00h
int 21h