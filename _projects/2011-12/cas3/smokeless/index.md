---
layout: project
categories: project
name: smokeless
title:  Smokeless
author: Ozge Genc, Consuelo Keller, Matteo Loglio, Mark Pruneri, Alberto Tacconi, Carlos Velasquez
teacher: Fabio Sergio, Gianluca Brugnoli, Giorgio Baresi, Roberta Tassi
module: cas3
course: Designing Advanced Services
year: 2011/12
licence: ccbyncsa
---
Introduction

Smokeless is a service for smokers that helps to track consumption and provides quitting support. It works with a special lighter that tracks every cigarette that is smoked and sends data via bluetooth to a smartphone app; then together with a web application they visualize consumption and support user in the quitting process. Inside the phone application it is possible to check daily and weekly consumption, with focus on location, cash and quantity. At the same time there’s a support system that you can access whenever you’re about to smoke that gives you alternative activities to carry out with your phone or without it. An important feature of the application is the virtual pet: if the user wants in fact he can manage a cute animal inside the phone whose health is affected by the smoking habit, it can also be shared with another smoker and each user is responsible also for the other pet. In parallel with this system there’s a web application where is possible to retrieve much more detailed informations, going also back in time for a while.
Interface and interaction modality

The service has three different touchpoints: a lighter, a smartphone application and a website. The lighter that tracks the cigarette consumption and it works exactly like a common lighter, where the smoker has to press a button to light up a cigarette. The user doesn’t have to change his habits and can rely on a familiar interaction modality.
The smartphone application is designed following the Apple guidelines. It has a clear and easy to use interface that takes advantage of the actions and gestures the users of iPhone phones are accustomed to from other applications. Also the website is designed to be easily used by a broad range of users. Colors and the use of adequate fonts help the readability of the data and the navigation of the content, allowing for different levels of information.
User Experience

We tried to keep the user experience as simple as possible. We reduced the number of actions required by users and also the app screens are reduced to the minimum. Where possible, the application and the physical interface (the lighter) do the work automatically, with just a few actions required to the user.
We created some wizards that guide the users through the different steps. An example of the simplification process is the support feature. The support feature is the possibility to ask help to the app and receive a set of suggested and alternative activities, that keep the attention away from the desire of smoking a cigarette; this feature has been deeply inspected and simplified to achieve the goal. After several revisions, the support request feature has been reduced to just two taps: one of the support button, and the other on the suggested action.
This example represents at best the user experience projected for the SmokeLess application.
Technical specifications

The service divides into two main components, the application/webpage, and the tracker, which in this case is the lighter.
The application was designed to run in any of the iOS platforms. The webpage is done in HTML5 for easy viewing in any touchpoint.
The prototype of the lighter was done using an Arduino connected through processing via XBees series 1. The lighter can be further developed for mass production by utilizing a bluetooth module to connect to the iphone.
Research and development contexts

After looking at the existing methods to help smoker quit, we have found that most effort focus on showing the negative results and expect an immediate quitting effort from the smoker. Smokeless focuses in helping the smoker gradually reduce consumption in a pace that make the user feel comfortable. The approach for the service is done through emotional connection to the virtual pet, and a goal setting environment, where the user is celebrated every time he advances in the process. In addition, the service offers detailed information about cigarette consumption for the type of users that would like to dig deeper into their statistics. This service is meant to be used for the personal use of smokers that have taken the decision to manage their consumption, but allows for social connection to provide extra support to the user’s journey to become smokeLess.