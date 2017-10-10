---
categories: project
name: arctic_mocean
title: arctic mOcean
author: Thoraya Binzagr
teacher: Bill Keays
module: cas3
course: Designing Advanced Environments
year: 2014/15
vimeo: 192598848
licence: ccbyncsa
tags: featured
---
## Abstract

“arctic mOcean”  is an audience-driven interactive game that seeks to challenge the traditional notion of the static spectator within the theatrical performance. The concept aims engage the audience by allowing them to affect the show’s plot progression through their participation in a dynamic group-collaboration-driven game as part of the show.  In the example provided by the “arctic mOcean” prototype the audience is divided into two teams, with individuals in each team having to work collaboratively in order to manipulate waves to move icebergs towards the ‘goal’.  The team that manages to get more icebergs to the goal under three minutes wins.

The proposed game dynamic not only gives the audience the ability to occupy the stage through the game, but it also effectively creates a simple audience-produced variable that can be used to define the plot evolution (ie. each team can represent one of two sides within the plot: protagonist vs. antagonist)

“arctic mOcean”  was produced following a brief proposed by Cirque du Soleil for a winter-themed performance arena. The prescribed objective was to create an immersive experience designed to encourage audience engagement while placing  ‘ice’ and/or its composing characteristics at the centre of the experience concept.

## Interface and interaction modality

“arctic mOcean” is an audience-driven interactive game that allows its players to take part in a two-team game that encourages each team’s members to work together in order to score. The game provides the user with feedback through the use of a projection displayed onto the floor, and the interaction method to play the game uses physical human motion as an input.
This particular setup was specifically designed to reflect the inherent disposition within a theatrical performance arena, where the audience looks onto a horizontal stage area when watching the show. The game dynamic involves team members working collaboratively to manipulate waves in order to steer as many icebergs to the goal using their own silhouette reflection, which is captured via camera, run through a program and then digitally projected onto the stage surface as part of the game. The team that succeeds in getting the most amount of icebergs to the goal within three minutes wins. 


## Technology

The final prototype as exhibited for the final stage of the Designing Advanced Environments program uses a projection of the “arctic mOcean” game that is programmed and run on a processing application on a macBook laptop. The projection itself is projected onto the floor, using an angled mirror to transform the projected image from one for display on a vertical (wall) surface to one for a horizontal(floor) surface. The projection is displayed on an appropriately sized paper surface on the floor. 

The first step for running the game begins by illuminating the two spotlights placed behind each of the two teams. Each spotlight is directed towards the walls that will appear behind the game players to accentuate the contrast between their dark silhouettes and the white backdrop behind them. This specific lighting arrangement was chosen to accommodate for the exhibition’s small scale setup that included restrictions on spotlight quantity, placement and small room dimensions (venue lighting would be better equipped for a more accurate lighting scenario).

After the lighting is set up, two logitech C615 webcams, one dedicated to each team, capture the image of the players and send the live feed to the macBook via 2x 5m USB booster cables (one for each webcam). The image fed to the laptop is then used as input to the processing program running the “arctic mOcean” game.  The processing program that runs the game then uses processing’s Capture library to access the two video inputs, and passes the content frame by frame to the openCV library for processing. OpenCV then transforms the image to grayscale and applies a threshold filter to create a clear-cut black and white silhouette image and then extracts the image ‘contour’. This contour is then used to create and update an array of points in the box2D physics world. This array of box2D points can then allow the players to manipulate all the other items in the box2D world (where the waves and the iceberg reside).

The box2D physics engine then  handles the interpretation of the motion and collisions, and all resulting physics interactions are updated and displayed in the processing sketch. The processing image is updated in realtime and sent from the macBook via miniDisplay output to the projectors VGA input for the game participants’ display. The processing program also processes soundtrack and sound-effects using the integrated minim sound library. The sound-effects are launched by the program at appropriate times. The sound is output via usb to speakers.

## User experience

“arctic mOcean” is incredibly intuitive and easy to understand for players. In seeing their ‘reflection’ on the stage, they can instantly recognise that they are directly involved in the interaction experience taking place. After a quick phase of initial exploration they can quickly discover that their ‘reflection’ can interact with the elements inside the game using the same basic physical interaction they use in their everyday lives. Using their hands, their head, and  body, they can manipulate the waves in order to steer as many icebergs towards the goal to win the game. The score tally is clearly visible throughout the game as well as a countdown timer from 3minutes, clearly signifying the game objective. User testing of the prototype has indeed demonstrated that “arctic mOcean” requires minimum effort and explanation for use.

## Research and development context

In researching for the “arctic mOcean” prototype  the idea of challenging the traditional notion of the static spectator within theatrical performance was kept in mind. In order to stimulate audience involvement “arctic mOcean” references  both digital and traditional game interactions.  It takes from the success of digital gaming in its ability to encourage engagement through player participation in the definition of the storytelling progression. The experience also draws from traditional gaming interactions in their ability to utilise group effort within the team playing setting, i.e. within ice hockey, where players are required to pass the puck between one another in a collaborative attempt to get the puck to the goal. Another aspect that is referenced within the scope of team sport is its ability to foster competitive spirit and sentiments of allegiance within fan cultures and audiences. Particular reference is placed on classic examples of support during a game that involve crowds acting in unison,  ie. chanting or ’the wave’.

Within the contextual scope involving  ‘ice’, the “arctic mOcean” game dynamics and setting take from the motion of icebergs within ocean waves. “arctic mOcean” also reiterates this concept in its name by playing on the words “ocean” and “motion”. Inspiration is particularly drawn from a naturally occurring scenario in Antarctic marine nature where groups of Ocra (killer whales) work together in a highly coordinated attempt to produce targeted waves in order to prey on seals. This precisely orchestrated team effort, called “wave washing”, destabilises the seals as they seek refuge on floating icebergs. This collaboration-driven manipulation of waves is the source of inspiration for the gaming ‘tool’ that allows the crowd to interact with the game.

In researching similar projects, no other directly identical examples exist within the scope of live performance, nor ones that uses silhouette as an input in the exact same manner. However, similarities do exist within mapping and other analog input interactive installations, visualisations and projections that take place in public spaces. There are also conceptual similarities between the silhouette capturing process of the “arctic mOcean” prototype and kinect motion detection systems built for interactive projects such as the “The Treachery Of Sanctuary” installation developed for the Creators Project by Chris Milk.  Another important element that the silhouettes in the context of this project references are shadow puppets. The familiarity, universality and cross-cultural nature of shadow puppets as well as the existing precedence of comparable interactive experiences attest to the potential  for participant enjoyment and interaction intuitiveness within the scope of the “arctic mOcean” concept.
