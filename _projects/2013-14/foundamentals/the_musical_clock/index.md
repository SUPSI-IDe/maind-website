---
layout: project
categories: project
name: the_musical_clock
title:  The Musical Clock
author: Orly Golan
teacher: Andreas Guys
module: cas1
course: Programming Interactive Objects
year: 2013/14
licence: ccbyncsa
---
The musical clock is a code project that attempt to represent time by music.The sounds that was used based on the quant circle, that represented by accords. The time was divided as the following: second – from 0 to 60, minutes – from 0 to 60 and hours from 1 to 12. considering the minutes and second, the 60 minutes or second divided to groups of 12, and in each group the tone scale of the sound is getting higher (from low to high numbers) the sound repeat in a loop and restart every new minute and second. The sound of the 12 hours repeat in a loop every time the clock hit one o’clock.

Interface, interaction modality and user experience

The project is a processing framework based. The Musical clock has a simple interface that represent the sound which is the main feature of the project. The musical clock is an application that can be run on a PC, and the user can listen to the current hour. The purpose of the design is to display in most minimal way the sound of the Musical clock project. One thin black line crossing the screen display in the middle and each second represent the sound as an graphical equalizer.
Technology

The code is written in processing framework. The code generate sound out of time. The code convert (using MINIM library) numbers to notes. The number is used in a generator that convert the number to a frequency that uses in the “playNote” function (in MINIM library). Each hour, minute and second has different chord that calculated in a function and converted to a frequency using the generator.
Research and development context

The project could be used as screensaver or background in multiple device (smartphones, computers, tablet, …). It could be developed to lear how to read a clock by using groups of circles that graphically allows to understand the relation between seconds, minutes and hours.