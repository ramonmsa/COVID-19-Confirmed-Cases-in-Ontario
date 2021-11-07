<<<<<<< HEAD

=======
>>>>>>> a005ce656fe2cfe851c4ea75ba63afa6be470e34
CREATE TABLE confirmedcases ( 
----------
Row_ID                      INTEGER UNIQUE PRIMARY KEY, -- this row is already present in the dataset.
Accurate_Episode_Date       DATE,
Case_Reported_Date          DATE,
Test_Reported_Date          DATE,
Specimen_Date               DATE,
Age_Group                   VARCHAR(7),
Client_Gender               VARCHAR(11),
Case_AcquisitionInfo        VARCHAR(30),
Outcome1                    VARCHAR(30),
Outbreak_Related            BOOLEAN,
Reporting_PHU_ID            INTEGER,
Reporting_PHU               VARCHAR(100),
Reporting_PHU_Address       VARCHAR(100),
Reporting_PHU_City          VARCHAR(30),
Reporting_PHU_Postal_Code   VARCHAR(7),
Reporting_PHU_Website       VARCHAR(100),
Reporting_PHU_Latitude      DECIMAL(10,7), --Latitudes range from -90 to +90
Reporting_PHU_Longitude     DECIMAL(11,7)  --longitudes range from -180 to +180
);

CREATE TABLE outbreaks ( 
ID                       SERIAL PRIMARY KEY,
date                     DATE,
phu_name                 VARCHAR(100),
phu_num                  INTEGER,
outbreak_group           VARCHAR(30),
number_ongoing_outbreaks INTEGER
);
<<<<<<< HEAD

CREATE TABLE vaccinedata (
    ID                              SERIAL PRIMARY KEY,
    date                            DATE
    PHU_ID                          INTEGER
    phu_name                        VARCHAR(50),
    agegroup                        VARCHAR(50),
    at_least_one_dose_cumulative    INTEGER,
    second_dose_cumulative          INTEGER,
    total_population                INTEGER,
    percent_at_least_one_dose       DECIMAL,
    percent_fully_vaccinated        DECIMAL   

);

=======
>>>>>>> a005ce656fe2cfe851c4ea75ba63afa6be470e34
