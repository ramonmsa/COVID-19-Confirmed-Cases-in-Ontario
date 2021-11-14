--- CREATE TABLE FOR PHU
CREATE TABLE PHU (
Reporting_PHU_ID            INTEGER UNIQUE PRIMARY KEY, -- this row is already present in the dataset.
Reporting_PHU               VARCHAR(100),
Reporting_PHU_Address       VARCHAR(100)  NULL,
Reporting_PHU_City          VARCHAR(30)   NULL,
Reporting_PHU_Postal_Code   VARCHAR(7)    NULL,
Reporting_PHU_Website       VARCHAR(100)  NULL,
Reporting_PHU_Latitude      DECIMAL(10,7) NULL,  --Latitudes range from -90 to +90
Reporting_PHU_Longitude     DECIMAL(11,7) NULL  --longitudes range from -180 to +180
);

-- Create table for the confirmed cases dataset.
CREATE TABLE confirmedcases ( 
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
Reporting_PHU_ID            INTEGER
);


-- Create table for the outbreaks dataset.
CREATE TABLE outbreaks ( 
ID                       SERIAL PRIMARY KEY,
date                     DATE,
phu_num                  INTEGER,
outbreak_group           VARCHAR(50),
number_ongoing_outbreaks INTEGER 
);


-- Create table for the vaccine data dataset.
CREATE TABLE vaccinedata (
    ID                              SERIAL PRIMARY KEY,
    date                            DATE,
    PHU_ID                          INTEGER,
    agegroup                        VARCHAR(50),
    at_least_one_dose_cumulative    INTEGER,
    second_dose_cumulative          INTEGER,
    total_population                INTEGER,
    percent_at_least_one_dose       DECIMAL,
    percent_fully_vaccinated        DECIMAL   

);

--- Create FK constraints for the tables
ALTER TABLE confirmedcases 
    ADD CONSTRAINT FK_confirmedcases_TO_PHU 
        FOREIGN KEY (Reporting_PHU_ID) 
        REFERENCES PHU (Reporting_PHU_ID);

ALTER TABLE outbreaks 
    ADD CONSTRAINT FK_outbreaks_TO_PHU
        FOREIGN KEY (phu_num) 
        REFERENCES PHU (Reporting_PHU_ID);

ALTER TABLE vaccinedata 
    ADD CONSTRAINT FK_vaccinedata_TO_PHU
        FOREIGN KEY (PHU_ID) 
        REFERENCES PHU (Reporting_PHU_ID);

