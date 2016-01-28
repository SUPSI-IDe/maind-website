---
layout: project
categories: project
name: time_tap_cube
title:  Time Tap Cube
author: Mark Pruneri, Consuelo Keller
teacher: Massimo Banzi
module: cas2
course: Creating Tangible Interfaces
year: 2011/12
licence: ccbyncsa
---
Time Tap Cube is a time-based game that enables the player to explore and train time perception. It engages the user through different audio and visual outputs and it makes use of haptic interaction.
 

Interface and interaction modality

Time Tap Cube is a physical device. The user interacts with the cube by swiping near a light sensor on the right side in order to activate it. The sleeping mode is visualised by a “breathing” white LED. Play is enacted by tapping on the upper surface of the cube. With the first tap the device generates beeps that indicate the numbers of seconds one has to estimate. When the player is ready, s/he taps again for starting the internal timer and another time for stopping it as soon as s/he believes the number of seconds to be estimated have passed. The cube communicates with the user through light and sound outputs: a blue LED situated over the tapping surface and a short sound give feedback that the player has estimated correctly, a green LED is displayed when the cube is ready to be tapped, and an orange LED signals the counting state (when the device emits the beeps for signalling the seconds to be estimated and while players are counting on their own). At the end of the game, the result is given by a needle indicator (the needle in the blue area indicates that the player has underestimated the time, while the red area indicates he has overestimated it. A short sound sequence of two tones signals the end of the game: the first sound stands for precise guessing, while the second is of lower frequency in case of underestimation and on contrary of higher frequency in case of overestimation.
Technology

The product recognizes, when active, knocks or taps on its top surface by means of a piezo sensor. When in sleeping mode, in order to simulate a swipe gesture switch, a light dependant resistor will sense a light difference in order to activate the device.
The software that controls the logic and all the sensors and actuator is implemented on an Arduino board. It produces sound and visual feedback through a piezo buzzer, LEDs and a servo motor for the time precision measurement indicator.
It is autonomously powered by a battery and it can be turned on and off through a switch located at the bottom of the device.
User experience

Time Tap Cube provides a simple and immediate gaming experience that can be enjoyed by a large audience and does not require special skills. It can be played alone or in a larger group, while the gamers can challenge each other.
Research and development contexts

The device could be developed for the game industry as a toy, i.e. it can be used in educational contexts. It can be further exploited as a personalized “time training” game in order to incrementally improve and maintain time precision. 