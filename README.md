# Confirmed Cases of COVID-19 in Ontario

## Group 2 Members
Mohammad Ali Sakhi, Patrick Moores, Ramon Sa, Somto Esomeju, Bo Wang, Mark Fulton (TA)
 

## Topic
**Purpose:** To analyze confirmed COVID-19 cases in Ontario for similarities and patterns. An unsupervised machine learning model was built to cluster Public Health Unit service delivery areas (PHUs) according to case frequency. The output information from our model will provide government with data to create vaccine distribution plans based on patterns of case frequency.

**Rationale for Topic Selection:** The importance of having an annual COVID-19 vaccination plan in Ontario has become increasingly apparent as a public health and policy issue. Case numbers continue to rise (as of Dec 2021) and new variants of the virus continue to emerge.

**Project Questions**    
**Q1.** How are confirmed cases of COVID-19 distributed across Ontario? What similarities differences are there between public health unit areas (PHU’s)? Can seasonal patterns be observed?     
**Q2.** Can unsupervised machine learning be used to cluster Ontario PHU’s based on similarity of confirmed COVID-19 cases? What do these clusters tell us? 


## Data Sources
**Confirmed Positive Cases of COVID-19 in Ontario**   [Link](https://data.ontario.ca/en/dataset/confirmed-positive-cases-of-covid-19-in-ontario)

**COVID-19 Vaccine Data in Ontario**   [Link](https://data.ontario.ca/dataset/covid-19-vaccine-data-in-ontario)

**Ontario COVID-19 Outbreaks Data**   [Link](https://data.ontario.ca/dataset/ontario-covid-19-outbreaks-data)


## Technologies
- Database: PostgreSQL
- Cloud Database: Amazon AWS RDS
- Data Preparation and Feature Engineering: PostgreSQL, Python
- Unsupervised Machine Learning: Python
- Visualizations: Python, Tableau


## Database
**ERD Diagram:**  [Link](https://github.com/pmoores/Group2_Project/blob/main/database/img/ERD.png)


## Machine Learning Model
**Unsupervised Machine Learning Model Flowchart:**   [Link](https://github.com/pmoores/Group2_Project/blob/main/Images/ML%20Model%20Overview.pdf)


## Dashboard
**Tableau Dashboard:**  [Link](https://public.tableau.com/app/profile/somto.esomeju/viz/PHU_demo/PHUbyquarter?publish=yes)


## Presentation
**Google Slides Presentation:**  [Link](https://docs.google.com/presentation/d/1GRAW5DcUnJiMPy0EA99P2qMoqcQWGWLsmU2lP00eoZc/edit?usp=sharing)


## Observations
- Case frequencies are highest in the following three Public Health Unit Areas: Toronto, Peel, York Region.   
- Unsupervised machine learning model clustered Toronto and Peel together.  


## Conclusion
Toronto and Peel Region are hotspots for COVID-19 cases in Ontario and should be given first priority when government develops an annual vaccination plan.

