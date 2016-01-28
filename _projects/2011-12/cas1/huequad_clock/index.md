---
layout: project
categories: project
name: huequad_clock
title:  HueQuad Clock
author: Consuelo Keller
teacher: Andreas Guys
module: cas1
course: Programming Interactive Objects
year: 2011/12
licence: ccbyncsa
---
This clock built with Processing is a time visualisation based on colour and form changes. In HueQuad Clock hours, minutes and seconds are represented each by a different semi-transparent square that changes hue and grows in accordance to time. Each second of the day is therefore depicted by a precise combination of colours and forms. At a mouse click, a digital clock appears and can be moved around. The overall aesthetics reminds of the work of designers and artists famous for their researches on colours and forms, such as Josef Albers and Johannes Itten.
Interface and interaction modality

The clock generates a visual experience for exploring time through colours and forms combinations. It can be enjoyed on every device with a screen able to run a Java-based programs and an internal clock system. The clock and the visualization operate autonomously.
Looking at the squares the user can get an approximate knowledge of the actual time, but the clock is not meant as a precise time displaying device, although it offers the possibility of an exact indication of time by a simple user interaction: with a click of the mouse, a digital clock showing the current time in hours, minutes and seconds is revealed. Maintaining the mouse button pressed, the small digital clock can be moved around the screen where most suitable.
Technology

The clock is built with Processing 1.5 and uses the OpenGL library in order to enhance the graphics.
While the hue of each square is mapped to hours, minutes and seconds respectively, saturation and brightness are set at 100% and the alpha value (transparency) to a middle value of 127. The size of the background surface in grey represents the maximum extent that each square will reach (23 hours, 59 minutes, 59 seconds respectively). The squares representing hours, minutes and seconds are layered on top of each other, while the square of the seconds is on top. The font of the digital clock is Helvetica Neue. The mouse cursor is deactivated for not interfering with the image.
User experience

The clock provides a pleasurable visual experience that can be enjoyed by a large audience. It can be appreciated alone or together with other persons. The user plays manly the role of the viewer, but is given the possibility to interact with the clock with a simple gesture (mouse click) if a precise time information is needed.
Research and development contexts

The context of use is very broad and not limited to a specific situation. The clock could be developed as an application for desktop computers or for mobile devices like tablets and smartphones, or could be embedded in a standalone device for experiencing time that would for example hang on the wall or rest on a surface.
References

Albers J., (1963) Interaction of Color
Itten J., (1961) Kunst der Farbe: Subjektives Erleben und objektives Erkennen als Wege zur Kunst
Reas C., Fry B., (2007) Processing: A Programming Handbook for Visual Designers and Artists 