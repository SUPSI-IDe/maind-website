---
layout: project
categories: project
name: rgb_color_lab
title:  RGB Color Lab
author: Orly Golan, Marco Lurati
teacher: Massimo Banzi
module: cas1
course: Creating Tangible Interfaces
year: 2013/14
vimeo: 164573800
licence: ccbyncsa
---
The RGB color lab is a project to demonstrate at children how computer “see” colors. In other words, the child can understand how the RGB system works by testing different physical colors and see the amount of red green and blue in it, also the digital mixed color is being displayed for demonstrating the full process of calculating colors and the shift from physical color to digital color. The child is also able to change the values using sliders, and influence directly on the digital color. The project attempts to explain in a simple fun and playful way and without numbers how the RGB color system works in the computer.

Interface, interaction modality and user experience

The object (basically a long wood box) is divided into two main parts; the playing area – where the children can test colors, and the display part – where they see the outcome of the changes they made. There is a linear process that the interface attempts to simulate in the display’s components order. First the children need to choose the way they want to test the color, physically (with a physical color board) or digitally (with sliders). Then, on the output display, they can see the evolution of the color. First the amount of the red green and blue channels is displayed by using for each one a LEDs level bar. On top of it, are placed a separated red, green and blue LED that display the brightness of the related channel color. At the top of the box there is the digital mixed color, using RGB LEDs. The object shape give the user in first impression the feeling of a machine that has to process and calculate data without mention or show numbers. In that way the operation of the object is simple, intuitive, playful and yet demonstrate a calculation process of how the computer produce the end color that we see on the display.
Technology

The project is based on Arduino boards. The function is to analyze color and display them in different ways. There are two input options. The first is by reading the light intensity reflected by physical colored boards placed on front of three photodiodes covered by a color filter (red, blue and green respectively). Each one returns the amount of light it’s measuring, equivalent to the R,G and B color channels. Thanks to this system, each colored board is translated in RGB values. For a clear reading of the filtered photodiodes, they are placed in a black box and lighted with white LEDs on the box edges. The second input is a set of three sliders representing the RGB channels, which allow mixing and generating colors, displayed on the output panel part.
The upper box part is divided in three different displays representing the color outputs. The first display consists in three LED bars, one for each channel (RGB). The led bars are made out of 7 LEDs and display the amount of the relative color channel (255 means 7 LEDs on). Each LED bar is driven by a shift register 74HC595N controlled by a second Arduino. The second Arduino receive the information through the serial port from the main Arduino that manages the raw data of sliders and photodiodes.
The second display is made by three LEDs displaying the brightness of each RGB channel. The third display is a set of two RGB LEDs that display the mixed channel and show the final color. The second and third displays are connected to the main Arduino. The electronic is mounted on two proto-boards and all the interface components (slider, LEDs, switch and photodiodes) are glued on the front panel and connected to the Arduino and proto-boards by wires. Each LED is connected to a resistor to adjust the current.
The power supply is a 6VDC 800mA charger connected to the Vin pin of both Arduino.