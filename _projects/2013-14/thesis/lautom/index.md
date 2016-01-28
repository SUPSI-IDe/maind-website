---
layout: project
categories: project
name: lautom
title:  LAUToM
author: Lucia Rabago
teacher: Ramun Berger / Fablab Bern
module: thesis
course: Thesis Project
year: 2013/14
licence: ccbyncsa
---
LAUToM is a project born from the necessity of creating a modular system that can help Fab Labs, Hacker Spaces and Maker Spaces in the management and administration processes.
The goal of this thesis is to create a first functional version of a system that can be easily implemented on the Labs around the world. The concept was to search for existed tools and known tools by the experts go this spaces that can guarantee the development of the project. LAUToM is a Control System that lets the managers of this spaces have a better control on the reservation and tracking of usage of the machines in the lab.
It helps the members of the community to be more independent in the lab and with the creation of special tags interact among them. The project is in the search of not only simplifying the task of the managers but lead to a new experience for the users in the lab. Is composed of a Control System, Tags and Web Services.

Interface and interaction modality

The User access the web site www.bookings.fablab-bern.ch in this site he can log in be a new user, and then he can do the reservation of a machine. Then when he visits the lab he has its card and with it he can pass it to the box and log in to his screen and interact with the machines. More or less the same happens with the Manager the difference is that the manager can manage and modify data which is relevant for him. In summery there are three key moments. The user and the web site, the user and the usage of the tag to access the system. The user and the usage of the touch screen control the machines. Apart from this the tags generate a new interaction which helps the members of the community demonstrate their expertise.
Technology

To create a good prototype and more than a prototype a functional system, different technologies have to be tested. One of the requirements was to have a system that is not only would be prototyped but to find open source or easy ways to create a real system. The Control System uses as input a touch screen an RFID reader. As outputs it has a thermal printer to create tickets, a hacked control remote control that what is controlling is the power switch to control
the power of the machine. There was the creation of a site in HTML combined with PHP protocol to be able to connect to a SQL services. Using the web hosting system of the Fab Lab Bern site several test where run by creating some small web pages. For the booking an open source solution was discover the project is call PHPmyreservation.
Some of the features of the system are: it is a fast, easy & smooth system, it has a user login, users can browse through all weeks of the year, a price can e set by per reservation can be set, usage is stored automatically among others. Different Arduino Libraries where used to help with the communication protocol, management of strings and the connection of the Arduino to a Web client to obtain information from the web site.
Research and development context

A Fab Lab is a working space for technical prototyping that helps to promote innovation and invention. A Fab Lab is also a platform for learning, is a global communities of learners, educators, technologists, researchers, makers and innovators, the main goal of this community is to generate knowledge and share it. A fab lab is generally equipped with computer controlled tools that help to the prototyping and development of different products.
Fab Labs are distinguished by activities such as: the rental of machines, workshops, incubation of new products among others. By definition the services are the main economical factor that keep a Fab Lab. As any other industry that their main activity is services, it is essential the management of the services and the data that is generated. During the process of interviews and research of this paper a common denominator was found in the main data that is required to keep track of the services in the Fab Lab:
- Members Registration
- Financial tracking
- Booking Systems
- Project Documentation Tracking
Each entry needs to be taken in count and inter connected in order to administrate and inter connect the information.
It can be synthesize that the solution to all this problems is to develop a project in information management that gives relevance to the understanding of the interaction and the elements inside the Fab Lab. In these case the complexity of the systems can be seen as the opportunity to develop a system that can achieve: The management of a variety of data. The coordination of different time tables. The idea that documentation has to be encourage, obtained, organized, saved and published. The use of physical objects where their actions depend from relevant data. To develop a secure system for users and the Fab Lab. A web service that can help to the networking of the Fab Lab.