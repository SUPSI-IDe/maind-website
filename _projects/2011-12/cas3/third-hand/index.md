---
layout: project
categories: project
name: the_third_hand
title:  The Third Hand
author: Carlos Velasquez
teacher: Massimo Banzi, Innocenzo Rifino, Diego Rossi
module: cas3
course: Designing Advanced Artifacts And Networks
year: 2011/12
licence: ccbyncsa
---
The third hand is system designed to turn a regular home into a “smart home” at low cost. The entire system is designed to be controlled from the access point of the home (the door), allowing the user to easily choose the mood and functionality of his home as he comes in. I go to my house every day; shouldn’t it know what I want?
Interface and interaction modality

The main interface for the system is the door lock. As you approach the door you notice that there is no handle, is a flat panel with a key hole, the handle is automatically deployed when it needs to be used.
When the user inserts the key, the door instantly recognized which user is the one that is trying to access the house, at this moment, the system is activated. The user has several options once he is recognized:

    If he simply inserts and removes key quickly, the automatic handle comes out, and the door unlocks without any changes inside the house.
    If he turns the key after is inserted, he can cycle thought the different profiles set for him.
    If the user is leaving the house instead of entering, he has the option to shut down all electronic devices inside the house as he leaves, to help reduce electricity consumption.

For example, John get to his apartment’s door that is currently using The Third Hand system, he inserts the key and see the display in the door turn on, he rotates the key twice and chooses game mode, as soon as John removes the key, the flat handle comes out and the door unlocks. As he makes his way in the apartment, in his game room, the lights automatically turn on, his computer gets started, and his stereo plays the music that he normally listens to while playing in his apartment. Now John can simply drop all his bags and say hi to his roommate, while his game room waits for him to get started. This can be applied to any device inside the house and set it to your personal profiles.

There are some extra features is the system, if you are coming in and your roommate is using certain devices that correspond to one of your profiles, as soon as you insert the key, it will inform you of the current activity inside the house, at this moment the user can choose to override the other’s person devices or simply remove the key to unlock the door.
The key can be programmed at home, meaning you can create custom keys for other people with their unique profiles for usage or restrictions, for example the key that you give to your girlfriend is different than the one you might give to your mother.
Technology

The system is based on Arduino. The user recognition is done using RFID tags for the keys and a RFID reader at the door. The modules also use Arduino as the controller, which allows to turn on/off devices and to control certain aspects of each one of them. The modules and the door communicate through a wireless network created with xbees. Most of the parts needed for the creation of the system can be 3D printed, including the modules and keys.
User experience

The third hand is a system designed to make the access to your home more enjoyable. The system takes your home to the next level, converting it to smart home without spending large amounts of money. I will help you accomplish all the mindless tasks to spend less time preparing and more time enjoying.
Another important aspect is the power consumption function of the system, which will help you make sure all devices are turned off, without having to check every time you leave, with the Third Hand, all you have to do simply turn a key as you leave your home.
The system is very intuitive and will not take any extra time to access your house as it would for a normal door.
Research and development contexts

A system for either personal or group use. The system is meant to be used for the home, but it could easily be adapted to other scenarios that require device management. It could be develop to be turned into a service to provide different tools and even remote communication or manipulation. Through research and prototyping, we can see that the automatic handle feature is effective and changes the experience by not seeing the ordinary handle that has been used for centuries.