# Internet of Things (IoT) & Basic Arduino Programming

**Presenter:** Vipul Singh Negi  
**Affiliation:** Department of Computer Science Engineering, National Institute of Technology Rourkela-769008  

---

## Table of Contents
1. [Outline](#outline)
2. [Definition of Internet of Things](#definition-of-internet-of-things)
3. [History of IoT](#history-of-iot)
4. [IoT & Development Boards](#iot--development-boards)
    - [Key Features of IoT Boards](#key-features-to-look-for-in-an-iot-board)
    - [Raspberry Pi 5](#raspberry-pi-5)
    - [Arduino Uno](#arduino-uno)
    - [Jetson Nano](#jetson-nano)
5. [Arduino Overview](#arduino-overview)
    - [What is Arduino?](#what-is-arduino)
    - [Why Arduino?](#why-arduino)
    - [Arduino Hardware & Architecture](#arduino-hardware--architecture)
6. [Communication Protocols & Pin Configurations](#communication-protocols--pin-configurations)
    - [Analog-to-Digital Converter (ADC)](#adc-analog-to-digital-converter)
    - [Digital Pins & Thresholds](#digital-pins)
    - [Pulse Width Modulation (PWM)](#pulse-width-modulation-pwm)
    - [Serial Communication](#serial-communication)
    - [SPI (Serial Peripheral Interface)](#spi-serial-peripheral-interface)
    - [I2C (Inter-Integrated Circuit)](#i2c-inter-integrated-circuit)
    - [Arduino Uno Technical Specifications](#arduino-uno-technical-specifications)
    - [Pin Category & Details](#pin-category--details)
    - [Types of Arduino Boards](#types-of-arduino-boards)
7. [Software Setup & Installation](#software-setup--installation)
    - [Arduino IDE Installation](#arduino-ide-installation)
    - [Python Environment Setup](#python-environment-setup)
8. [Basics of Arduino Programming](#basics-of-arduino-programming)
    - [Structure of a Program](#structure-of-the-program)
    - [Functions](#functions)
    - [Syntax & Comments](#syntax--comments)
    - [Data Types & Variables](#data-types--variables)
    - [Arrays](#arrays)
    - [Operators](#operators)
    - [Constants & Control Statements](#constants--control-statements)
    - [Loops](#loops)
    - [Core Built-in Functions](#core-built-in-functions)
9. [Hands-On Demos](#hands-on-demos)
    - [Demo 1: Running a Basic Code](#demo-1-running-a-basic-code)
    - [Demo 2: Using Python for Serial Data](#demo-2-using-python-for-serial-data)
    - [Demo 3: Blinking of LED on the Board](#demo-3-blinking-of-led-on-the-board)
    - [Demo 4: LED Control via User Input (Serial)](#demo-4-blinking-of-led-on-the-board-with-user-input)

---

## Outline
* Definition of IoT
* History of IoT
* Arduino Overview
* Basic Arduino Programming
* Demos

---

## Definition of Internet of Things
* **IoT** refers to the interconnection via the Internet of computing devices embedded in everyday objects, enabling them to send and receive data.
* The scope of IoT is not just limited to getting devices connected or networked; it is fundamentally about the exchange of meaningful information from one device to another for the accurate interpretation of raw data.
* IoT is not a single technology, but a combination of technologies and domain knowledge. It is not owned by one engineering branch—it becomes a reality when multiple domains come together.

---

## History of IoT

* **1832:** The concept of connected devices dates back to the design of the first electromagnetic telegraph, enabling direct communication between two machines via electrical signals.
* **Late 1960s:** The invention and rapid development of the Internet formed an essential backbone for enterprise IoT.
* **1980s:** The first connected device was a Coca-Cola vending machine at Carnegie Mellon University operated by local programmers. Micro-switches were integrated into the machine over an early internet connection to check drink temperatures and stock levels.
* **1990:** John Romkey connected a toaster to the internet using TCP/IP protocol.
* **1991:** University of Cambridge scientists created the first webcam prototype to monitor coffee availability in their local computer lab (capturing 3 images per minute).
* **1999 (Coining the Term):** Kevin Ashton coined the term **"The Internet of Things"** during a presentation at Procter & Gamble. He described connecting devices using RFID tags for supply chain management. Ashton is widely regarded as the **Father of IoT**.
* **2000s:** 
    * Broad media adoption (The Guardian, Forbes, Boston Globe).
    * **2000:** LG Electronics introduced an internet-connected refrigerator.
    * **2005:** Nabaztag (a rabbit-shaped smart robot) was created to report weather, stock news, and alerts.
    * **2008:** The 1st International Conference on the Internet of Things was held in Switzerland.
* **2010s:**
    * **2011:** IoT added to the Gartner Hype Cycle for emerging technologies; public launch of IPv6.
    * Major technological expansion led by tech giants (Apple, Samsung, Google, Cisco, GM) spanning industries like manufacturing, healthcare, agriculture, and transportation.

---

## IoT & Development Boards

A **development board** is a printed circuit board with circuitry and hardware designed to facilitate experiments with a specific microcontroller or system-on-chip.

### Key Features to Look for in an IoT Board
1. Connectivity superiority
2. Scalability options
3. Peripheral support
4. Processing power
5. Board memory
6. Wireless capabilities

### Major Boards Overview

#### 1. Raspberry Pi 5
![Raspberry Pi 5](https://circuitpython.org/assets/images/boards/large/raspberry_pi_5.jpg)
* **CPU:** Broadcom BCM2712, 2.4GHz Quad-core 64-bit ARM Cortex-A76
* **RAM:** Options of 1GB, 2GB, 4GB, 8GB, or 16GB LPDDR4X-4267 SDRAM
* **Wireless:** 2.4 GHz & 5.0 GHz IEEE 802.11ac Wi-Fi, Bluetooth 5.0 / BLE
* **Connectivity:** Gigabit Ethernet (PoE+ ready), 2× USB 3.0, 2× USB 2.0, PCIe 2.0 x1 interface
* **Video/Display:** 2× 4-lane MIPI camera/display transceivers, 2× Micro-HDMI ports

#### 2. Arduino Uno
![Arduino](https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Arduino_Uno_-_R3.jpg/250px-Arduino_Uno_-_R3.jpg)
* **Microcontroller:** Microchip ATmega328P
* **Operating Voltage:** 5V
* **Input Voltage:** 7–20V
* **Digital I/O Pins:** 14 (6 supporting PWM output)

#### 3. Jetson Nano
![Jetson Nano](https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/NVIDIA_Jetson_Nano_Developer_Kit_Top.jpg/640px-NVIDIA_Jetson_Nano_Developer_Kit_Top.jpg)
* **GPU:** 128-core NVIDIA Maxwell architecture
* **CPU:** Quad-core ARM A57
* **Memory:** 4 GB 64-bit LPDDR4 (25.6 GB/s)
* **Storage & Interfaces:** Micro SD card slot, 40-pin expansion header, Gigabit Ethernet, HDMI/DisplayPort, MIPI CSI camera interface.

---

## Arduino Overview

### What is Arduino?
Arduino is an open-source electronics platform based on easy-to-use hardware and software.
* **Inputs:** Can read light on a sensor, a button press, or a Twitter/network message.
* **Outputs:** Can activate motors, turn on LEDs, publish messages online, etc.

### Why Arduino?
* Simple, accessible user experience suited for both beginners and advanced developers.
* Cross-platform software running on Mac, Windows, and Linux.

---

## Communication Protocols & Pin Configurations

### ADC (Analog to Digital Converter)
* Converts analog signals into digital signals so the digital processor can measure and process them.
* Arduino pins **A0–A5** read analog voltages.
* Features a **10-bit resolution** ($2^{10} = 1,024$ levels, 0 to 1023) mapping input voltages across 0–5V.

### Digital Pins
* Digital signals represent binary values: **0 (LOW / 0V)** or **1 (HIGH / 5V)**.
* When configured as inputs:
    * Voltage **< 0.8V** $
ightarrow$ Logic LOW (0)
    * Voltage **> 2.0V** $
ightarrow$ Logic HIGH (1)
    * Voltages in between are undefined.

### Pulse Width Modulation (PWM)
![PWM Duty Cycle](https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/PWM_signals.svg/640px-PWM_signals.svg)
* Technique to simulate analog output using digital signals by pulsing frequency and duty cycle.
* **Frequency:** Time taken for one complete period.
* **Duty Cycle:** Percentage of time the signal remains HIGH during a period (0%, 25%, 100%, etc.).
* Used for DC motor speed control, LED dimming, etc.

### Serial Communication
* Exchanging data between Arduino and other devices (computers, displays, sensors).
* Primary communication occurs on **Digital Pin 0 (RX)** and **Pin 1 (TX)**, as well as via USB.
* SoftwareSerial library allows creating additional serial ports on other digital pins.

### SPI (Serial Peripheral Interface)
Synchronous master-slave protocol using 4 lines:
* **MISO (Master In Slave Out):** Data line to Master.
* **MOSI (Master Out Slave In):** Data line to Peripheral devices.
* **SCK (Serial Clock):** Synchronizing clock signal generated by Master.
* **SS (Slave Select):** Pin to specify the targeted slave device.

### I2C (Inter-Integrated Circuit)
Two-wire synchronous communication protocol:
* **SCL (Serial Clock):** Clock signal line.
* **SDA (Serial Data):** Data transmission line.
* Supports up to 255 devices on the same bus with unique addresses. Located on **A4 (SDA)** and **A5 (SCL)** on Arduino Uno.

---

### Arduino Uno Technical Specifications

| Property | Specification |
| :--- | :--- |
| **Microcontroller** | ATmega328P (8-bit AVR family) |
| **Operating Voltage** | 5V |
| **Input Voltage (Recommended)** | 7–12V |
| **Input Voltage (Limits)** | 6–20V |
| **Analog Input Pins** | 6 (A0–A5) |
| **Digital I/O Pins** | 14 (6 PWM outputs) |
| **DC Current per I/O Pin** | 40 mA |
| **DC Current for 3.3V Pin** | 50 mA |
| **Flash Memory** | 32 KB (0.5 KB used by bootloader) |
| **SRAM** | 2 KB |
| **EEPROM** | 1 KB |
| **Clock Speed** | 16 MHz |

---

### Pin Category & Details

| Pin Category | Pin Name | Details |
| :--- | :--- | :--- |
| **Power** | `Vin`, `3.3V`, `5V`, `GND` | `Vin`: Input voltage when using external source.<br>`5V`: Regulated logic power.<br>`3.3V`: On-board supply (Max 50mA).<br>`GND`: Ground reference. |
| **Reset** | `Reset` | Resets the microcontroller. |
| **Analog Pins** | `A0–A5` | Measure analog values (0–5V range). |
| **Input/Output** | `Digital 0–13` | Programmable digital input/output pins. |
| **Serial** | `0(Rx)`, `1(Tx)` | TTL Serial communication pins. |
| **External Interrupts** | `2`, `3` | Trigger hardware interrupts. |
| **PWM** | `3`, `5`, `6`, `9`, `10`, `11` | 8-bit Pulse Width Modulation output. |
| **SPI** | `10(SS)`, `11(MOSI)`, `12(MISO)`, `13(SCK)` | Pins dedicated to SPI communication. |
| **Inbuilt LED** | `13` | Controls on-board LED. |
| **TWI / I2C** | `A4(SDA)`, `A5(SCL)` | Two-wire serial interface. |
| **AREF** | `AREF` | Reference voltage for analog inputs. |

---

### Types of Arduino Boards
* Arduino Uno
* Arduino Leonardo
* Arduino Mega 2560
* Arduino LilyPad
* Arduino Mega ADK
* Arduino Nano
* Arduino Pro / Pro Mini
* Arduino Ethernet / BT / Fio / Mini

---

## Software Setup & Installation

### Arduino IDE Installation
1. Navigate to [https://www.arduino.cc/en/software](https://www.arduino.cc/en/software).
2. Download executable setup for Windows (`.exe`), Linux, or macOS. (Avoid the Windows App store version).
3. During setup, ensure **Install USB driver** is checked.
4. Accept security prompt for Adafruit/Arduino driver installations.

### Python Environment Setup
1. Download Python 3.10+ from [python.org/downloads](https://www.python.org/downloads/).
2. Open terminal/CMD and set up environment:
```bash
# Navigate to working folder
cd Downloads

# Create virtual environment
python -m venv iotlab

# Activate environment
# On Windows:
iotlab\Scripts\activate
# On Linux/Mac:
source iotlab/bin/activate

# Install Jupyter & Pyserial
pip install jupyter pyserial

# Launch Notebook / Lab
jupyter notebook
```

---

## Basics of Arduino Programming

### Structure of the Program
An Arduino program consists of three main parts: **Structure**, **Values (Variables/Constants)**, and **Functions**.

```cpp
void setup() {
    // Put setup code here, to run once:
}

void loop() {
    // Put main code here, to run repeatedly:
}
```

### Functions
A named block of executable code statements.
```cpp
type functionName(parameters) {
    statements;
}
```
*Example returning a value:*
```cpp
int delayVal() {
    int v;
    v = analogRead(pot); // Read potentiometer value (0-1023)
    v /= 4;             // Convert range to 0-255
    return v;
}
```

### Syntax & Comments
* **Semicolon `;`**: Ends every statement.
* **Curly Braces `{}`**: Encloses blocks of statements. Must be balanced.
* **Single Line Comment**: `// comment`
* **Block Comment**: `/* multi-line comment */`

### Data Types & Variables
* `byte`: 8-bit unsigned integer (0 to 255).
* `int`: 16-bit signed integer (-32,768 to 32,767).
* `long`: 32-bit signed integer (-2,147,483,648 to 2,147,483,647).
* `float`: 32-bit floating point number ($3.4028235 	imes 10^{38}$).

### Arrays
Collections of zero-indexed variables.
```cpp
// Array declaration & initialization
int myArray[] = {10, 20, 30, 40};

// Size allocation and assignment
int myArray[5];
myArray[3] = 10;
```

*Array iteration example:*
```cpp
int ledPin = 10;
byte flicker[] = {180, 30, 255, 200, 10, 90, 150, 60};

void setup() {
    pinMode(ledPin, OUTPUT);
}

void loop() {
    for(int i = 0; i < 8; i++) {
        analogWrite(ledPin, flicker[i]);
        delay(200);
    }
}
```

### Operators
* Arithmetic Operators (`+`, `-`, `*`, `/`, `%`)
* Comparison Operators (`==`, `!=`, `<`, `>`, `<=`, `>=`)
* Boolean Operators (`&&`, `||`, `!`)
* Bitwise Operators (`&`, `|`, `^`, `~`)
* Compound Operators (`+=`, `-=`, `*=`, `/=`)

### Constants & Control Statements
* **Constants:** `HIGH` / `LOW`, `INPUT` / `OUTPUT`.
* **If-Else & Switch:**
```cpp
if (condition) {
    // code
} else if (condition) {
    // code
} else {
    // code
}

// Ternary Operator
min = (a < b) ? a : b;
```

### Loops
```cpp
// For Loop
for (int i = 0; i < 10; i++) { }

// While Loop
while (condition) { }

// Do-While Loop
do { } while (condition);
```

### Core Built-in Functions
* `pinMode(pin, mode)`: Configures pin as `INPUT` or `OUTPUT`.
* `digitalRead(pin)` / `digitalWrite(pin, value)`: Reads or writes binary digital signals (`HIGH`/`LOW`).
* `analogRead(pin)` / `analogWrite(pin, value)`: Reads analog value (0–1023) or outputs PWM signal (0–255).
* `delay(ms)` / `millis()`: Millisecond delay or time elapsed counter.
* `Serial.begin(rate)`: Initializes serial bus at defined baud rate (e.g., 9600).
* `Serial.println(data)`: Transmits serial data with line break.

---

## Hands-On Demos

### Demo 1: Running a Basic Code

```cpp
void setup() {
    Serial.begin(9600);
}

void loop() {
    Serial.println("Hello Welcome ");
    Serial.println("This is Internet of Things.");
    delay(1000);
}
```
> **Note for Linux/Mac users:** Grant serial port access if permission is denied:  
> `sudo chmod a+rw /dev/ttyACM0`

---

### Demo 2: Using Python for Serial Data

```python
import serial
import time

# Update COM port according to your system
arduinoData = serial.Serial("COM11", 9600)
time.sleep(1)

while True:
    while arduinoData.inWaiting() == 0:
        pass
    dataPacket = arduinoData.readline()
    print(dataPacket)
```

---

### Demo 3: Blinking of LED on the Board

```cpp
void setup() {
    pinMode(LED_BUILTIN, OUTPUT);
}

void loop() {
    digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on
    delay(1000);                       // wait for a second
    digitalWrite(LED_BUILTIN, LOW);    // turn the LED off
    delay(1000);                       // wait for a second
}
```

---

### Demo 4: LED Control via User Input (Serial)

```cpp
int data;

void setup() {
    Serial.begin(9600);
    pinMode(LED_BUILTIN, OUTPUT);
    digitalWrite(LED_BUILTIN, LOW); // Initially set to LOW
    Serial.println("This is my Second Example.");
}

void loop() {
    while (Serial.available()) {
        data = Serial.read();
        if (data == '1') {
            digitalWrite(LED_BUILTIN, HIGH);
        } else if (data == '0') {
            digitalWrite(LED_BUILTIN, LOW);
        }
    }
}
```
