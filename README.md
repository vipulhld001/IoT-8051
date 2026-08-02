# IoT Prototyping Laboratory - Lab 1: 8051 Microcontroller & EdSim51

**Course / Instructor:** Vipul Singh Negi   
**MS Teams Code:** `3mlkt3i` 

---

## 1. Overview & Architecture

### Microcontroller Concept
A microcontroller is a single integrated circuit (chip) containing :
* **CPU** 
* **Memory:** ROM and RAM 
* **I/O Ports** 
* **Subsystems:** Timers, Counters, Analog Interfaces, and I/O Interfaces 

### 8051 Pin Diagram & Ports Summary
* **Port 1 (Pins 1–8):** Dedicated solely to general-purpose I/O .
* **Port 0 (Pins 32–39):** Dual-role port. Used as a multiplexed lower-order address/data bus (`A0–A7` / `D0–D7`) for external memory or as general I/O .
* **Port 2 (Pins 21–28):** Dual-role port. Acts as higher-order address bus (`A8–A15`) for external memory or as general I/O .
* **Port 3 (Pins 10–17):** General I/O with special alternate functions :
  * `P3.0 (RXD)` / `P3.1 (TXD)`: Serial receive and transmit pins .
  * `P3.2 (INT0')` / `P3.3 (INT1')`: External interrupt inputs .
  * `P3.4 (T0)` / `P3.5 (T1)`: External counter inputs .
  * `P3.6 (WR')` / `P3.7 (RD')`: External memory write and read control signals .

---

## 2. Software Setup (EdSim51 Installation)

1. **Download EdSim51:** [SourceForge - EdSim51](https://sourceforge.net/projects/edsim51/) 
2. **Install Java JDK:**
   * **Windows/Mac:** Download from [Java Manual Download](https://www.java.com/en/download/manual.jsp) .
   * **Linux (Ubuntu):**
     ```bash
     sudo apt install default-jdk
     ``` 
3. **Run Simulator:** Unzip the downloaded file and run the `.jar` executable .

---

## 3. 8051 Assembly Basics

### Syntax Template
```assembly
[label:] mnemonic [operands] [; comments]
``` 

### Number Systems Format
```assembly
MOV A, #0FFH      ; Hexadecimal (Prefix 0 if starting with A-F)
MOV A, #11001010B ; Binary (suffix 'B')
MOV A, #255       ; Decimal (no suffix)
MOV A, #'A'       ; ASCII character
``` 

---

## 4. Addressing Modes & Examples

### Immediate Addressing
Uses `#` to load constant values .
```assembly
    ORG 00H
Start:
    MOV A, #45H       ; Load Hex 45 into Accumulator
    MOV R0, #10       ; Load Decimal 10 into R0
    MOV DPTR, #1234H  ; Load 16-bit address into DPTR
    END
``` 

### Direct Addressing
Directly references RAM locations, registers, or hardware ports (no `#`) .
```assembly
    ORG 00H
Start:
    MOV A, P2         ; Copy Port 2 input switches into Accumulator
    MOV P1, A         ; Send Accumulator byte to Port 1 LEDs
    MOV R1, 30H       ; Copy data at RAM location 30H into R1
    END
``` 

### Indirect Addressing
Uses pointers specified by `@` .
```assembly
    ORG 00H
Start:
    MOV A, @R0        ; Read RAM byte at address held in R0
    MOV @R1, A        ; Write Accumulator byte to address held in R1
    END
``` 

---

## 5. Lab Examples

### Example 1: Basic Addition
```assembly
    ORG 00H
Start:
    MOV A, #05H       ; Load 05H into Accumulator
    ADD A, #010H      ; Add 10H to Accumulator
    END
``` 

### Example 2: Multiplication
```assembly
    ORG 00H
Start:
    MOV A, #03H       ; Load 03H into A
    MOV B, #02H       ; Load 02H into B
    MUL AB            ; Multiply A and B (Result: A = Low byte, B = High byte)
    END
``` 

### Example 3: Binary Down-Counter (LED Pattern)
```assembly
    ORG 00H
Start:
    DEC P1            ; Decrement Port 1 value
    JMP Start         ; Loop continuously
    END
``` 

### Example 4: Mirror Switches to LEDs
```assembly
    ORG 00H
Start:
    MOV P1, P2        ; Copy Port 2 switch inputs directly to Port 1 LEDs
    JMP Start         ; Repeat continuously
    END
``` 

---

## 6. Lab Assignments

Complete the following programs in EdSim51 :
1. Subtraction of 2 numbers .
2. Division of 2 numbers .
3. Addition with Carry (`ADDC`) .
4. Subtraction with Borrow (`SUBB`) .
