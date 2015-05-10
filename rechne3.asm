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
	
	mov eax, dword [xvar] ; x in multiplikationsregister
	mul eax ; quadrieren
	imul eax, dword [ebx] ; mit a multiplizieren
	mov dword [ergebnis], eax ;Zwischenergebnis auslagern

	mov eax, dword [xvar] ; x in multiplikationsregister 
	imul eax, dword [ebx+4] ; mit b multiplizieren
	add dword [ergebnis], eax ; mit Zwischenergebnis addieren

	mov eax , dword [ebx+8] ; koeffizient c bereitstellen
	add dword [ergebnis], eax ; addition mit c, ergebnis in variable

	mov esp, ebp	; alter Stackframe restaurieren
	pop ebp	

	; Programm verlassen & signalisieren,
	; dass bei bei der Ausführung kein Fehler
	; aufgetreten ist.
	mov ebx, 0
	mov eax, 1
	int 0x80
