---
layout: project
categories: project
name: the_binary_game
title:  The Binary Game
author: Mona Diab, Seena Peethambaran
teacher: Massimo Banzi
module: cas1
course: Creating Tangible Interfaces
year: 2013/14
vimeo: 164574125
licence: ccbyncsa
---
“The Binary Game” is designed to teach children the binary system in an easy fun way. The LCD displays a decimal number between 0 and 15 asking the user to provide the binary representation of this number by switching on and off 4 small LEDs. The game runs using the famous super Mario sound effects for the different interactions.

Interface, interaction modality and user experience

The binary game is a physical L shaped box made from plywood. The user can play and learn numbers with the game by using the switches. By changing the switches’ state, the LEDs switch their state accordingly (on/off) and the correct answers are identified by different music tones. The LCD displays the game’s feedbacks as well as the numbers in decimal to be converted. The game has a simple user interface for children of even small ages to play around with. It is user-friendly, easy and compact. The game includes only four switches, which minimizes the confusion of the player. LEDs are either on or off to indicate the binary number. In this game, there are no wrong answers; the child keeps trying until he gets the correct combination. Furthermore, gaming sound effects are accompanied all interactions to create a more appealing atmosphere. If the game was not played for a long while, an intro music sound is played to invite children to interact with the game.
Research and development contexts

The project’s aim was to build a game entity for a technological exposition (museum) for children below 13 helping them to learn more about digital concepts, which are present in our daily life in a simplified manner. Also the entity was to be developed with a minimal cost in order to facilitate its reproduction by small-scale establishments.

Digital technology is an inevitable part of our daily life. It is based on the binary system. Hence the concept behind the project was to help students understand the basics of binary system by understanding the conversion from decimal numbering system up to 4 places in the binary system representing numbers from 0 to 15. As each unit in the binary system has two states “0” and “1” which is digitally understood as ON and OFF, we used buttons and led lights to represent the ON and OFF state. Moreover, 8 bit music with different tones for the different states of the game, was added to provide a auditable feedback along with the visual one to engage children more.
References

The Binary Game Page
Technology

The binary game is a physical game for children to learn about the binary system for numbers and conversion from binary to decimal using arduino. An arduino Leonardo kit has been used to build the system. The code has he following functionality
1. Display LCD :
Using the software serial library, messages are written to the 16X2 Sparkfun LCD display.
a. Display message indicating the start of the game
b. Display the number to be converted
c. Display interactive messages for the users
Each time before displaying a message the clear function is called to clear the message displayed before

2. 8-bit music using the Piezo
a. Start of the game : Function- playNearMusic()
b. Switching on the LED : Function- playON()
c. Switching off the LED : Function- playOFF()
d. Correct Answer: Function- playCorrect()
These are output in analog mode to the Piezo and the piezo plays the different frequencies. Each note is defined as constants and 4 different melodies formed from these and stored in an array.

3. 4 LED bulbs combined with 4 switches that the represents the 1 and 0s
4. Validation for the game : Checking whether the binary combination is same as the decimal number displayed and based on that turning ON and OFF the led.