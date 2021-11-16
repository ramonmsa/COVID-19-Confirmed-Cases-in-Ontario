# Group 2 Final Project


## Current Project Segment - Two

### Date Updated - Nov 16, 2021

### Next Meeting - class on Tuesday, November 9


## Group Members
Mohammad Ali Sakhi, Patrick Moores, Ramon Sa, Somto Esomeju, Bo Wang, Mark Fulton (TA)


## Communication Protocols
• meet three times per week (Tuesday class, Thursday class, Saturday office hours)
• group communication over Slack


## Roles - Segment 2
**Team** - Continue to use Github
Deliverables - GitHub Repo (10 points)
Main Branch
The main branch should include:
• All code necessary to perform exploratory analysis
• Some code necessary to complete the machine learning portion of project
• All code in the main branch is production-ready.
README.md
README.md should include:
• Description of the communication protocols
• Outline of the project (this may include images, but they should be easy to follow and digest)
Individual Branches
Requirements for the individual branches follow:
• At least one branch for each team member
• Each team member has at least four commits for the duration of the second segment (eight total commits per person) 
**Responsible:** Team, Patrick (coordination)


**Triangle** - Transform a mockup database into a full database that integrates your work
Deliverable - Database Integration (30 points)
The team members are expected to present a fully integrated database, including the following:
• Database stores static data for use during the project
• Database interfaces with the project in some format (e.g., scraping updates the database)
• Includes at least two tables (or collections, if using MongoDB)
• Includes at least one join using the database language (not including any joins in Pandas)
• Includes at least one connection string (using SQLAlchemy or PyMongo)
**Responsible:** Ramon, Somto

**Square** - Refine the machine learning model you'll be using
Deliverables - Machine Learning Model (30 points)
The team members are expected to submit the code for the machine learning model, as well as the following:
• Description of preliminary data preprocessing
• Description of preliminary feature engineering and preliminary feature selection, including the decision-making process
• Description of how data was split into training and testing sets
• Explanation of model choice, including limitations and benefits
**Responsible:** Bo, Mohammad
    
**Circle** - Continue with analysis and create visuals to accompany the data story.
Deliverable - Presentation (drafted in Google Slides) (15 points)
• Selected topic
• Reason for selecting topic
• Description of the source of data
• Questions the team hopes to answer with the data
• Description of the data exploration phase of the project
• Description of the analysis phase of the project
**Responsible:** Patrick

**Cross(X)** - Outline and begin work on a dashboard to house your final project. Check and test the work completed against the rubric.
Deliverable - Dashboard (15 points)
A blueprint for the dashboard is created and includes all of the following:
• Storyboard on a Google Slide(s)
• Description of the tool(s) that will be used to create the final dashboard
• Description of interactive element(s)
**Responsible** Patrick 
  


## Topic
**Purpose:** Build an unsupervised machine learning model that will cluster Public Health Unit service delivery areas (PHUs) according to case frequency (per month beginning in October 2019) and (ongoing) outbreak status.

**Rationale for Topic Selection:** The importance of having an annual COVID-19 vaccination plan in Ontario has become increasingly apparent as case numbers rise again (as of November 2021) and the need for COVID-19 booster vaccines has recently become a public health and public policy issue.
The aim of our unsupervised machine learning model is to cluster together PHU’s with similarities in case frequency and ongoing outbreak frequency (?). The output information from our model will provide cities with data to create vaccine distribution plans based on similarity of PHU case frequency and outbreak frequency.


## Data Sources
**Ontario COVID-19 Outbreak Data**   [Link](https://data.ontario.ca/dataset/ontario-covid-19-outbreaks-data)

**Ontario COVID-19 Outbreak Data**   [Link](https://data.ontario.ca/dataset/covid-19-vaccine-data-in-ontario)

**Confirmed Positive Cases of COVID-19 in Ontario**   [Link](https://data.ontario.ca/en/dataset/confirmed-positive-cases-of-covid-19-in-ontario)


## Technologies
- Database (postgresSQL)
- Data preparation (postgresSQL)
- Machine learning (Python - Scilearn/Tensorflow)
- Visualization Dashboard (Tableau)


## Machine Learning Model
**Machine Learning Model Flowchart**[Link](https://github.com/pmoores/Group2_Project/blob/main/Images/ML%20Model%20Overview.pdf)


## Database
**ERD Diagram**  [Link](https://github.com/pmoores/Group2_Project/blob/main/database/ERD.png)


## Dashboard
**Working Tableau Dashboard**  [Link](https://public.tableau.com/app/profile/patrick.moores/viz/COVID-19_Analysis_Group2/2021CasesbyPHU)


## Presentation
**Working Google Slides Presentation**  [Link](https://docs.google.com/presentation/d/1GRAW5DcUnJiMPy0EA99P2qMoqcQWGWLsmU2lP00eoZc/edit?usp=sharing)


