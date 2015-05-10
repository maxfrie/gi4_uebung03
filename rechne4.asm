SECTION .data
	xvar DD 4; x
	koeffizient DD 33, 2, 7 ;koeffizienten a, b, c
	ergebnis DD 0; no data

SECTION .text

; oeffentliche Functionen deklarieren
	global main

; Funktionen implementieren
main:
	push ebp	; neuer Stackframe erzeugen
	mov ebp, esp

	; Diese Datei kann als Vorlage für die
	; Entwicklung von Assembler-Programmen
	; verwendet werden. Hierzu muss die nächste
	; Zeile nur durch den gewünschten Code
	; ersetzt we

	mov ebx, koeffizient ; Pointer auf erstes Element in Array
	
	; Wender Horner-Schema fuer Berechnung an
	mov eax, dword [xvar]
	imul eax, dword [ebx]
	add eax, dword [ebx+4]
	imul eax, dword [xvar]
	add eax, dword[ebx+8]
	mov dword [ergebnis], eax 

	mov esp, ebp	; alter Stackframe restaurieren
	pop ebp	

	; Programm verlassen & signalisieren,
	; dass bei bei der Ausführung kein Fehler
	; aufgetreten ist.
	mov ebx, 0
	mov eax, 1
	int 0x80
