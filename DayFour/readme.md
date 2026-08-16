# Internet of Things: IR Sensor Module Lab Report & Documentation

**Author:** Vipul Singh Negi  

---

## 1. Introduction

In a world increasingly driven by technology, the **Infrared (IR) Sensor** emerges as a pivotal component in numerous applications. It unravels fundamental physical principles to fulfill critical roles in modern technological advancements. IR Sensors have become indispensable across the technological landscape—from simplifying everyday tasks to enabling complex automated machinery. 

As we delve into their intricacies, we explore how they function, their internal dynamics, and how they shape the interaction between technology and daily life.

---

## 2. What is an IR Sensor?

An **Infrared Sensor (IR Sensor)** is a device that uses infrared radiation to detect and measure various characteristics of its surrounding environment. By emitting or detecting infrared light, these sensors perceive the physical world beyond human vision capabilities.

### Key Characteristics & Applications
- **Proximity Sensing Technology:** Accurately measures closeness to nearby objects.
- **Motion Detection Capabilities:** Identifies movement within a given range.
- **Measures Heat Emissions:** Detects thermal radiation given off by objects or living organisms.
- **Obstacle Avoidance Systems:** Critical for autonomous robots, vehicles, and automation pipelines.
- **Remote Controls:** Widely used in consumer electronics for signal transmission.
- **Infrared Light Detection & Emission:** Operates in non-visible spectrum wavelengths.

---

## 3. Working Principle of IR Sensors

At the heart of an IR Sensor's functionality are two primary components: the **IR LED (Transmitter)** and the **Photodiode (Receiver)**.

```
+-------------------------------------------------------------+
|                     IR Sensor Module                        |
|                                                             |
|   [ IR Transmitter (LED) ] -------> Emitted IR Rays ----+   |
|                                                         |   |
|                                                         v   v
|                                                      [ Surface / ]
|                                                      [  Object   ]
|                                                         |   |
|   [ IR Receiver (Photodiode) ] <--- Reflected Rays -----+   |
+-------------------------------------------------------------+
```

1. **Transmission:** The IR LED continuously emits infrared radiation.
2. **Reflection:** When an object enters the sensor's path, the emitted infrared rays hit the object surface and reflect back.
3. **Detection:** The Photodiode receives the reflected infrared radiation, altering its internal resistance/current output, which is then processed to indicate object presence or measure distance.

---

## 4. Types of IR Sensors

IR Sensors are categorized into two primary types based on their operating mechanism: **Active IR Sensors** and **Passive IR Sensors**.

### 4.1 Active IR Sensors
Active IR sensors emit infrared signals directly and measure the reflected signal.
* **Key Features:**
  * Offers high sensitivity and precise measurement.
  * Operates via active emission and detection.
  * Requires an active power source.
  * Accurately measures distance and detects object presence.
* **Primary Applications:** Automated manufacturing, conveyor belt product counting, obstacle avoidance in robotics.

### 4.2 Passive IR Sensors (PIR)
Passive IR sensors do not emit infrared light. Instead, they detect natural infrared/thermal energy emitted by objects, particularly warm bodies (like humans or animals).
* **Key Features:**
  * Focuses purely on thermal motion sensing.
  * Operates in total darkness without emitting light.
  * Low energy consumption and long component lifespan.
  * Simple installation process.
* **Primary Applications:** Security systems, intruder alarms, automated smart lighting systems.

---

## 5. Active vs. Passive IR Sensors: Summary Comparison

| Feature / Metric | Active IR Sensor | Passive IR Sensor (PIR) |
| :--- | :--- | :--- |
| **Light Emission** | Emits Infrared Light | No Emission of Light |
| **Detection Method** | Detects Reflected Signals | Detects Thermal IR Radiation |
| **Detection Range** | Shorter Detection Range | Longer Detection Range |
| **Power Consumption** | Higher Energy Consumption | Low Energy Consumption |
| **Environmental Use** | Ideal for Controlled Environments | Effective in Outdoor & Variable Settings |
| **Primary Focus** | Object Presence / Distance | Motion / Human Heat Detection |

---

## 6. Sensor Component Details

### 6.1 IR LED (Infrared Light Emitting Diode)
- **Role:** The beacon of infrared light (Transmitter).
- **Features:** Invisible light source, long wavelength range emission, low power consumption, enabling night vision and gesture recognition technologies.

### 6.2 Photodiode
- **Role:** The light detection device (Receiver).
- **Features:** High sensitivity to IR radiation, rapid response time, converts incoming optical signals (reflected light) into measurable electrical current, compact form factor.

---

## 7. Laboratory Assignment & Setup

### 7.1 Required Hardware Components
- 1 × Arduino Board (e.g., Arduino Uno)
- 1 × IR Sensor Module
- 1 × Common Anode / Common Cathode RGB LED (or separate Red & Green LEDs)
- 1 × USB Type-A to Type-B Cable
- Jumper Wires (Male-to-Female, Male-to-Male)

---

### 7.2 Assignment Instructions
1. Interface the IR Sensor module with the Arduino board to detect nearby obstacles.
2. Connect an RGB LED to indicate real-time detection:
   * **Red Light:** Obstacle Detected
   * **Green Light:** Path Clear / No Obstacle Detected
3. Document circuit schematics in lab record notebooks.
4. Sign code submissions with Name and Roll Number in top comments before uploading `.ino` files.

---

### 7.3 Circuit Pin Mapping

| Component Pin | Arduino Board Pin | Note |
| :--- | :--- | :--- |
| **IR Sensor VCC** | 5V | Power Supply |
| **IR Sensor GND** | GND | Ground |
| **IR Sensor OUT** | Digital Pin 2 | Active LOW / HIGH Signal |
| **RGB Red Anode/Cathode** | Digital Pin 8 | Output (Red LED) |
| **RGB Green Anode/Cathode**| Digital Pin 9 | Output (Green LED) |
| **RGB Common Pin** | GND / 5V | Based on Common Cathode/Anode |

---

---

## 8. Conclusion

This lab session highlights the practical implementation of Active IR Sensors in real-time embedded systems. By coupling proximity sensing logic with visual output devices (RGB LEDs), we demonstrate fundamental automation and safety features widely applied in modern IoT architectures and robotics.
