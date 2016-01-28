---
layout: project
categories: project
name: enjoy_the_time
title:  Enjoy The Time
author: Marco Lurati
teacher: Andreas Guys
module: cas1
course: Programming Interactive Objects
year: 2013/14
licence: ccbyncsa
---
The clock is focused on the actual minute to transmit to the users the feeling that he cans enjoy the time. By focusing on that minute, it’s like if the time stops and you are not late or early. The clock shows all the minutes as small circles: on the left side the passed one from the beginning of the day (00:00) and right the lefts one (until 24:00). In the middle the actual minute is a big circle. The hour and the second needle are small points that turn around the minute circle as a normal clock.
The idea came from the “Clock Tower” in Venice: a old character rings the bell 2 minutes before the full hour to underline the past time, and a jung character 2 minutes after underlining the future time, but it never ring at the full hour.

Interface, interaction modality and user experience

The clock works on the computer and could be used as background or as screensaver. The central part is very similar as a normal clock witch is readable as a needle clock for second and hour. Minutes are indicated as text in the center. The user cannot interact with the clock, he cans just read the showed time.
The background color change randomly every minute to emphasise it and the fact that each minute is different once from the other. It also make the clock more dynamic.
When the minute change, the central circle moves and adds itself to the left pile of passed minutes. During the motion he changes its size from big to small. At the same time the next minute came from the right pile and move to the center of the screen by passing from small to big size.
The design is really clean and simple with only round shapes. The only text is the minute indication in the center of the screen. It cannot be customized. The size of the circles are automatically adapted to the screen size.
Technology

The code was developed with processing software. The project is based on the library controlP5, which allows through Control Bars to adjust the color of three rotating circles around a point, has been established starting color for each circle but can be changed as desired. The rotation of these three elements is given by a different variable for each one of them, and inspired by the starting color of each circle, red is fast, green has an average speed while blue is very slow.
Research and development context

The project could be used as screensaver or background in multiple device (smartphones, computers, tablet, …). It could be developed to lear how to read a clock by using groups of circles that graphically allows to understand the relation between seconds, minutes and hours.