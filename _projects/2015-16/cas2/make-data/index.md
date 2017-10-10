---
categories: project
name: make_data
title: Make - Data
author: Ramona Banfi
teacher: Fabio Franchino, Giorgio Olivero
module: cas2
course: Web platform for interaction designers
year: 2015/16
vimeo:
licence: ccbyncsa
---
## Abstract 
“Make: Data” is a data visualization that explores the relationship, in terms of placement and importance, between fab labs and maker faires, around the world. It answers few questions like:
Are the quantity of maker faires directly related to the number of fab labs in the same nation?
Is the relation between maker faires and fab labs the same in every nation?
Is the closest maker faire always in the same country of the analyzed fab lab?

## Interface and interaction modality 
The visualization is displayed in a web page. After the title and subtitle there are the two main questions that follow the purpose of this data visualization. The flow of the page is in a horizontal way.
On the bottom there are the rectangles that represents the fab labs, and the top rectangles represents the maker faires. Each rectangle represents an item and they are grouped by nation.
Each fab lab is connected to the nearest  maker faire  to it by a colored wire.

## Technology
The demo was made using HTML, CSS and d3.js library. The code editor was Brackets. The dataset that contains the information were exported in CSV or JSON format.

## User Experience
The user can filter the order to display the informations. The data can be ordered by:
- Min / Max number of maker faire
- Min / Max number of fab lab
- By continent
- Alphabetical order

The information that will be displayed, if the user goes hover an items are:
- Name of fab lab / maker faire
- If hover a maker faire the names of the fab labs connected to it.

