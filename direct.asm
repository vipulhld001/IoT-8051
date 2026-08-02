	Org 00H
Start:  ; Direct Addressing (RAM / Registers / Ports) - NO '#'
MOV A, P2            ; Copy 8-bit input from Port 2 into Accumulator
MOV P1, A            ; Send Accumulator bits out to Port 1 LEDs
MOV R1, 30H          ; Copy content of RAM location 30H into R1	End
End