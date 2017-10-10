---
categories: project
name: woo
title: Woo
author: Nicolò Calegari
teacher: Laura Bordin, Frog Design
module: thesis
course: Thesis Project
year: 2015/16
vimeo: 182867295
licence: ccbyncsa
tags: featured
---
## Abstract

Woo is an advanced service designed for an italian fashion brand called Wooden. The service is composed by an ecosystem of different digital touchpoints: a mobile application, a kiosk inside the store and a single page application designed to become a new module of the existing Wooden website. The service’s structure/system, flows, interactions modalities and touchpoints have been designed specifically for the context and for the users of the content itself; other interactive-shopping solutions already exist in retail, but every service has its specificity in relation to its market segment and, as a consequence, as its customers’ needs and opportunities.

This specific set of touchpoint and this specific ecosystem is totally brand new in its specific, because of the level of particularity of the context

## Interface and interaction modality

The advance service is composed by two digital touchpoints and one which is digital but with a custom designed physical interface: the Kiosk.
The user is able to interact with the application as an e-commerce outside the store, but inside the store becomes an exploration tool of the interactive environment, enhancing the physical and immersive dimension of the in-store shopping experience. Every garment in the store has a small RFID tag which can be read by the NFC module of users’s smartphone, through the Woo application. Just putting the mobile in proximity of the clothes allow users to read the ID of the garment, accessing properties, allowing bookmarking and comparison/banchmarks between garments.

The Kiosk is an interactive device with a touch interface that allows similar features of the web application, but with the possibility of customize garments. The interaction is based on the same principle of RFID tag reading, so users just by swiping a garment on the NFC surface of the Kiosk are able to visualize the garments’ specs on the Kiosk, and use that interface to interact.

The web builder is a single page application designed to be a module of the existing Wooden website. As the existing and more famous web apps builders (NikeId), the interface allows users to customize and purchase garments, modified via the builder interfaces.

## Technology

All the ecosystem relies on two main technologic communication protocols: NFC and Beacon. NFC module on smartphones and inside the Kiosk is able to read RFID/NFC tags inside the garments, letting the Master application read the Slaves (the tags), being able to display the identified garment’s information.
Beacon technology is used to detect app’s users proximity to the store: a Master device inside the store sends every millisecond a message to all the client devices: if a client device answers to the “ping”, it means that the user is in proximity.
The mobile application is an Android native app, that works as an e-commmerce app outside the store. Beacon technology, as explained before, is able to allow user to trigger the in-store mode of the app. In-store mode basically accesses the NFC module of the smartphone, making it able to read RFID tags to the clothes.
The Kiosk is a Windows OS based touch screen Lenovo all-in computer, on which is running an application. The Kiosk has a NFC reader module, through which the software is able to access APIs from a backend related to the specific garment, and populate the interface with that content (same business logic for the mobile app).
The web builder is designed to be a module of the existing website, and though just a prototypal interface at the moment, the invision is to develop it as a SPA application using a front-end lightweight framework like Angular.js or React.

## User experience

The user experience is designed to add a value to the shopping experience: the different touchpoints in terms of location, features, interaction modalities are just a consequence of users needs and opportunities. An advanced service that works well is the one in which different touchpoints work seamlessly together, avoiding the overlap of features and avoiding confusion to the user.
The core of the project is the user experience: every touchpoint of the service covers a need in relation to a specific moment of the shopping experience

## Research and development context

The context of the project is defined and it is the only possible: Wooden Fashion Store in Verona. The solution is not scalable and not replicable in different contexts, because every feature, need and opportunity and as a consequence every touchpoint’s behavior and interaction modality is based on context’s user research.