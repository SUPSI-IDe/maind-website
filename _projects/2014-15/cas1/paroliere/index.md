---
categories: project
name: paroliere
title: Paroliere
author: Giulia Pignataro, Vrinda Da Sacco
teacher: Massimo Banzi
module: cas1
course: Creating Tangible Interfaces
year: 2014/15
vimeo: 192595295
licence: ccbyncsa
---
## Abstract

Paroliere is a game in which players have to choose and compose words in a short time, in order to gain points and win the game. It is made with a wood board and different cubes that contain a single letter: the cubes must be fitted into a grid in a group of four, and if the order is correct and a word is recognized by Arduino, the player gains a point. A red led indicates the time, and fade down slowly in a minute. The concept get inspired by an old game called "Il paroliere", from which we maintained the name and the way to compose the words. 

## Interface and interaction modality
Paroliere is a physical artifact. Users can start a new game just pushing a small button, so the time count start, the red led turn on and it is possible to compose the words. A small box on the right side contains all the letters that users must pick, read, then put on the left grid. The lower part of the cube must be fitted inside the small hole in order to be recognized, and in the moment a correct word is read by the board, one green led turns on and the score increases of one point. People can control always the time left and have to compose more words as possible, when the led turn off is not possible to add words, and the score stay displayed for some second to allow the player to take note.
The second player can start the game in the same way, pushing the button and waiting the time count. At the end, players can continue to play other matches or can simply compare their scores to declare a winner.

The eyesight is really important in this game, because players have to recognize different letters on cubes and also control the time led. The memory play a fundamental role too, in fact user have to recall four letters words in their mind and compose it on the grid.

## Technology

For this project an Arduino Leonardo board has been used as the core of the hardware: we connected it with two breadboards in which we set a group of strip pin with two rods in order to create a "matrix grid". The strip pin were connected together with cables in group of four, so it was possible to distribute the power in a better way. To activate the game we use a pushbutton sensor that was set as an input every time it was pressed. For the time count and the scores we used two tipes of led: one red related to the millis count and six green related to the points the user obtain.

The sensor was connected to the Arduino board directly with cables and positioned on one side of the carter, while the leds were fixed on the breadboard on the right side, then on the Arduino pins with some cables.

For the cubes we used different types of resistor, from a range of 1000 ohm to 10000 ohm to distribute better the power of Arduino. Each resistor has been welded to connectors and cased with wood, in that way only the lower part of the connector was visible.
The code was written with the Arduino software and sent directly to the board with an USB cable connected with a computer.

## User experience

The game is quite simple to understand as there are some parts that allow user to understand how to play. First of all, we put the button in a visible side, so players can understand that they have to push it to start the game: if the button is not pressed, the leds don't turn on and there is no score calculation.
The cubes with the letters were modeled with a shape and a prominent lower part that fits perfectly into the grid, in that way users have a double visible suggestion of the way they have to use the letters.

The time and the points are displayed with leds and colors and help players to understand in an easy and fast way what is going on during the game. 

## Research and development

Paroliere can be used by adults and children, as it is a very simple game: adults can play alone or challenge friends, trying to create words as most as possible. Children can use the board too, having fun with their friends, or can use the game to understand and learn new words in a funny way and with the help of a visual effect.

## References

We used "Il Paroliere" as inspiration of our work. The product is not purchasable any more but a description is visible here:  http://it.wikipedia.org/wiki/Il_Paroliere.
