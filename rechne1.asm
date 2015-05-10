SECTION .data
	; no data

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
	
	mov edi, 2 ; x initilisieren
	mov eax, edi ; x in multiplikationsregister
	mul eax ; quadrieren
	imul eax, 3 ; mit 3 multiplizieren
	push eax ;Zwischenergebnis auslagern

	mov eax, 2 ; x in multiplikationsregister
	imul eax, 4 ; multiplizieren
	pop ebx ; Zwischenergebnis vom Stack holen
	add eax, ebx ; mit Zwischenergebnis addieren

	sub eax, 5 ; subtrahieren, ergebnis in variable

	mov esp, ebp	; alter Stackframe restaurieren
	pop ebp	

	; Programm verlassen & signalisieren,
	; dass bei bei der Ausführung kein Fehler
	; aufgetreten ist.
	mov ebx, 0
	mov eax, 1
	int 0x80
