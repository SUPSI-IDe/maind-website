---
layout: project
categories: project
name: worldclock
title:  WorldClock
author: Carlos Velasquez
teacher: Andreas Guys
module: cas1
course: Programming Interactive Objects
year: 2011/12
licence: ccbyncsa
---
WordClock is an application that indicates the time by displaying a unique message for each hour of the day. With a simple click you can access the second mode of the clock, which displays the exact time in words. In addition, the background also tells the time by never repeating and changing color every second.
Interface and interaction modality

WordClock is an application that can be run directly in a device or straight from the web. The clock consists of two different modes: Message mode and Time mode. When the application is opened, it is in Message mode by default. Message mode displays time with a phrase instead of the literal time, displaying a unique message for every hour of the day. There are a total of 24 messages in one day. The messages’ type varies, some are jokes or references about the current hour, others are clues which try to say the hour without saying it.
The second mode is Time mode, where the time is displayed with the format hour, minute, second, but instead of displaying the current time with numbers like most clocks, it is displayed with words. For example, if the time is 09:11:20, then the clock shows Nine, Eleven, Twenty. The user can switch from one mode to another by simply clicking inside the clock, or by tapping if it is run in a touch screen.
The application uses the “Impact” font, who’s thickness makes the clock both readable and appealing. The last feature of the clock is background. The RGB (color) of the background is controlled by the time. The hours control the Reds, the minutes control the Greens, and the seconds control the Blues, this means that the clock never repeats a color during the entire day, producing a total of 86’400 different colors. This gives color a specific time of the day. The background is shared by both Message and Time modes.
Technology

The program is based on Processing and executed using OpenGL graphics. The application can be run in almost any kind of computer, and easily adapted to be fully compatible with any kind of Android devices. It can also be run in the web as a .html file in any browser.
User experience

WordClock is an application for personal use, targeted for entertainment and/or time reading purposes. It allows the user to perceive time in different ways. The user can read the exact time in words, or if preferred it shows a message to indicate the hour of the day at that time, all being part of a quite simple but yet beautiful design. It does not stop there: it also allows the user to go as far as to read time in much more abstract way by displaying the exact time as the color in the background, creating a much more unique time experience for the user.
Research and development contexts

It is an application for personal use, which could be massively distributed to run in almost any kind of device that supports internet or reads JavaScript. It could be developed to run as a widget or a front application in devices such as mobile phones or tablets. This program intends to allow the user to select different ways of perceiving time, suitable for the more literal to the abstract users share the same time with this clock. 