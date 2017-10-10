---
categories: project
name: mynetlight
title: myNetLight
author: Aris Dotti, Carola Bartsch
teacher: Habits
module: cas2
course: Think real, design wonder
year: 2015/16
vimeo: 154829521
licence: ccbyncsa
---
## Abstract

After waking up in the morning, the first difficulty of the day is getting out of the warm and enfolding bed. The right motivation could be to know that your near friends or family members are already up. myNetLight communicates exactly this information.

myNetLight is a modular wall lamp that consists of a central cylindrical lamp and several small modular cylindrical lamps. These small lamps can be fixed to the central lamp or to the other small lamps using a connector. The central lamp has 5 connectors and each of the small lamps has two connectors in order to provide a modular system that can be assembled in a personal way.

The central lamp is the base of the system containing power and controls and representing the user. Each small lamp is representing a member of his personal net, a friend or a family member. Every module has a white light on the front and each of these small lamps has a (selectable) coloured background light. If the corresponding friend or family member already got up, the background light will be shining. 

The design of the lamp represents a network with the big central cylinder and the small cylinders connected to this or to each other by two small aluminium tubes. If the whole lamp is turned on all cylinders are illuminated by the white front light. The status of the backlight is independent from this, it is only turned on if the corresponding friend already got up. As the small lamps are mounted 2cm away from the wall, the background light creates a smooth coloured light effect on the wall.

## Interaction

The whole light can be turned on with a swiping gesture from the left to the right just like opening the curtain to let the morning light in. This gesture is also the signal that will turn on the corresponding background light at the user’s friend’s house. Swiping from the right to the left will “close the curtain” and turn off the white light but not the background lights, which will remain turned on. 

To turn off the whole lamp including the background lights another gesture is necessary: holding the hand for more than 2 seconds in front of the central light or otherwise actuating the main switch. This will only effect the user’s own lamp, it will not turn off the background light in the friend’s house, which can only be switched off by himself.
	
## Technology and Hardware

The single modules are made of plastic material, the connections by aluminium tubes. The white light is provided by warm white LEDs or OLEDs, the background lights by RGB-LEDs. Two infrared sensors capture the gestures, an additional light sensor ensures that the white light turns on only if the environment is quite dark.  

The prototype of the lamp is made with laser cut acrylic glass, 3D printed pieces and aluminium tubes. An Arduino board controls the Neopixel RGB-LEDs, another one provides the necessary 5V power. Two infrared sensors capture the gestures which are translated by an Arduino program using the EEPROM-library, while the RGB-LEDs are using the Adafruit NeoPixel-library.

In the prototype the RGB-LEDs provide the coloured light as well as the white light. They are connected in series; excepting the 24 LED’s of the central lamp, every 10th LED is programmed to be a coloured light responding to a different interaction and remaining turned on if the white light is switched on and off by the swipe gesture.

## User experience

myNetLight is a functional and a communicating object in one piece. It can be used as a normal wall lamp, but it also gives the information, whether friends are already up and also communicates to them when the user is getting up. Knowing if the friends are got up, can motivate the user to get up too. Another experience is to let in metaphorically the day light with the gesture which remembers the action of opening the curtain.

The user can leave on the backlights, which represent his friends or family members, until the evening or until leaving the house, being in this way accompanied by them.

## Further development

The lamp should be connected to internet by wlan in order to communicate the signals to the lamps in the friend’s houses. An accompanying App instead will be connected to the lamp with Bluetooth and gives the possibility to choose the colours of the background lights and to make general settings such as connection to internet.
