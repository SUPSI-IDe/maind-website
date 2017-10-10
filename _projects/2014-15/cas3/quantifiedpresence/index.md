---
categories: project
name: quantifiedpresence
title: QuantifiedPresence
author: Erik Bio, Thoraya Binzagr, and Soyeon Hwang
teacher: Fabio Franchino
module: cas3
course: The Web platform for Interaction Designers
year: 2014/15
vimeo: 192598306
licence: ccbyncsa
---
## Abstract

Quantified Presence is a graphical data visualisation of Swiss voters’ turn-out rates for votes between 1971 and 2014. Though multiple examples visualising data for Switzerland’s voting results already exist, none of them place any specific emphasis on addressing turn-out rate patterns in relation to each vote topic.

Seeing as citizen participation is an integral part of direct democracy, Switzerland’s official political system, investigating turn-out trends can shed light on a variety of insights relating to the when and the why behind what motivates voters to vote. By visualising turn-out data, Quantified Presence reveals which agendas were of most or least interest to the Swiss populace, allowing the user to uncover patterns as well as anomalies that can lead to further revelations concerning Swiss culture, history, character and politics on both regional and national levels.

## Interface and interaction modality

The main section of Quantified Presence displays a heat-map-like visualisation showing vote turn-out rates by canton and vote agenda for all votes between 1971 and 2014. The ‘heat-map’ visualisation is a matrix comprised of small rectangular cells, each of which representing the turn-out ‘level’ of one of 26 cantons for one of 372 vote agendas.
Columns represent vote agendas and are aligned chronologically from left to right, while the rows each represent a canton, and are sorted by the overall average participation rate from lowest (top row) to the highest (bottom row). The turn-out level of each cell (canton per vote agenda) is described using colour, with blue signifying the lowest and red the highest turn-out levels. Hovering over each column reveals the related vote agenda’s title, while clicking on a column displays a bar chart that provides a closer look at the turnout levels for the selected agenda. 

When no agendas are selected, 5 sections providing supporting context related to the visualisation appear below the heat-map area. These include a display of the diminishing standard-deviation trend between all the cantons’ turn-out rates over the years, two examples of canton-specific idiosyncrasies along with their corresponding highlights on the heat-map, and two sections analysing patterns of peaks and slumps in overall turn-out levels.


## Technology

Spreadsheets were used to combine, sort and make preliminary visualisations of the data. These first visualisations were essential in helping to form initial analyses of the data. On the other hand, the sorted spreadsheet was necessary for producing a suitably formatted CSV file for use in the final coded visualisation. Adobe softwares (Illustrator / Photoshop) were used to create the visual design. The final interactive data visualisation was programmed in D3, JS, HTML and CSS.

## User experience

The main purpose of Quantified Presence is to use data visualisation to allow the user to easily navigate through and understand previously inaccessible data. The design and interaction of Quantified Presence seeks to enable the user to explore and uncover hidden patterns in the data. In addition, the supplementary insights found below the main visualisation aim to further situate the data by providing contextual background and supporting analysis to both inform and inspire the user to explore further.


## Research and development context

Initially, a variety of possible associated factors were researched alongside turn-out rates. This included subjects surrounding canton population density vs area, age distribution, foreign national concentrations and agricultural activity. Such related topics as well as others can be further studied to provide a more insightful report and a deeper analysis of the patterns found in the data. 

In completing the current version of the visualisation, prospective areas of investigation were also identified. For example, related news articles providing social context on specific agendas, as well as recurring topics and their evolution over time can be added. Notably, one interesting contextual investigation that may prove to be particularly influential with regards to turn-out rates might focus on political party influence and campaign financial investments. Further development of the project could also involve an exploration of different types of data visualisations, possibly including, but not limited to, geographical map views and other types of charts.

