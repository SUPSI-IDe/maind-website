---
categories: project
name: hangoutable
title: Hangoutable
author: Thoraya Binzagr, Giulia Pignataro
teacher: Massimo Banzi
module: cas2
course: Designing Advanced Artefacts
year: 2014/15
vimeo: 192597769
licence: ccbyncsa
tags: featured
---
## Abstract

Hangoutable allows the user a quick and hassle-free way of coordinating real-life hangouts with friends. It utilises a simple visualisation system composed of 6 basic activity types in order to provide a quick overview of what everyone in a group is currently in the mood for.
This not only facilitates linking up with buddies who are merely free to hangout, but it also allows the user to identify which friends in the group have selected hangout types that match their own. 

Hangoutable is suitable for friends with busy or varied work/study schedules in the need of facilitating/optimising the coordination of their plans in order to make the most of their free time. It is also ideal for individuals with familiar relationships where permission to hangout no longer requires an explicit invitation. And it’s perfect for spontaneous, on the go, and last minute planners.

## Interface and interaction modality

A Hangoutable board is a physical artefact connected to a group of other Hangoutable devices that communicate to one another via wireless network. The general interaction process aims to provide a simple means of communication that serves to facilitate the coordination of real-life hangout plans between individuals in a group who identify one another as close and/or regular friends.

Device structure and communication process

A single Hangoutable set is made up of a central control area that accepts user input in order to send out messages from ‘home’ via Wi-Fi. Initially, each set is unboxed with a number of detachable palm-sized modules that are pre-programmed to receive messages from ‘home’, as sent from the central control area of their original Hangoutable set. However, the goal for each Hangoutable owner is to exchange the detachable modules that were first included in their box with other modules obtained from their friends.
As a result, each user would ultimately end up with a Hangoutable board populated by new modules receiving and displaying their friends’ statuses remotely. This would essentially allow each small module to become the portal through which its original owner can share their activity status with their selected group of friends.

Hangout types

At the core of the Hangoutable experience is a visualisation system composed of 6 basic settings designed to communicate ‘hangoutability’. The central control area on each Hangoutable board allows for the selection of one setting at a time, and relays the selected setting for display on each of the boards’ respective remotely linked modules. The 6 basic hangout types were derived to accommodate for a set of discrete options that exist in real-life situations. The options do not address descriptive subtleties such as moods or feelings that may underlie each hangout type (ie, romantic, cozy, adventurous) as such details can create ambiguity by failing to offer specific enough options for the concretisation of plans. 
The proposed settings are entitled  “take me out”, “either way”, “come over”, “quick break”, “alone time”, and “incognito”. “Take me out” encompasses all ‘outings’ that would require one to leave their own home. This option is dependent on a group’s regular habits as it could accommodate to a more explicit description for outings such as partying or eating out, but would also be applicable to going to hangout chez a friend- specifically as a response to the “come over” selection. “Come over” relays a general desire not to participate in any activities beyond the confines of one’s own home, but would also entail an open invitation for others to come over, and would naturally be applicable to a “take me out” or “either way” request. “Either way” would allow the user a more undecided stance, in the event that they would like to engage in a social activity regardless of the proposed setting. “Quick break” implies a brief or temporary time limit to the open invitation, allowing for better utilisation of spare time through a short, quick visit. “Alone time” is a setting that communicates a clear ‘do not disturb’ type of message to other group members, so they are made aware precisely when the user is unavailable and should be given their peace and quiet. “Incognito” offers a sort of anonymity, and may be seen as a non-explicit form of unavailability, whereby the user is either implicitly unavailable to hangout (ie. still at work) or unprepared to share a hangout status with the group.

Response button

In addition to the ability to communicate ‘hangoutability’ to other group members, a user can also seek to obtain a response from specific people in the group through a ‘pinging’ process. This can be ideal if a person would like to receive a response for reassurance before committing to an open invitation, or to invite or address a specific person to hangout. The communication process would simply require the user to press the top of their desired friend’s personal module and a pulsating light will appear on both the sending and receiving person’s modules, indicating a pending request. To respond, pressing the same area again would change the light from a pulsating to a constant light. A third press would reset the function and switch the light off. This interaction is disabled for ‘unavailability’ settings (“alone time” and “incognito”).
ID-ing the modules
Though the device itself takes advantage of wireless network communication and other digital and electronic solutions, the interface and interaction of Hangoutable devices aim to remain completely usable and accessible regardless of the user’s technological capabilities. As a result, a fun, simple, and non-technological solution was chosen to define and identify each user’s unique identity once a module is passed on to its new owner. Ultimately, the use of a tactile interaction that involves ID-ing each module through applying stickers was selected as being versatile enough to include both textual and graphic descriptions in a way that is approachable to the layman, fun, and non-discriminate of artistic capability. 


## Technology

A single Hangoutable set can only fulfils its purpose within Hangoutable’s interaction experience by being part of a networked group composed of a minimum of two Hangoutable devices. As a result, two Hangoutable prototypes were built in order to demonstrate this interaction. Each device runs on an Arduino YUN board, communicating to one another by sending and receiving data over a local wireless network. This communication was made possible through a process of publishing and subscribing to a remote server using the MQTT library and its provided tools and protocols.

Upon starting up, the Hangoutable device is initialised to the ‘incognito’ setting where the Adafruit Neopixel RGB LED strip below the semi-translucent control area surface is turned off. The Hangoutable device is then programmed to await user input regarding their selection of hangout type. User input is registered upon making contact with one of 6 Tinkerkit touch sensors laid out under their appropriate hangout-type labels on the device’s central control area surface. The Tinkerkit sensors are connected to 6 inputs on a Tinkerkit shield that passes this signal to the Arduino YUN board. The touch signals are processed by the YUN so that each specific sensor activates its respective Hangoutable setting. The selection of such a setting would then activate an appropriate color on the Neopixel strip, lighting up the central control area surface with the appropriate color indicating the chosen setting of the ‘home’ Hangoutable device. 
This same setting is also published using MQTT library protocols to the remote server, to which the second Hangoutable device is subscribed. The received setting as sent through the server would then activate the chosen setting’s color on two RGB LEDs inside the detachable module that is connected to the receiving Hangoutable device.

4 out of the 6 available settings (all except the 2 ‘unavailability’ modes) allow for further interaction, in the form of a ‘ping’ and response. The interaction is initiated using a button at the top of each detachable module activates a white LED. The LED fluctuates in intensity upon the first press, changes into a solid light upon second press, and resets to its off state on the third and final press. The state of this ‘ping’ process is also updated via remote server using the MQTT library so that whenever any changes are made to either of the communicating detachable modules they are updated on both.
On this prototype, there are 5 ‘dummy’ modules (non-detachable), 4 of which with an RGB LED inside them. Whenever a Hangoutable set is powered on, each of the 4 modules has been programmed to simulate either a fixed hangout setting color, or to continuously alternate from one setting color to another over a fixed time interval.

The program uses libraries and code specific to Tinkerkit touch sensors and Adafruit Neopixel RGB LED strips. Each Hangoutable device is powered by two 5V power supplies (one for the YUN and one for the Neopixel strip).

## User experience

The Hangoutable device aims to create an experience for the user that can positively support values surrounding identity, friendship and social interaction. It seeks to give its users the opportunity to have a better solution for keeping in physical contact with friends, better social gathering matches, better utilization of free time, and potentially as a result, better overall personal and social satisfaction. 
The Hangoutable experience seeks to promote face-to-face interaction through the exchange process of modules between friends, as well as through its core purpose of allowing its users to spend more time with their friends.

The Hangoutable experience also places value on hands on interaction that is simple and intuitive by remaining accessible to all ages and backgrounds. It does this by making the interaction and communication processes manipulable by hand, utilizing basic, non-technological gestures readily available in traditional interaction (placing items on a board, selecting things by hand).

The interaction experience also allows for freedom in personal expression of identity by allowing the users and their friends to customize and illustrate their personality on the modules using stickers or drawings. 


## Research and development context

Upon its inception, Hangoutable was a concept that stemmed from an observation of real life scenarios and personal events. It has roots in some prevalent notions including ‘statuses updates’, ‘moods’ and ‘group messaging’.
However, instead of giving users a broad, chaotic form of sharing a vague variety of things, Hangoutable aims to address a set of issues specific to keeping in physical contact with friends in a modern world where many of us are on busy, ever-evolving schedules. Hangoutable aims to address an audience with a desire to make the most of their free time by spending less time figuring out plans with people so that they can actually spend more time being with people. It also seeks to maximize the quality of the time spent through a system for matching desired hangout activities.

Some of the archetypal scenarios observed in real life that contributed to the formation and development of the Hangoutable concept include:
Having wasted a lot of time just to find someone who is available at this point in time
Having wasted a lot of time to find someone who is in the mood for the same thing 
Having been confused by lack of clarity, coherence and overview in group messaging
Having forgotten to inform some group members / been forgotten to be informed by others of plans
Having friends that show up unannounced just to check if someone’s there
Having felt pressure to change plans when friends’ plans do not suit our own personal desire
Having to find last minute plans when mood/plans change
Having been unable to find a quick solution when not much free time is available 

