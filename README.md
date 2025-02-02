# Confirmed Cases of COVID-19 in Ontario

## Members
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
**ERD Diagram:** 

![image](https://user-images.githubusercontent.com/69650068/151782858-8a9dce05-f854-4f6f-b68b-0df4d6125f80.png)

**The SQL view cases_by_phu created to supply the models with the featured engineered data listed below:**
- Count cases by PHU, by month
- Pivot table in order to show year-month in columns, instead of rows
![image](https://user-images.githubusercontent.com/69650068/151783411-6f27c08a-74f9-4cce-a212-a8a5ffb77d21.png)
![image](https://user-images.githubusercontent.com/69650068/151783455-7770abd3-aace-43cc-aeaf-cf23e4a9cf52.png)


## Unsupervised Machine Learning Model

**Hierarchical Cluster:**

- Orange lines on the graph indicating outliers exist, however these outliers are containing overwhelming value of confirmed cases. Thus, they cannot be omit either statistically and graphically. Since this study is based on unsupervised machine learning, the outlier will not impact on any statistical estimation.
![image](https://user-images.githubusercontent.com/69650068/151784018-157ceaf9-b51d-4082-81fa-aed42c653541.png)


**Output of Hierarchical Cluster:**
- The Dataset used in this study is being modified such that each season is summed for analysis.
- It is clear that original dataset does not have any binary categorical column which indicates this dataset is not meant to be use for supervised machine learning.
- PCA being used to perform better understanding of the dataset such that the principle components can describe over 95% of the dataset.
- Unsupervised Machine Learning is being involved to cluster and identify similarities between regions and group them as one.
![image](https://user-images.githubusercontent.com/69650068/151784218-10bf6fa0-d055-40ad-98bd-0fec0b6cf514.png)


## Dashboard
**Tableau Dashboard:** 

- **Visualization 1 - Map of Ontario**
  - Presents the PHUs where the cases were registered.
  - Sizes indicate case count.
  - Colors indicate the clusters from unsupervised machine learning model.
  - Possible to filter by quarter.

- **Visualization 2 – Confirmed Cases by PHU Horizontal Bar Chart**
  - Shows the case count for each PHU
  - Colors indicate the quarters.

<img width="842" alt="image" src="https://user-images.githubusercontent.com/69650068/151785716-25133fc4-7c20-48d0-b9e3-4a6f699b415c.png">


## Observations
- Case frequencies are highest in the following three Public Health Unit Areas: Toronto, Peel, York Region.   
- Unsupervised machine learning model clustered Toronto and Peel together.  


## Conclusion
Toronto and Peel Region are hotspots for COVID-19 cases in Ontario and should be given first priority when government develops an annual vaccination plan.

