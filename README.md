# RaumUeberwachung

Auf der C# GUI wird ein FTP-File ständig aktualisiert, so dass angezeigt wird wie viele Leute zur selben Zeit im Raum sind.

Das C-Programm wird auf einem Raspberry-Pi programmiert, welcher als FTP-Server konfiguriert ist.
Dort wird per physikalischem Tastendruck die Anzahl der Leute entweder erhöht oder verringert, je nachdem welche Taste man drückt.
Dadurch ergibt sich eine Anzahl an Leute im Raum, die ständig in ein File geschrieben werden welcher sich auf dem FTP-Verzeichnis befindet.



## Arbeitsaufteilung

Moritz | Marvin
-------|-------
C# Design | C# Funktion
C Interrupt-Funktion | FTP Config
C File creation | C sonstige Funktionen 
