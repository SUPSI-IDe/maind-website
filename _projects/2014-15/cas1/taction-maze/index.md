---
categories: project
name: taction_maze
title: Taction Maze
author: Soraia Binz, Hanne Eriksen
teacher: Massimo Banzi
module: cas1
course: Creating Tangible Interfaces
year: 2014/15
vimeo: 192507202
licence: ccbyncsa
tags: featured
---
## Abstract

Taction Maze is a tabletop game that requires two players to cooperate in navigating through a conductive maze using a robotic arm that moves along cartesian coordinates. One player navigates by incrementing only X values, while the other player only increments Y values.

The maze is laid out using conductive copper pieces that allow Arduino to detect when the robotic arm’s metal tip is touching the maze perimeters, giving off a blinking red light when this happens. The novelty brought to the classic maze game lies in the concept of having two people work together in order to reach the end goal while avoiding the maze perimeters. This brings a new challenge to the traditional game, and can also be a fun way to introduce the use of the X and Y system to children starting to learn about the cartesian coordinate system.

## Interface and interaction modality

The game interface is designed as a tabletop game, made with plywood and plexiglass - with an attaching robotic arm driven by two servo motors. The maze is drawn out on a plexiglass surface using conductive copper tape. The copper tape is attached to wires that send a signal to Arduino every time the robotic arm’s metal tip comes into contact with the copper sensors. The maze surface is backlit with a blue led, indicating that the game is turned on. Each player has two buttons to operate - left and right on both the X and the Y coordinates. The game flickers a red light every time the players touch the cooper maze perimeters.

## Technology
The software for this project was developed for and runs on Arduino. Some preparatory research was conducted with the use of Processing. The design of the game was produced with Adobe Illustrator and Rhino. 

## User experience

The maze has a start and an end goal, and the need to navigate through the maze without touching the conductive areas. The user experience encourages cooperation by requiring two players to work together to reach the finish point. The game is simple and intuitive as it does not demand any other actions than to plug in the USB cable and start pressing the X and Y buttons. 


## Research and development context
The initial idea for the project was to create a tabletop maze with a conductive surface, and to have two players navigate on X and Y coordinates using a robotic arm. The game was inspired by traditional mazes, but instead of the challenge lying in the complexity of the maze design alone, we wanted to introduce an added aspect that could step up the challenge as well as advocate a team player spirit that is based on working together as opposed to against each other.  There game has a lot of potential features that could be implemented  in upcoming versions of the prototype in order to enhance the interactive experience of the user. We envisage adding actions and behaviours including a «score teller» for every time the players touch the conductive area, as well as a timer to set a game end deadline.


## Hardware and electronics
2 servo motors - to operate the robotic arms
4 buttons - to control X right, X left and Y right, Y left
1 LED Red - to indicate when the robotic arm tim has come into contact with the conductive areas on the maze
1 LED Blue - to indicate that the game is running
1 Arduino Leonardo board
1 breadboard
conductive wires

## Code
tactionMaze_processingVis.pde
This processing code was developed to create a preliminary visualisation in order to simulate the physical implementation of the robotic arm. It uses inverse kinematics formulas to convert cartesian coordinates into polar coordinates. The user increments the cartesian target point using the arrow keys, and the software uses these values to calculate the angular value that the two joints on the robotic arm (shoulder / elbow) should rotate to in order to reach the given XY coordinates.

Inverse Kinematics code is based on example from Greg Borenstein's book 'Making Things See', Chapter 8 - under the section entitled 'Inverse Kinematics', pg 369

XYbuttonToAngleServo_final.ino
The core of this Arduino code uses inverse kinematics formulas to convert cartesian coordinates into polar coordinates. The players increment the target point using the right and left buttons placed along their respective axes (X or Y), and the software uses these values to calculate the angular value that two servo motors on the robotic arm (shoulder / elbow) should rotate to in order to reach the given XY coordinates. The code also controls the conductive sensors that are drawn out on the maze’s surface. When the metal tip at the end of the robotic arm comes into contact with the conductive surface, the completed circuit signal is received by Arduino and a red LED is turned on. A blue LED is also active throughout the entire game in order to signal that the game is running.

Inverse Kinematics code is based on example from Greg Borenstein's book 'Making Things See', Chapter 8 - under the section entitled 'Inverse Kinematics', pg 369


## Designs

The design of the Maze is made out of plywood, plexiglass and PVC, acrylic paint and clear varnish. The model consist of 6 parts: 2 robotic arms (plywood), box frame (plywood), inside frame (plywood), maze grid (PVS), maze surface (plexiglass), 2 containers for the servo motors (plywood). All the parts except the maze grid was designed with Rhino (the maze grid was designed with Illustrator).  The Maze surface is using a semi transparent plexiglass for the LED’s to be able to shine thought without seeing all the wires that is connected to the plexiglass surface. The whole model was put together with glue and 4 screws (for the servo motors). 
