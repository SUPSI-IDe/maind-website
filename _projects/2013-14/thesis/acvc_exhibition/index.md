---
layout: project
categories: project
name: acvc_exhibition
title:  ACVC Echibition
author: Marco Lurati
teacher: Alessandro Masserdotti / dotdotdot
module: thesis
course: Thesis Project
year: 2013/14
licence: ccbyncsa
---
The thesis project started with a concrete goal from the beginning. The audio-visual archive of Capriasca and Val Colla in Ticino (Archivio Audiovisivo di Caprisca e Val Colla, www.acvc.ch) in Switzerland wants to create a permanent exhibition with its contents (digital pictures, printed pictures and audio interview of elder people collecting their memories).
Different topics have been taken into consideration; how to share digital pictures with visitors that have different experiences, needs and abilities with the new technologies, actively engage them to grab their attention and stimulate a discussion and sharing and provide an open and free way to discover the contents. The technology chosen has to follow as consequence those design and iterations questions and not the way around.
After several concepts development and physical prototyping including the exhibition design of the space itself, a fully designed exhibition has been created. The solution consist in an interactive table that allows to access to the digital pictures of the archive by using an open and playful filtering system, an audio station to discover the audio interviews of elder people as well as the organization of the printed pictures in the room.

Interface and interaction modality

The visitors have at their disposal 15-20 pictures supports each one with a different picture inside. By placing them on the active surface of the table, a sequence of pictures is projected on front of the picture support. The sequence is based on one metadata of the picture in the support (for instance year, location and topic). By rotating the picture support, the metadata used to filter the picture to be projected change passing to the next one. The interface projected permit to scroll the sequence by tapping on the right or left picture and see more detailed information about the actual picture that is shown in the middle. By approaching two or more picture supports together, the metadata are merged to have a more precise and specific filter. The topic of the pictures in the supports is changed form time to time by the curator. The interactive table allows extending the view about the topic proposed by filtering and showing related pictures inside the digital archive.
The audio station allows discovering the audio interviews that the archive did with elder people of the region speaking about the past. By touching the pictures on the station, a related slideshow of pictures will be played on the monitor of the station and the interview will be eared. The curator can easily change the pictures and the interview from time to time.
User Experience

The interactive table uses a vision system that detect the fingers and the fiducials markers on the pictures supports trough the semi-transparent surface used also from the projector to project the filtered pictures sequences. The camera vision system works in infrared light (IR) that is provided by an IR lamp. So the camera is not disturbed by the projection on the same surface and by the light coming from outside. The images from the camera are analysed by an application called reacTIVision that detect the position, angle and ID of each fiducial on the table and the fingers too. This information are sent to the Processing sketch that manage to filter the pictures, display the interface and check the fingers gestures to provide the interactive experience to discover the pictures inside the digital archive.
The audio station use light sensors to detect which picture has been touched. Sensors are connected to the analogue input of an Arduino that send witch picture has been touched to the Processing sketch on the computer. The sketch play the right picture slideshow with the audio interview on the screen and the directional speaker of the station. The visitor has the possibility to discover the digital pictures on the table in a freely and playful way by trying different combinations with the pictures support at its disposal. The experience is interactive, intuitive and encourages the discussion and the sharing with other visitors using the table. The audio station adds the direct speech of people who lived the story told in the slideshow. This adds a strong value to the experience.
Research and development context

The next part that will be very interesting to develop and implement is the exhibition in the territory described in the concept development of my thesis but not realized. It would be probably realized on a wThe table could be used to add different kind of contents (like videos) to have an even more broad experience.