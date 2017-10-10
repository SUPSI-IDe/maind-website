---
categories: project
name: server_maestro
title: Server Maestro
author: Alessandra Angelucci, Abrar Burk, Nicolò Calegari, Rebecca Guzzo, Asanka Withanaarachchi
teacher: Andreas Gysin
module: cas1
course: Programming Interactive Objects
year: 2015/16
vimeo: 188829801
licence: ccbyncsa
---
## Abstract

The project’s goal is to represent how any number of machine can be used to collaborate together in order to create a meaning between sounds and visual. 
Through the prototype the audience will experience how the music can create random sized images/pixels in any device connected to the network and how this images move from one machine to the other, repeating their “C major” sounds, back and forth.


## Interface and interaction modality

Server Maestro is a perceptual digital project which involves Physical computers, with potentially no limitation in terms of concurrent connections (this prototype relies on a local network and has not been stress tested). One computer will work as the Server and all the others (including the machine used as the server) can be used as client device. 
The program interact with the PCs which are connect to the relevant server by passing through the image slices from screen to screen.


## Technology

The program business logic runs on Processing language version n 3. The codebase is made by two main scripts:

The Server code

- Creates the Server of the network.
- Generates the Debugging window.

- Sends “Total Width” of the screens and the “ Offset of the X Position” of each Pixel to their clients.
- Receives  the “screen Width” of each client when a new connection is made.
- Update the “Total Width” from the clients who leaves the connection.


The Client code

- Connects to the Server
- Receives the “Total Width” of the screens and the “ Offset of the X Position” of each Pixel from the server.
- Generate sounds when each key is pressed using the SoundCipher library.
- Generate random size pixels (which moved in random speed)  from the Image which is in “Data” file when a key is pressed. 


The following Libraries needs to be imported to each PC before the codes are run:
The Server :  Network Library 
The Clients : Network Library

SoundCipher ( Can download via : http://explodingart.com/soundcipher/download.html)
		
## User Experience

The user will have the opportunity to see how these pixels are moving with a random speeds while repeating their relevant sound of the Key while passing from one machine to the other. The key concept is to recreate the path of the single note letting it travel back and forth into the connected screens. Pressing a key between 1 - 8 the user would be able to play a note from the “c Major” sound, generating a random size pixel representing the sound itself.
If a user disconnected  a client machine from the server all the pixels which were in that screen would be transferred to the previous screen on the left of if. Every note that had been created never get lost, it simply moves.
Pressing “s” button the user would be able to save a image of the screen in that exact moment.


## Research and development context

The starting point for this prototype has been the idea of modularity and the concept of interaction as involvement of other people, calling them to the action with their personal devices. The idea of network and people engagement makes plausible different scenarios for future development in different fields. First of all the marketing field could be investigated: a brand could call its clients to the action into some prize contest just as an action of brand-awareness. Other potentially interesting fields could be the technical-musician or the artistic field, trying to investigate the aspects of the real time performance combined with music visualization.