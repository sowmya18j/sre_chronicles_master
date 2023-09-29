# <center> SRE Insights – 1.1.0 Release Notes  </center> {style="font-size: 25px; color: black;"}
 

<u>Shore Dashboard:</u>

1.**Embarkation Stats:** Display the counts of total Sailors sailing on next Voyage for each ship. In addition to that, stats also show us how much percentage of each ship is Ready to Sail (RTS) and what percentage of Ship is moderated. Higher the percentage better it is, as that’ll reduce the load on Embarkation Ports.

2.**Synchronization:** To display the synchronization status for different data that is being synced on Shore side.

 a) *to Ship sync:* GREEN blocks signify that sync is working as expected. It has multiple  sub-section inside to monitor the sync status of different data components as mentioned below.

List of components (Shore to ship sync):

  - DXP CORE
  - IAM
  - TM
  - ARS
  - Reporting
  - FnB
  - Multimedia

b) *Seaware:* Sync status of Voyage data from Seaware to VXP

c) *Elastic Search:* Sync status for the Sailors and Visitors from VXP to Elastic Search. 

3.**Data Comparison (Shore to Ship):** This section of the dashboard will display the comparison of data counts for Reservations, Sailors, Dining, ARS, and Multimedia for next 2 voyages. Counts should match on Shore and Ship, any mismatch will show the counts in RED colour, that needs to be further analysed by SRE Team.

 **Reservations:**

*Shore:*Display’s all the reservations that are created for the Voyage at shore side.

*Ship:*Display’s total number of reservations that are synced for the respective voyage on the Ship.

**Sailors:**

*Shore:*Display’s total number of guests at shore side for the particular voyage.

*Ship:*Display’s total number of guests at ship side for the particular voyage.

 **Dining Shore:**

- This sections provides the counts of Dining booking in ARS (Activity Reservation System) and Dining bookings in TM (Table Management) at shore side.
- Dining data floats from Seaware → ARS (Shore) → TM (Shore) → TM (Ship) → ARS (Ship)

**Shore Ex (Excursions):**

*Shore:*Display’s total number of ARS reservations for that voyage at shore side.

*Ship:*Display’s total number of ARS reservations for that voyage at ship side.

**Multimedia:**

*Shore:*To display total number of multimedia items (this includes Security photo, identification documents, and other necessary travel documents) present at shore side for that voyage.

*Ship:*To Display total number of multimedia items present at ship side for that voyage.

4.**Alerts:**This section is meant to alert the user regarding data sync failure occurring for Scarlet & Valiant Lady.

- The alerts section will refresh every 2 minute.
- The failed sync status will be mentioned in the following format: “SHIP NAME |Summary of the failed sync”
- It will also mention the duration since when the sync was not working.
- By clicking on “View Ticket”, user will be directed to the ticket generated in DeCurtis JIRA Service Desk automatically   for the failed sync.
- Above the Summary of failed sync, the duration of alert generation is mentioned.
- SRE Team to analyze the Alert further to resolve it.

5.**Refresh Icon:**

- Situated at top right corner.
- The shore dashboard refreshes after every 2 minutes.
