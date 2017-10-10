---
layout: project
categories: project
name: ring_clock
title:  Ring Clock
author: Seena Peethambaran
teacher: Andreas Guys
module: cas1
course: Programming Interactive Objects
year: 2013/14
licence: ccbyncsa
---
The design goal was to visualise time. The clock is a ring clock where the time is displayed in the top centre of the clock. Similar to a gear system the hour circle, the minute circle, the second circle keeps rotating as time progresses. If an event in the google calendar starts at a particular time an alarm is generated and the event pops out from middle with increasing font size. The clock requires an internet connection to connect to Google calendar.

Interface, interaction modality and user experience

The clock can be displayed can be integrated with any monitor that can runs on processing environment. The clock can be used as an alarm clock for home. The user doesn’t have to open calendar and check for things. He can add an entry anytime using google calendar and get the reminders at home. The clock is a quick glance and i can see the time quickly similar and help children who are still learning how to read time like a digital clock.
Technology

The clock is created by first translating the axis to the middle of the frame. Then the axis is rotated to the current hour(in 12 hr format). From there the numbers are written from 1 to 12.. Then the point returns to the middle of the frame and the axis is rotated to the current minute and the numbers are written from 1 to 60. Similarly the seconds. The second as it progresses from 0 to 60.
Using google calendar apis and the google credentials of the user a connection is established to the google account. The events from the users calendar are red and stored in array list of events.
At every frame the application checks if there is any event in event list with the start time as the current time. The event pops in from the middle of the clock with font increasing font till a maximum size is attained.
Research and development context

The design concept was to visualise time. Time is actually moving away from us and man is in a race against time. Hence the approach to show how time is actually moving forward. Mechanical clocks have gears which turn in the anti clockwise direction for the clock to move in the clockwise direction. So the clock moves in anticlockwise direction showing how time is actually slipping away.
Unlike yesteryears these days everyone has many tasks to do and many reminders on phone, on email applications and of course the classic alarm clock. Hence the google calendar which is available to users anywhere anytime was integrated to the clock so that the reminders or alarms can be generated from the clock without programming the clock separately.