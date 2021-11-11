
-- Create tables for the outbreaks dataset. 
CREATE TABLE PHU (
ID                          INTEGER UNIQUE PRIMARY KEY, -- this row is already present in the dataset.
NAME                        VARCHAR(100),
Address                     VARCHAR(100)  NULL,
City                        VARCHAR(30)   NULL,
Postal_Code                 VARCHAR(7)    NULL,
Website                     VARCHAR(100)  NULL,
Latitude                    DECIMAL(10,7) NULL,  --Latitudes range from -90 to +90
Longitude                   DECIMAL(11,7) NULL  --longitudes range from -180 to +180
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
        REFERENCES PHU (ID);

ALTER TABLE outbreaks 
    ADD CONSTRAINT FK_outbreaks_TO_PHU
        FOREIGN KEY (phu_num) 
        REFERENCES PHU (ID);

ALTER TABLE vaccinedata 
    ADD CONSTRAINT FK_vaccinedata_TO_PHU
        FOREIGN KEY (PHU_ID) 
        REFERENCES PHU (ID);