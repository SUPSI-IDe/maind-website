---
layout: project
categories: project
name: trainerbot
title:  TrainerBot
author: Matteo Loglio, Carlos Velasquez
teacher: Massimo Banzi
module: cas2
course: Creating Tangible Interfaces
year: 2011/12
licence: ccbyncsa
---
TrainerBot is a daily training device for physical activities. It helps you to accomplish four basic exercises (push-ups, abs, crouches and jumps), can detect if you are training in the right way and reacts if you stop or try to cheat.
 

Interface and interaction modality

The device is a cube with sides of 20 centimeters. One of the faces is utilized as the “control face”, which contains a button and a screen used to select the level of difficulty of the exercises. Four of the faces have a specific exercise assigned to it, meaning each one of these faces have the corresponding pictogram and LED for each specific exercise. The last face contains a sensor and it also serves as the resting face for the cube when it is in sleep mode. The program is started by pushing the button in the control face, where the user can toggle between easy (1 minute exercises), hard (2 minute exercises), or sleep mode. After the difficulty has been set, the cube emits a sound, and a LED flashes in the face of the exercise that is about to begin. The action is initiated by simply positioning the indicated exercise face up and executing it. After each exercise is finished, it indicates the next exercise, again by emitting a tone and flashing the LED for the face that needs to be pointed upward.
In addition, the TrainerBot recognizes and emits a tone every time the exercise is executed correctly. For example, while doing jumps, it beeps every time a jumps is successfully completed. If the user decides to stop in the middle of the exercise, the TrainerBot will give out a warning tone, and if there is no response after the warning, it automatically resets and switches back to sleep mode. Furthermore, the device can detect if the user is trying to cheat, by blocking the sensors or rotating the device upside down, in which case the cube will again reset itself and go back to sleep.
Finally, if all the exercises are completed without stopping, the cube will flash all the LEDs and playback a melody, indicating that the daily training is complete, and guaranteeing the user a full body workout.
Technology

The product is based on an Arduino board that works with a tilt sensor to detect the jump motion, one light and one infrared sensor are used to detect the proximity for abs, crouches and push-ups. On each side that matches with a specific exercise there is a LED that lights up when the face is active. Inside there is also a piezo buzzer that generates specific sounds when you train properly or when you stop working out or try to cheat. On one side of the cube there is a button connected to a servo motor that rotates to display the selected mode. The product is stand-alone and is powered by a battery
User experience

TrainerBot is a product of personal use designed to see the daily exercises as a game, in fact you have to go trough all the “levels” to finish your daily task and hear a “victory song” earcon. If you stop or try to cheat, the device will play sounds based on arcade video games. This is to get the user involved and to have fun in an usually tiring process. The product is quite intuitive, every face matches a specific exercise and to turn it on or off you have just to press a big red button.
Research and development contexts

A device for mass production, which could be utilized in the household by individuals, or used as a tool in dedicated training locations. It could be developed as a fitness game, where people would compete for the best results, or kept as a daily training motivation. It ideally would help its users get a sense for routine, and to improve themselves everyday.