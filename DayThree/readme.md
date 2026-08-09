# Internet of Things (IoT) Lab Experiments & Code Examples

**Author / Instructor:** Vipul Singh Negi  
**Department:** Computer Science & Engineering, National Institute of Technology Rourkela  
**Date:** August 10, 2026  

---

## Table of Contents
1. [Basic Arduino Sketches](#basic-arduino-sketches)
   - [Variables & Serial Output](#1-variables--serial-output)
   - [Using For Loop](#2-using-for-loop)
2. [Serial Plotter Demos](#serial-plotter-demos)
   - [Demo 1: Sine Wave Plotting](#demo-1-sine-wave-plotting)
   - [Demo 2: Sine & Cosine Wave Plotting](#demo-2-sine--cosine-wave-plotting)
   - [Demo 3: Random Number Generation](#demo-3-random-number-generation)
   - [DIY Challenge: Make a Dice](#diy-challenge-make-a-dice)
3. [Hardware Interfacing](#hardware-interfacing)
   - [Demo 4: Interfacing LED / RGB LED with Arduino](#demo-4-interfacing-led--rgb-led-with-arduino)
4. [Running Python on Arduino (PyFirmata)](#running-python-on-arduino-pyfirmata)
   - [Setup & Prerequisites](#setup--prerequisites)
   - [Blink LED using Python](#blink-led-using-python)
   - [PWM Dimming Control using Python](#pwm-dimming-control-using-python)
5. [Lab Assignments](#lab-assignments)

---

## Basic Arduino Sketches

### 1. Variables & Serial Output
Demonstrates variable declaration and serial output using Arduino C++.

```cpp
int num = 25;
float pi = 3.14;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.print("Hello Welcome \n");
  Serial.println("This is Internet of things");
  Serial.println("The number is " + String(num) + " The Value of PI is " + String(pi));
  
  // Delay
  delay(1000);
}
```

---

### 2. Using For Loop
Demonstrates iterating over statements using a `for` loop in the main execution loop.

```cpp
int num = 25;
float pi = 3.14;
int i = 1;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  for (i = 1; i <= 2; i++) {
    Serial.print("Hello Welcome User Number " + String(i) + "\n");
  }
  Serial.println("This is Internet of things");
  Serial.println("The number is " + String(num) + " The Value of PI is " + String(pi));
  
  // Delay
  delay(1000);
}
```

---

## Serial Plotter Demos

### Demo 1: Sine Wave Plotting
Plots a continuous sine wave using the Arduino IDE Serial Plotter (`Tools -> Serial Plotter`).

```cpp
void setup() {
  Serial.begin(9600);
}

void loop() {
  for (float j = 0; j < 360.00; j = j + 2) {
    Serial.println(sin(j * (PI / 180.00))); // plot sinewave
  }
}
```

---

### Demo 2: Sine & Cosine Plotting
Plots both Sine and Cosine curves simultaneously on the Serial Plotter by outputting space-separated values.

```cpp
void setup() {
  Serial.begin(9600);
}

void loop() {
  for (float j = 0; j < 360.00; j = j + 2) {
    Serial.print(sin(j * (PI / 180.00))); // plot sinewave
    Serial.print(" ");
    Serial.println(cos(j * (PI / 180.00))); // plot cosinewave
  }
}
```

---

### Demo 3: Random Number Generation
Generates random numbers between 0 and 99.

```cpp
int myvalue = 0;

void setup() {
  Serial.begin(9600);
}

void loop() {
  myvalue = random(100); // Generates between 0 to 99
  Serial.print("Hello the random number is ");
  Serial.println(myvalue);
  delay(1000);
}
```

---

### DIY: Make a Dice
> **Task:** Modify the random generation code above to simulate a 6-sided die (generating integers between 1 and 6) and display the roll output on the Serial Monitor.

---

## Hardware Interfacing

### Demo 4: To Interface LED with Arduino

#### Required Hardware Devices:
- Arduino Board (e.g., Uno)
- Jumper Cables
- USB A to B Cable
- LED / RGB LED Module

#### Pin Wiring & Setup Code:

```cpp
int red = 11;
int green = 10;
int blue = 9;

void setup() {
  // Configures pins as output
  pinMode(red, OUTPUT);
  pinMode(green, OUTPUT);
  pinMode(blue, OUTPUT);
}

void loop() {
  // Turn on blue LED pin
  digitalWrite(blue, HIGH);
}
```

---

## Running Python on Arduino (PyFirmata)

We can control the Arduino board directly via Python using the `PyFirmata2` library.

### Setup & Prerequisites

1. **Flash Firmware on Board:**
   - Open Arduino IDE.
   - Go to `File -> Examples -> Firmata -> StandardFirmata`.
   - Upload `StandardFirmata` to your Arduino board.

2. **Configure Python Environment:**
   - Activate your virtual environment (e.g., `iotlab/Scripts/activate`).
   - Install `pyfirmata2`:
     ```bash
     pip install pyfirmata2
     ```

---

### Blink LED using Python

```python
import pyfirmata2
import time

# Update 'COM8' to match your board's serial port
board = pyfirmata2.Arduino('COM8')

while True:
    board.digital[13].write(1)
    time.sleep(1)
    board.digital[13].write(0)
    time.sleep(1)
```

---

### PWM Code using PyFirmata

Smoothly fades an LED in and out using Pulse-Width Modulation (PWM).

```python
import pyfirmata2
import time

if __name__ == '__main__':
    # Update 'COM8' to match your board's serial port
    board = pyfirmata2.Arduino('COM8')
    print("Communication Started")
    
    LED = board.digital[9]
    LED.mode = pyfirmata2.PWM
    
    pwm_counter = 0.01
    increase_pwm = True

    while True:
        if increase_pwm:
            pwm_counter += 0.01
            if pwm_counter >= 1:
                increase_pwm = False
        else:
            pwm_counter -= 0.01
            if pwm_counter <= 0:
                increase_pwm = True
                
        LED.write(pwm_counter)
        time.sleep(0.01)
```

---

## Lab Assignments

Complete the following tasks and upload your work:

1. **WAP to plot the graphs for Sec and Cosec.**
2. **WAP to plot the graph for a square wave.**
3. **WAP to Create five new colours using an RGB LED. (HINT: USE Analog)**
4. **WAP to create a function that can produce any colour.**
5. **WAP to create a dimming module for the LED.**

### Submission Guidelines:
- Write the assignment solutions in your **Lab Record Books** along with the **Circuit Diagram** on the blank facing page.
- Upload your codes to MS Teams as `.ino` files for each assignment.
- **Important:** Include your Name and Roll Number as comments at the top of every code file.
