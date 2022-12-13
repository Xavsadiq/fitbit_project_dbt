Fitness dashboard dbt project

### Purpose

As i've gotten more into fitness, i've become a bit obsessed with lowering my resting heart rate. When i've taken time off for covid or injuries, i've noticed quite a big rise in my resting heart rate.
So i wanted to look at the relation between the two by plotting a trend graph over time.

### Ingestion

Data is sourced from the Fitbit API and a spreadsheet of workouts. These are ingested daily via a [python script cloud function](https://github.com/Xavsadiq/Fitbit-Cloud-Function-Daily).

### Storage and Transformation

Data is housed in Bigquery, where we then use dbt to make the transformations as detailed in this project.

### Visualisation

Once the data is transformed and pushed back into Bigquery as 'Analytics', we can then use these production tables to power a [Looker Studio dashboard](https://datastudio.google.com/u/0/reporting/300aa1a3-6867-425e-a42d-72b4d98747d0/page/tEnnC).

![Screenshot](https://github.com/Xavsadiq/personal-portfolio/blob/main/portfolio-snap.PNG "Portfolio Snapshot")