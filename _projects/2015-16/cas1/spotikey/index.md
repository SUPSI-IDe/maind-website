---
categories: project
name: spotikey
title:  Spotikey
author: Aris Dotti
teacher: Enrico Bassi
module: cas1
course: Digital Fabrication
year: 2015/16
vimeo: 147439290
licence: ccbyncsa
---
## Abstract

Imagine the scene: you invite some friends to your place for a party. You use Spotify installed on your computer to manage the music flow. Your start playing your favorite song but your friend Jack doesn’t like it, so he takes control of your computer and skips the song. Sophie loves the last hit on the radio so she changes song once again. You are feeling frustrated: everybody is using “your” own personal computer and decides how “your” party should go on and finally not a single song is fully played.

Spotikey is designed to make you decide who can manage music playback, allowing only one persone to take control. Just like a physical key, only one person at the time can use it and without it you can’t control the media.

## Interface, interaction modality and user experience

Spotifkey is made of two physical objects: the controller and the physical key (cube shaped).
The controller is a small box which has to be connected via USB to the mac. It contains the whole electronic part and gives instructions to the mac. Essentially it is a box containing a single big button. This button is a 5*5 grid made by 25 electricity conducting objects (screws). Five of these are connected to a specific function on the chipboard, while other five to the ground of the chipset. In this way there are five open circuits that have to be closed to execute their function. To close them is necessary to connect a “function screw” to a “ground screw”. In this way each media player function is encrypted, since what the user see is a grid of 25 identical objects. 

To connect two screws, closing the circuit and executing function there is the need of a decryption key, which is represented by the second object. This is represented by a cube. On each face there is a grid of 25 holes. Two of them contain two connected screws. Placing this cube on the controller platform and pushing it makes the four screws to touch each other and thanks to the cube (used as a bridge), the circuit is closed and the function executed.


## Technology
	
I used Adobe Illustrator and Rhino to design each part of Spotikey. Then I used laser cutter machine to cut the chassis of both the controller and the key using 4mm plywood.  The physical button is made of sponge and has also been cut using the laser cutter.
Inside the controller I placed an holder to keep the big button in the middle of the object, which has been 3D printed in PLA.

A computer with Spotify installed and USB configured drivers is needed.


## User Experience

The controller is designed to be simple, symmetric and aesthetically pleasant. An engraved logo on the front tells the direction to use it. On it there is one single button which should prevent user from making errors.
The user has to simply place the key on the same sized button and push it a little bit. On each two opposite sides there is the same function, in this way while he is placing the cube he knows what the executed function will be.
Each function is represented by the according icon engraved on the key face.



## Research and development context

This project was designed following two main objectives. Nice aesthetics and easy to use. Probably the key could be better designed: it is quite big which makes it uncomfortable. Electronics could be simplified by using one single screw for grounding, instead of five.
On the mechanical part, instead of screw (which have difficulties in touching each other and transmitting electricity) I could use proximity or brightness sensors.
