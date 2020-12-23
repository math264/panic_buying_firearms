# panic_buying_firearms
Panic buying of firearms in 2020 compared to previous years: 2008-2019

## Data Topic

The topic that this data will support is regarding a few factors that are currently on-going
this year due to Covid-19. Since Covid-19 hit the U.S. in February, panic buying stemmed from
all sorts of items from toilet paper and other basic necessities such as food and H.B.A (healh and beauty accessories). Other items, such as firearms, have always been a necessity for some people. In 2020, 
firearms and ammo have become just as important, and just as scarce, as toilet paper. Additionally, a few 
factors influence the commerce of firearms year to year. The most consistent has been media sources and campaigns during presidential election years. Firearm commerce exploded soon after the 2008 election and has
not stopped since and continued to increase during the 2012 and 2016 elections. This year so far, over 17 million firearms have been sold, which has broken 2019's record of 13 million just in October of 2020.
Due to some of the civil unrest (rioting/looting) that has spread throughout cities, many have seen the need to stock up, including millions of first-time firearm owners. Ultimately, I will showcase the magnitude of firearms purchased in 2020, while also incorporating similar data resulting in the last decade of NCIS background checks, starting in 2008. 

+ what: panic buying of firearms in 2020 due to covid-19 and increased partisanship of presidential election
+ where: United States
+ when: 2020, with comparitive data from 2008-2019 to emphasize 2020 data.

**Tentative Title: U.S. Response to COVID-19 and Civil Unrest, 2020**
+ subheading: Firearm Panic Buying

## Objectives and User Needs

+ There a several different reasons why this map would be fun and cool to make. One, is to help document
and visualize a record year in firearm sales and manufacturer commerce. Two, panic buying of firearms only 
shows how important the 2A is. Considering there are millions of new gun owners nationally, people are realizing that they can only rely on themselves in times of civil unrest. With all the stigma regarding firearms pushed by the media, this shows that firearms very much still have a place in our society as it currently stands. Regardless of what people think of firearms, if they feel the need to protect themselves and their families, they realize that a firearm is their best choice. Police are not funded to protect civilians. During previous civil unrest, this has been a realization for many. Many of whom, are first time firearm owners.

+ Considering I am not an expert, I feel it makes sense to create and design this map/UI that the user may be of a similar perspective. Regardless of who is using the maps UI (novice/expert), a simple design and layout will prove useful and efficient in relaying information. If Joe Shmoe wanted to observe and interact with this map, it may be to learn more about panic buying during 2020. He may want to compile the most popular items bought during 2020. Considering firearm panic buying this year was multiplied by presidential campaigning, this map map prove useful to document and observe changes between states from previous election years.

+ Considering the data in the csv is montly, instead of compiling a static map of the total firearms purchased per state, I could include a slider that cycles through the monthly data, giving the user a breakdown of panic buying. The data i found also have a lot of additional information that could prove useful in tooltips (i.e. - breakdown of percentage of handguns vs long-guns) - but this may just be filler imformation and does not really attribute to the magnitude of firearms sold. After further inspection, I can 
organize and pivot my csv data using SQL in QGIS 3.12.2 and sum the montly NICS checks into yearly totals by state.

## Data Sources

My main data source of NICS background checks (aka legally purchased firearms):

        https://data.world/buzzfeednews/nics-background-check-counts


It is a non-spatial csv (no lat/lon) reporting on several accounts of firearm commerce from 1998-2020. Most notable data in this file is the total background checks/firearms purchased by state per month in 2020. I aim to show the magnitude of firearms purchased in 2020 /month and refer to additional statistics of firearms purchased in previous election years, such as 2016 and maybe 2012. 

I also plan on giving some background information regarding the NICS and that this data shows LEGAL purchases, I cannot stress that enough. Additionally, a breakdown of firearm commerce in 2020 through reference of statistics in articles will also help support my tone/message.

Statistical breakdown and reference to new firearm owners and unprecedented growth in 2020:

        https://www.nssf.org/first-time-gun-buyers-grow-to-nearly-5-million-in-2020/


## Thematic Representation of Data

The point of this map is to show the magnitude at which firearms have been legally purchased in 2020. Ideally, I would like to show this data as a choropleth map. Yet, I am not sure the best way to standardize the data. I have read that choropleth map data only needs to be standardized if you are comparing data geographically. I hope to show only the magnitude of firearms purchased. Additionally, I think a proportional symbol map or even a **cartogram** would work just as well if not better. I did read that the D3 js library offers cartogram. 

## Anticipated User Interface

My overall goal of this map is to be simple yet effective. The UI should be an extension of that goal. To simply cycle through the montly data, a slider widget would be perfect to easily filter the data in a continuous way that also allows easy comparison of montly data. The slide UI would also be beneficial for cycling through yearly data, should that data-drive route I should follow. The addition of a legend probably depends on my thematic choice. If I try to make a choropleth, a legend would be helpful in discerning the gradation of colors and their values. However, if I use a cartogram, a tooltip that appears on hover with the corresponding data would be simple and effective.

## Technology Stack

1. I may try to join the csv data to a shp of the US in QGIS 3.12.2 to give it spatial data to allow thematic mapping of the data. I believe I can join the csv to a shp using the state names. I will also re-pivot the csv attributes, categorizing them by state with yearly attributes and background check totals. 

2. I will probably store my data as a geojson. Hopefully if I can join the csv to a US shp, I can export the shp as a geojson from QGIS.

3. I plan to use similar libraries that have been used most of this class. 
    + JQUERY
    + BOOTSTRAP CDN and theme of choice
    + POPPER for BOOTSTRAP (UI)
    + D3 

4. Besides Javascript, I plan on incorporating CSS/SVG properties and HTML

5. I aim to host this map using my account with Github Pages

## Wireframe/Mockup Series and Progression
 
1. <img src="/assignment/Wireframe_1.jpg" alt="Wireframe" style="height: 100px; width:100px;"/>

2. <img src="/assignment/Wireframe_2.jpg" alt="Wireframe" style="height: 100px; width:100px;"/>

3. <img src="/assignment/Wireframe_3.jpg" alt="Wireframe" style="height: 100px; width:100px;"/>