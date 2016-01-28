---
layout: project
categories: project
name: grannynet
title:  GrannyNet
author: Orly Golan, Lucia Rabago
teacher: Massimo Banzi, Giorgio Olivero
module: cas2
course: Designing Advanced Artifacts
year: 2013/14
licence: ccbyncsa
---
The GrannyNet project is offering a new communication system between grandmas and their family beloved ones. The project consist of two product connected to each other. One is the photo frame, that placed in the grandmother place, and the second one, is the patch blanket with a patch for each family member, placed in the family house. Usually, grandmothers keep the family members photographs in their house. Within this project, when the grandmother holds the frame of her beloved one, a notification is sent to the beloved one that grandma is thinking about him/her. If the grandmother caress the center of the frame a notification of ’93grandma wants to talk to you, are you available? ’94 is sent to the beloved one. The family members get the different notification on their patch blanket in their house, each one on their own patch (defined by knitted names on the patch). This kind of interaction makes the communication not instant, but holdback, so the family members can pay attention to the notification on their own free time. The new communication system used in this prototype attempt to cross time, language and age.
Interface, interaction modality

The GrannyNet project is physical computing project based on Arduino platform, which includes the software development, electronics and physical design of the objects.

There are two main interactions in this communication system. The first is “Grandma is thinking about you”. This interaction activated by holding the frame. The holding detected using the two capacitive sensor. When the grandma holds the frame the LEDs in the frame turn on and the message of “Grandma is thinking about you” sent to the blanket. This message display as lights that turn on on the patch. After the frame sends the message, the LEDs in the frame dim out to low power until the frame gets the notification from the blanket that the person saw that grandma is thinking about him/her. This notification activated by covering the patch while the LEDs on it turns on.

The second interaction is “Grandma is checking if you are available”. This interaction activated by caressing the center of the frame. The caressing detected by the two IR sensors placed in the frame. When grandma is caressing the photo of the beloved one, the LEDs in the frame turn on and the message of “Grandma is checking if you are available”is sent to the blanket. The blanket patch will blink, for positive notification the person will embrace the blanket and the message will be sent back to the frame. If the frame gets notification that the person is available, then the light on the frame will dim out, and a phone call will be activated. for a negative reply, the user can not replying at all, or turn the blanket upside down, in this case, a negative message will be sent to the frame, and the frame will blink for couple of seconds.
User experience

The frame shape is familiar and basic, mainly for addressing the target audience which usually does not embrace new technology. Moreover, we found that is necessary to design as close as possible to the old frame so it wont lose its value as a photo frame. The LEDs turning on and off slowly, with a small delay, for the grandmother to see the differences between off and on. The trigger for the interaction is simple and intuitive. The user experience was adjust after a short user testing. The blanket is a platform for more then one user at a time, each user can identify its own patch simply by name. The user experience is easy, intuitive and using the gestures the user already does with the blanket. 