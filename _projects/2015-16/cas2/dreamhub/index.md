---
categories: project
name: dreamhub
title:  Dream Hub
author: Alessandra Angelucci, Abrar Burk, Julien Courbat 
teacher: Habits
module: cas2
course: Think real, design wonder
year: 2015/16
vimeo: 154829541
licence: ccbyncsa
---
## Abstract
DreamCatcher is a connected lamp and a sleeping quality data visualiser. Inspired from the amerindians dreamcatcher, the aim is to create a unique wake up experience based on the amount of light, deep and REM sleep one had overnight. The light animation starts at the moment the alarm clock of the user is triggered. Following the dreamcatcher metaphor, it will then switch off when the light is turned on in the room.
It is composed of a hundred LED controlled by an Arduino board, the shape are created using a layered stencil and a translucent paper. 


## Interface and Interaction modality 
Inspired from a dreamcatcher, the object has a circular shape and is hanged on the wall. It collects your data over night via an API. The lamp detects the alarm clock of the user and starts the animation. The data are represented using a three colour palette, in order to represent the deep, light and REM sleep. The aim is to create a dynamic light pattern that will ease your waking up experience. To stop the animation, the lamp is equipped of a photosensor that will fade it out LEDs once the environmental light reach a certain threshold. 


## Technology:
100x NeoPixel Digital RGB LED
1x Genuino Board 
1x Step Down Transformer (12V to 5V)
1x LDR
1x12 volt power supply 
1x Momentary Switch

The 100 LED are disposed in 10 strips of 10 LEDs each. Each strip represents 10% of the sleep. Once lit up, each strip will be representing the percentage of each of the REM, light and deep sleep, using 3 colors: white, light violet and light blue.
Dreams Hub code is based on Genuino. The physical prototype was designed and produced with Rhino software, Laser Cutter and CNC machine technology.


## User Experience 
The aim is to provide the user with a unique wake up experience. While some sense of the data can be easily made by looking at the color distribution, the aim wasn’t to recreate a visualise dashboard but more an artefact having a positive impact on the morning experience.
The lamp switch on with in sync with the alarm clock, accompanying the user in the first minute of his day. The LEDs have a random blinking, giving to the structure a more dynamic feel. The dim light it creates plus the animation is meant to provide a pleasant and universe awakening. 


## Research and development context:

Our research focused mainly on the monitoring of sleep cycles and on the existing technologies currently available for its detection, specifically on smartphone apps. We also explored through the concept of ‘dream’, for its mystical and romantic side, in order to find a connection between the technology (of detecting and visualizing) and the waking up experience. In this way an object that can be more personal and meaningful.

The context of use is essentially private. Considering a real production, it’s possible to consider different color palettes (i.e. warmer colors that help the awakening or brighter colors that stands for night and the imaginary). Similarly, you might also think at countless different patterns (i.e. contemporary, geometrical, for children, etc).