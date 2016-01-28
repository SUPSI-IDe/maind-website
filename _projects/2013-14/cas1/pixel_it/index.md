---
layout: project
categories: project
name: pixel_it
title:  Pixel It
author: Federico Lameri, Sudarshan Raghunathan
teacher: Massimo Banzi
module: cas1
course: Creating Tangible Interfaces
year: 2013/14
licence: ccbyncsa
---
In this project, the aim is to get children to understand, in a simple and straightforward way, the working of pixels in a display screen and their effect. The idea behind the explanation of
this principle is to get the child to draw any image on a paper with grids, each of the grids corresponding to a respective pixels. Then when this drawing is placed on the bed of sensors, this results in in the respective pixels lighting up.

Interface, interaction modality and user experience

To physically demonstrate this concept, we have two girds, each four by four, consisting of sixteen LEDs in one and sixteen light sensors in another. A paper of the same size as the boxes is provided with grid patterns in it, each corresponding to either one LED or light sensor.
When the child takes the paper with grids in it and colors each segment until he/she arrives at the shape they have in mind, the paper can then be placed onto the bed of sensors.Once this is done the LED’s mapped to the respective sensors, which have been blocked via the painted grids, light up.
This elucidates to the child the mechanizations behind the working of pixels on a screen. The interface is very intuitive and easy to use.
Research and development contexts

It is possible to add multiple features such as the possibility to animate using stop-motionesque overlay of multiple images to create an animation. It is also possible to have a glass paper clip which can act as an switch.
Technology

We have handmade a matrix of LED’s and light sensors which are soldered together and then we can use each light sensor as an input to the LED(s).The output is achieved via drawing sheets which are outlayed in a grid pattern.Coloring each grid in the desired shape will help the user realise their shape via the pixel like LED’s on the output side.
To achieve this, we used an arduino Mega which was the only chip capable of handling the number of pins we needed (32 in total).We used a total of 16 analog and 16 digital pins for the light sensors and LED’s respectively. A laser cut box was used to encase all these items together and display them. A thin layer of translucent art paper covers the LED’s to give them the feel and effect of real pixel art.
The division containing the drawing paper is placed next to the sensor so that the user can draw the picture and immediately place it upon the sensor to get the respective output. The ergonomics of taking the raw material, using it, applying it to an input and seeing the output in form immediately is very gratifying.