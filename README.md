# Übung 3: Integerarithmetik

Der Wert des Ausdrucks `3x^2 + 4x − 5` soll auf verschiedene Arten berechnet werden.

**Hinweis:** Nutzen Sie zur Kontrolle Ihrer Lösung und ggf. Fehlersuche einen Debugger.

1. Schreiben Sie ein Programm in x86-Assembler, das die nötigen Schritte zur Berechnung des Ausdrucks unter der Annahme `x = 2` durchführt. Das Ergebnis soll nach der Berechnung im Register `EAX` liegen.

2. Der Ausdruck soll nun für andere Werte von `x` berechnet werden. Um dies zu erreichen, legen Sie eine Variable `x` an, die den aktuellen Wert von `x` aufnimmt. Als Beispiel sei `x` mit `3` vorbelegt. Legen Sie eine Variable ergebnis an, welche das Ergebnis aufnimmt. Sorgen Sie dafür, dass nach der Berechnung des Ausdrucks das Ergebnis in die Variable `ergebnis` abgelegt wird.

3. Es sollen nun allgemeine Ausdrücke der Form `ax^2 + bx + c` berechnet werden. Dazu enthalte das Register `EBX` einen Zeiger auf ein Array koeffizient, welches in der Programmiersprache C folgendermaßen definiert sei: `int koeffizient[3]; //= {a, b, c}` Eine Variable vom Typ int ist hier 4 Bytes groß. Zeichnen Sie den Aufbau des Arrays im Speicher, nutzen Sie dazu das Beispiel `a = 33`, `b = 2`, `c = 7`. Benutzen Sie für die Werte im Speicher die Hexadezimaldarstellung. Schreiben Sie anschließend das vorherige Programm so um, dass das Array `koeffizient` genutzt wird, um den Ausdruck für `x = 4` zu berechnen und in `ergebnis` abzulegen.

4. Höchstwahrscheinlich haben Sie den Ausdruck berechnet, ohne das [Hornerschema](http://de.wikipedia.org/wiki/Horner-Schema) zu verwenden. Schreiben Sie das zuvor erstellte Programm so um, dass das Hornerschema genutzt wird. Treffen Sie eine Aussage über die Anzahl der Multiplikationen!

5. Diskutieren Sie, welche Maßnahmen nötig sind, um die Berechnung von Termen der Form 􏰀`for(i=0; i<N; i++) { a(i) * x^i} ` durchzuführen. (Die genaue mathematische Schreibweise findet man im PDF des L2Ps.)

6. Zusatzaufgabe: Schreiben Sie ein Programm, welches die Multiplikation von komplexen Zahlen ermöglicht. Eine komplexe Zahl wird dabei mittels des nachfolgenden struct abgebildet: `struct komplex { int real; int imag; };`
