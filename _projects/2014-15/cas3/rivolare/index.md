---
categories: project
name: rivolare
title: Rivolare
author: Francesca Maina
teacher: Frog Design
module: cas3
course: Designing Advanced Services
year: 2014/15
vimeo: 192599402
licence: ccbyncsa
---
## Abstract

The demoboard of this project is essentially a wooden box that hosts a series of electronic and graphic elements.
The main purpose of this artifact is to demonstrate how the wristband works, showing its visual (coloured LEDs) and physical (vibration) feedback to the user.
A bidimensional replica of the wristband is placed in the middle of the board, with two buttons and a series of RGB LEDs.
On the left, there are simple instructions and a legend that explains the meaning of colours and shapes of signals.

The behavior of the wristband changes according to the GPS position of the user on the path: it's simulated by sliding the cursor of a linear potentiometer placed on an ideal map on the right of the board.
The user can check the percentage of “completed path” by pressing one of the buttons of the wristband.
Messages coming from a mobile device and near contact communication inputs are simulated by buttons placed in the lower right of the board.
The “group members alerts” and “obstacles on the path” activate sequences the user has to stop by pressing one of the buttons of the wristband.
The main SOS function is activated by pressing the two buttons of the wristband at the same time for 5”. To exit the demonstration of this “extreme” function it's enough to press one of the buttons in the lower right of the board.
The demoboard is equipped with a vibrating motor: nevertheless, by default this element is disabled via code.
The 3-dimensional wristband can be connected to the demoboard by plugging the cable into its socket.

All functions and elements of the demoboard and the wristband are controlled by an Arduino UNO, powered by an USB power adapter.
