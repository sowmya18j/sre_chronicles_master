# <p1 style="color:black;">**Synchronization**</p1>

It displays the synchronization status for different data that is being synced on the Shore side. 


<center><img src="/img/synchronization.png"></center>   <center>Figure 14: Synchronization</center>


The colours of the cells in the table keep on changing as per the situation. 

In the table, if the cell's colour is:

<p1 style="color:green;">**Green**</p1>- This indicates that the syncs are working as expected. 

<p1 style="color:red;">**Red**</p1>- The red colour signifies that the syncs are not working properly.

<p1 style="color:grey;">**Grey**</p1>- It indicates the inability to fetch data. 

!!! note "Important Note"

    If the syncs are not working properly then there won’t be an immediate impact, as we are transferring the future voyage details from shore to ship that will eventually be transferred prior to embarkation.

There are three main columns in this table, namely, *Shore to Ship*, *Voyage*, and *Elastic Search*, as well as other sub-columns to monitor the sync status of different data components for three ships of VV namely *Scarlet*, *Valiant*, and *Resilient*. The columns are as follows-:

## **Shore to Ship**

In this column, "Shore to Ship", there are seven sub-components. The components are as follows:

<center><img src="/img/shore_to_ship.png"></center>   <center>Figure 15: Shore to Ship</center>

**Sailors**

It displays the sync status of a sailor's information from shore to ship. Among the sailor's information are their Reservation number, Reservation ID, Guest ID, etc.

 <center> Shore &#8594; Ship</center>

The various colours of the cell depict various situations- 

<div style="display:flex; padding-bottom: 20px;"> <span><div style="background-color: green; width: 20px; height: 20px; margin-right:20px; margin-top: 5px; text-align: center"></div></span>
Sailor's information sync is working properly.</div> 

<div style="display:flex; padding-bottom: 20px;"> <span><div style="background-color: red; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span> 
Sailors sync is not working properly, then, information related to sailors record might not transfer from shore to ship. As a result, sailors might not appear in any Embarkation apps and Sailor app on the ship side.</div> 



<div style="display:flex"> <span> <div style="background-color: grey; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"> </div></span> 
Unable to fetch data related to sailor’s information.</div> 



 **User Accounts** 

It is also known as Identity Access Management (IAM). It shows the sync status of the User Tokens as well as the user’s personal information, such as first name, last name, and date of birth from the IAM Shore Database to the IAM Ship Database. These details are  necessary for uniquely identifying the guests  and are used for sailor-facing applications. 


 <center> IAM Shore [DB](/sre_manual/global_glossary/#db "Database") &#8594; IAM Ship DB</center>

The various colours of the cell depict various situations

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: green; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div> </span> User Accounts sync is working properly.</div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: red; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div> </span>
User Accounts sync is not working so the affected user may need to log in again on the Ship side, as their “User Tokens” may not have been transferred from shore to ship. </div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: grey; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Unable to fetch data related to the User token and other users’ personal information.  </div>

**Dining** 

This component is also referred to as Table Management (TM). This displays the sync status of the sailor’s dining bookings from TM Shore to TM Ship.

 <center>TM Shore Database &#8594; TM Ship Database</center>

The various colours of the cell depict various situations-

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: green; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px;"></div> </span>
Dining sync is working properly.</div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: red; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Dining sync is not working properly, as a result, the sailors and the crew members might not be able to see their dining bookings on the Sailor’s app as well as in the Table management app respectively on the Ship side. </div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: grey; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Unable to fetch data related to the Dining bookings. </div>

**Shore Excursions (Shore Ex)**


It is also known as Activity Reservation System (ARS). It shows the sync status of excursion bookings from the ARS Shore Database to the ARS Ship Database.

 <center>ARS Shore DB&#8594; ARS Ship DB</center>

The various colours of the cell depict various situations-

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: green; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Shore Ex  bookings sync is working.</div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: red; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Shore Ex bookings sync is not working which could result in sailors and crew members on the ship side being unable to view their Shore Ex bookings on the Sailor’s app and ARS Admin app, respectively. </div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: grey; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Unable to fetch data related to the Shore Ex bookings. </div>

**Reporting**

This displays the sync status of OCI (Online check-in) data of sailors from Shore to Ship. 

 <center>Reporting Shore DB&#8594; Reporting Ship DB</center>

The various colours of the cell depict various situations-

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: green; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Reporting sync is working properly.</div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: red; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Reporting sync is not working then the guest moderation details might not be displayed on the Ship side.</div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: grey; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Unable to fetch data related to the Reporting. </div>

**FnB (Food and Beverage)**

This shows the sync of data such as venues, operational hours, meal period of restaurants, taxation details etc. from the FnB Shore Database to the FnB Ship Database.

<center>FnB Shore DB &#8594; FnB Ship DB</center>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: green; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
FnB sync is working properly.</div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: red; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
FnB sync is not working which might affect both the restaurants and their associated costs (taxations according to the region). </div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: grey; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Unable to fetch data related to the FnB. </div>

**Images**

It is also referred to as Multimedia, which displays the sync status of security images and other necessary identification documents such as passports, visas etc. which are uploaded during the Ready to Sail (RTS) process from the Shore side VXP core Database to the Ship side VXP core database.

<center>Shore Side VXP Core DB &#8594; Ship Side VXP Core DB</center>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: green; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Images sync is working properly. </div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: red; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Images sync is not working, it might lead to unsuccessful image transfer from the shore to the ship. As a consequence, during ACI, crew members would need to perform necessary actions, such as retake security photograph and identification documents for the sailors. </div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: grey; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Unable to fetch data related to the Images.</div>

## **Voyage (Seaware &#8594; VXP)**

<center><img src="/img/voyage.png"></center>   <center>Figure 16: Voyage (Seaware &#8594; VXP)</center>

This displays the sync status of the voyage and its itinerary from Seaware to VXP. 

<center>Seaware (shore)&#8594; VXP (shore)</center>

**Note**: The sync works every 24 hours. 

The various colours of the cell depicts various situations-

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: green; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Voyage sync is working properly.</div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: red; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Voyage sync is not working properly then in case of any itinerary update or changes from   Seaware might not reflect in VXP. As a result, the voyage sync must be done manually. </div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: grey; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Unable to fetch data related to the voyage. </div>

## **Elastic Search**

It is used for global search functionality in the VXP platform. 

<center><img src="/img/elastic_search.png"></center>   <center>Figure:17 Elastic Search</center>

It has two sub-columns namely- *Sailor* and *Visitor*. It synchronizes data about sailors and visitors from VXP Core to Elastic Search. The crew will be able to locate sailor’s or visitors' information on any crew-facing applications.

<center>Shore VXP core DB &#8594; Shore’s Elastic Search</center>

The various colours of the cell depicts various situations-

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: green; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
The sync between  VXP core DB and Elastic search working properly.</div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: red; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Elastic search sync is not working properly, so, it may not be feasible to search a sailor,         or visitor using a single parameter. This would necessitate scrolling through the entire guest list to locate the specific individual. Else it could also provide a partial search result. </div>

<div style="display:flex; padding-bottom: 20px;"> <span> <div style="background-color: grey; width: 20px; height: 20px; margin-right: 20px; margin-top: 5px; text-align: center"></div></span>
Unable to fetch or identify the current state of sync between VXP core DB and Elastic Search. </div> 




