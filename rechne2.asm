SECTION .data
	xvar DD 2; x
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
	
	mov eax, dword [xvar] ; x in multiplikationsregister
	mul dword [xvar] ; quadrieren
	mov ebx, 3 ; 3 zum multiplizieren initialisieren
	mul ebx ; mit 3 multiplizieren
	mov dword [ergebnis], eax ;Zwischenergebnis auslagern

	mov eax, dword [xvar] ; x in multiplikationsregister
	mov ebx, 4 ; 4 zum multiplizieren initialisieren
	mul ebx ; multiplizieren
	add dword [ergebnis], eax ; mit Zwischenergebnis addieren

	sub dword [ergebnis], 5 ; subtrahieren, ergebnis in variable

	mov esp, ebp	; alter Stackframe restaurieren
	pop ebp	

	; Programm verlassen & signalisieren,
	; dass bei bei der Ausführung kein Fehler
	; aufgetreten ist.
	mov ebx, 0
	mov eax, 1
	int 0x80
