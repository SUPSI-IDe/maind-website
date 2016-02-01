---
layout: project
categories: project
name: primo
title:  Primo
author: Matteo Loglio
teacher: Massimo Banzi, Innocenzo Rifino, Diego Rossi
module: cas3
course: Designing Advanced Artifacts And Networks
year: 2011/12
licence: ccbyncsa
---
Primo (“first” in italian) is an educational toy for kids. It’s composed by a board, a RC car and a set of instruction-blocks all made out of wood. The whole scope of the game is to get the car from a point to another avoiding obstacles on the floor, and in order to move the car, children have to place instructions in the right way. The purpose of this toy is to teach the high-level abstraction of programming as a sequence of instructions at very young children. They are in fact controlling a machine by giving it a set of commands in order to solve levels.

Interface and interaction modality

The interface used to control the car is composed mainly by two parts: a set of blocks and a board. There are 4 kinds of blocks, different by color, shape and function. One is red and is used to get the car straight, then there is a yellow one for left and a blue one for right. The last one is a green circle and is used as a function; on the bottom of the board in fact there is a line disconnected from the regular sequence that is an independent set of instructions that can be recalled with this particular piece.
The board is a wooden rectangle with 16 holes on the top connected by a line and a red circular button at the end of it. After placing the blocks in the holes is only necessary to press the red button in order to see the car executing the instructions.
Technology

The board works as a voltage divider; is in fact an open circuit and in each block there is a resistor that differs based on the instruction that closes the circuit. Each hole is connected with an analog input on an Arduino Mega Board, and different instruction sends different values. The board then processes the input and sends an order to the RC car via radio using XBee modules. The toy car is built around an Oh_oh board; this was developed by David Cuartielles as a cheap programmable car and practically is an Arduino board with two DC motors. There is also a software library for it.
User experience

Primo is designed for children, and the most difficult challenge is to create something educational that is also fun to use. From a research in kindergartens the most appealing toys for children at that age are the ones that represent a challenge or a problem to solve. There were complex puzzles that children can solve in a few seconds and for us took like 10 minutes. The tactile component is also crucial: between all the toys the most played one was a wooden set from the sixties where you have to differentiate different materials like wood, plastic and so on. Children are learning from their sensorial experiences, and is probably for this reason that the most used toys were the ones made out of wood, a very warm and solid material.
This insights have been very useful in the development of Primo, the challenge aspect is reflected in the level solving, where the children is faced with different trials that ca be recombined in a different way every time. The whole game is made out of wood, the prototype has been made with a laser cutter and sanded for a pleasurable feeling.
Research and development contexts

The influence of Primo in the learning process should be tested on the long period, for the child it’s still a game, a bit like the LOGO turtle has been amusing for us when we were young. For sure children are put in front of a very simple machine and a set of instructions to solve real-world problems. It’s a simplification of something much more complex and articulate, but that was really the purpose. A lot of research is currently done in this field, from the Scratch language project to some physical product like pas-a-pas. The toy industry is also very eager to see some results to commercialize. 