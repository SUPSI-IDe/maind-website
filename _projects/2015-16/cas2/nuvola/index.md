---
categories: project
name: nuvola
title: Nuvola
author: Giulia Galli, Ginevra Rudel
teacher: Habits
module: cas2
course: Think real, design wonder
year: 2015/16
vimeo: 154829550
licence: ccbyncsa
tags: featured
---
## Abstract

The aim of the workshop was to develop an interactive object related to the waking up experience. We wanted to design an object that would wake the user while giving him information that might prove important for his day. 
We designed Nuvola, an interactive lamp, that wakes the user by means of sound and line in tune with the weather and provides a daily weather forecast. It was conceived to inform the user about the weather before he gets up and takes a look or opens the window. We found that being  waked by light and nature's sounds is a poetic way to start one's day. It may be helpful to know what the weather is like immediately on waking up: If the sun is shining you feel good and know that you may take your time and get up slowly while rain  may mean you have to jump out of bed because you need different clothes and an umbrella and will have to catch a bus instead of riding your bike or walking.

Throughout the project we kept the idea of the "lamp-clock" in the shape of a cloud. We thought this was a poetic way of representing the weather. The cloud being a symbol invoking meteorology, we developed the basic structure of a cloud shape in which the electronic components were to be inserted. We then applied a hood covering the cloud, thus making it appear more geometric and stylish. The coating consists of a pattern of plexiglass triangles applied on a cotton fabric. As the structure  allows the light to shimmer through, waking up becomes a pleasant experience.

The alarm system in the lamp is programmed via an app and via Bluetooth signals it receives as weather information. Depending on what the weather is like, "Nuvola" transmits colors ranging from yellow when it's sunny to purple with simulated flashes when a (thunder)storm is expected. The sounds emitted by the lamp are related to weather as well. Two motion sensors enable the user to see either if the weather will change in the course of the day or to turn the lamp off, depending on the way he moves his hand beneath the lamp. 

We tried to develop a functional object in a nice design associated with a pleasant experience for the user on waking up.


## Interface and interaction modality

The structure of the lamp consists of a stylish cloud which holds all the electronic components and is placed on a metal rod with a circular wood baseplate. The integrated electronic components give the user information about the weather 
by means of light and sound. Our object being a lamp and as several studies show that sound is a major cause of interrupted sleep, we decided to tie sound to light. Initially the user is awakened by the sound associated to the weather and later, as he wakes up, the light is on  and its variables such as color, intensity and frequency brighten his start as he learns about the weather expecting him.
The Cloud contains two infrared sensors. By moving his hand from right to left beneath the sensor the user can see if the weather will change during the day and by holding his hand closely beneath the cloud he can turn it on or off.


## Technology

To design the structure of the Cloud we used software Rhino and 1,2,3 Make. The elements were cut using a 4 mm plywood. Even the coating pattern was drawn in Rhino and subsequently cut by laser cutter.The material used for the coating is 4mm white plexiglass which was applicated on the cotton  fabric by means of double sided tape. 

The electronic components were inserted  in the Cloud: two infrared sensors, a speaker, three Adafruit NeoPixel Ring 16 x RGB LED (outer diameter of the ring 44.5 mm) and a Digital Habits Board.  The three neopixel rings allow for different variables in color and light intensity, depending on the weather. E.g. if the sun shines, the light is a warm strong yellow/orange, if there is snow, the light becomes a dim white and in a (thunder)storm it will appear as purple with simulated flashes for lightning, while the color blue is associated with rain.

The electric components were soldered to the Digital Habits Board by means of electric cables. The Digital Habits Board combine the power of Arduino with the possibilities offered by Bluetooth connectivity. The Board programmed by Arduino software is the heart of the device. It controls all the electronic components that are coordinated with the weather forecast and the user's movements as he decides either to switch the clock on or off or to look for changes in the weather.


## User experience

The user programs the cloud by setting the alarm time via a special app. He will be romantically waked by the sounds of nature and a colored light that informs him about weather conditions. It is an object that performs as a cute lamp and fits in pleasantly with the furnishing of a bedroom. We named our cloud "Nuvola" in Italian because it sounds romantic, while the English word "cloud" nowadays has a technical connotation.    
 

Research and development context

The project was developed within a well-defined context tied to the waking up experience. Our research focused on how to inform the user about the weather when he wakes up.