---
layout: project
categories: project
name: pin_jukebox
title:  Pin Jukebox
author: Consuelo Keller
teacher: Massimo Banzi, Innocenzo Rifino, Diego Rossi
module: cas3
course: Designing Advanced Artifacts And Networks
year: 2011/12
licence: ccbyncsa
---
The Pin Jukebox is a physical device that brings tangibility back to the ritual of listening to music. Within this system each digital music file (a song or a collection of songs) is represented by a round, three-dimensional disc, whose reference are the classical pins with artwork related to a band, i.e. objects with a strong relationship to music in the collective imaginary. The user is able to freely move and arrange those elements on a flat surface and control the music via functional pins.

Interface and interaction modality

The user interacts with his music collection by manipulating physical objects. The interaction takes place on a flat, translucent and slightly reclined surface on which the user can easily move and arrange the pins connected to the music as well as the functional pins. The surface has both an active and an inactive area. For playing music the user has to move one or more “music pins” into the active area and choose one out of three “playing pins” available (“play in sequence”, “loop”, “random”). The system is based on proximity, so that it will start playing the “music pin” more close to the functional pin and then go to the second one and so forth (except for “random”). To pause or stop the music it is sufficient to move the functional pin outside the active area. If no changes to the configuration of the pins in the active area occurred, when the user places again the functional pin the music will continue to play from where it was paused, whereas if changes were made, the system begins a new playing session. A forth functional pin allows to control the volume by a rotational movement.
Technology

The system uses the computer vision framework reacTIVision for tracking fiducial markers attached under the pins.
The Pin Jukebox has the shape of a four-sided truncated pyramid that can be positioned in two ways allowing for different angles of inclination. The structure is made of laser cutted Plexiglas glued together and holded in place by 3D-printed elements. In the rear it holds a box with apertures that hosts a digital camera (Sony PlayStation Eye). The front in made of transparent acrylic with a grid of small, strong neodymium magnets in the back. The single pins are 3D-printed and have a single neodymium magnet embedded inside and a custom reacTIVision fiducial marker on the back. The “music pins” are customized on the front by visuals depicting the music they represent while the functional pins have the symbols of their functions engraved in the surface.
The camera is connected to a computer via an USB cable and transmits the images of the single fiducials attached to the pins to a program written in Processing using the custom TUIO library as well as the Minim audio library to manage and control the music output.
User experience

In storing, browsing and listening to music in digital format, on different devices or in the cloud, the tactile experience that went with listening to vinyl records (and even CDs), or composing a mixtape went lost. The Pin Jukebox aims to compensate that in offering a tangible system with physical objects to playback a digital music collection. The pins can be collected, displayed, donated, exchanged, customized etc.
The enjoyable multisensory experience can be appreciated alone or together with other persons by a large audience since no special knowledge is needed.
The device is best placed on a table or on a similar horizontal surface to allow easy access and manipulation.
Research and development context

The system bears the potential to be developed towards different usages. One possible approach could be to position the product in the DIY segment (print and personalize yourself your pins etc.), an other could exploit the fact that it is possible to create unique, custom fiducials markers, so that scenarios including limited edition pins, pins that perform also as concert tickets etc. could be envisaged.
References

Kaltenbrunner M., Bovermann T., Bencina R., Costanza E., (2005) „TUIO – A Protocol for Table-Top Tangible User Interfaces“, in: Proceedings of the 6th International Workshop on Gesture in Human-Computer Interaction and Simulation
Reas C., Fry B., (2007) Processing: A Programming Handbook for Visual Designers and Artists.