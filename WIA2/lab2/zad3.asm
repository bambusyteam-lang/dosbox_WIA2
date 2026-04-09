org 100h

mov AH, 02h     ; ustawianie kursora
mov DH, 00h     ; row - top position 
mov DL, 00h     ; column - left position
int 10h

mov AH, 02h     ; drukowanie litery 'A' przy kursorze w rogu
mov DL, 'A'
int 21h

mov AX, 4C00h
int 21h