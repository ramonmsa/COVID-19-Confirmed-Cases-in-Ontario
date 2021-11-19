-- Script designated to populate tables with initial data.


-- populate table PHU --------
INSERT INTO PHU ( ID, NAME , Address, City, Postal_Code, Website, Latitude, Longitude )   
VALUES ( 2260	,'Simcoe Muskoka District Health Unit'	            ,'15 Sperling Drive'	            ,'Barrie'	    ,'L4M 6K9'	,'www.simcoemuskokahealth.org'	                            ,44.41071258	,-79.68630597 );
INSERT INTO PHU ( ID, NAME , Address, City, Postal_Code, Website, Latitude, Longitude )   
VALUES ( 4913	,'Southwestern Public Health'	                    ,'1230 Talbot Street'	            ,'St. Thomas'	,'N5P 1G9'	,'www.swpublichealth.ca'	                                ,42.77780366	,-81.15115646 );
INSERT INTO PHU ( ID, NAME , Address, City, Postal_Code, Website, Latitude, Longitude )   
VALUES ( 2234	,'Haldimand-Norfolk Health Unit'	                ,'12 Gilbertson Drive'	            ,'Simcoe'	    ,'N3Y 4N5'	,'www.hnhu.org'	                                            ,42.84782526	,-80.30381491 );
INSERT INTO PHU ( ID, NAME , Address, City, Postal_Code, Website, Latitude, Longitude )   
VALUES ( 2263	,'Timiskaming Health Unit'	                        ,'247 Whitewood Avenue, Unit 43'	,'New Liskeard'	,'P0J 1P0'	,'www.timiskaminghu.com'	                                ,47.5092835	    ,-79.681632   );
INSERT INTO PHU ( ID, NAME , Address, City, Postal_Code, Website, Latitude, Longitude )   
VALUES ( 2251	,'Ottawa Public Health'	                            ,'100 Constellation Drive'	        ,'Ottawa'	    ,'K2G 6J8'	,'www.ottawapublichealth.ca'	                            ,45.3456651	    ,-75.7639122  );
INSERT INTO PHU ( ID, NAME , Address, City, Postal_Code, Website, Latitude, Longitude )   
VALUES ( 2258	,'Eastern Ontario Health Unit'	                    ,'1000 Pitt Street'	                ,'Cornwall'	    ,'K6J 5T1'	,'www.eohu.ca'	                                            ,45.02915233	,-74.73629779 );
INSERT INTO PHU ( ID, NAME , Address, City, Postal_Code, Website, Latitude, Longitude )   
VALUES ( 2244	,'Middlesex-London Health Unit'	                    ,'50 King Street'	                ,'London'       ,'N6A 5L7'	,'www.healthunit.com'	                                    ,42.98146842	,-81.25401572 );
INSERT INTO PHU ( ID, NAME , Address, City, Postal_Code, Website, Latitude, Longitude )   
VALUES ( 3895	,'Toronto Public Health'	                        ,'277 Victoria Street, 5th Floor'	,'Toronto'	    ,'M5B 1W2'	,'www.toronto.ca/community-people/health-wellness-care/'	,43.65659125	,-79.37935801 );
INSERT INTO PHU ( ID, NAME , Address, City, Postal_Code, Website, Latitude, Longitude )   
VALUES ( 2265	,'Region of Waterloo, Public Health'	            ,'99 Regina Street South'	        ,'Waterloo'	    ,'N2J 4V3'	,'www.regionofwaterloo.ca'	                                ,43.46287573	,-80.52091315 );
INSERT INTO PHU ( ID, NAME , Address, City, Postal_Code, Website, Latitude, Longitude )   
VALUES ( 2238	,'Hastings and Prince Edward Counties Health Unit'	,'179 North Park Street'	        ,'Belleville'	,'K8P 4P1'	,'www.hpePublicHealth.ca'	                                ,44.18667362	,-77.39144554 );
INSERT INTO PHU ( ID, NAME , Address, City, Postal_Code, Website, Latitude, Longitude )   
VALUES ( 2253	,'Peel Public Health'	                            ,'7120 Hurontario Street'	        ,'Mississauga'	,'L5W 1N4'	,'www.peelregion.ca/health/'	                            ,43.6474713	    ,-79.7088933 );
INSERT INTO PHU ( ID, NAME )   
VALUES ( 2227   ,'BRANT COUNTY' );    
INSERT INTO PHU ( ID, NAME )   
VALUES ( 2240   ,'CHATHAM-KENT' );  
INSERT INTO PHU ( ID, NAME )   
VALUES ( 2237   ,'CITY OF HAMILTON' );	
INSERT INTO PHU ( ID, NAME )   
VALUES ( 2230   ,'DURHAM REGION' );
INSERT INTO PHU ( ID, NAME )   
VALUES ( 2233	,'GREY BRUCE' );
INSERT INTO PHU ( ID, NAME )   
VALUES ( 2226	,'ALGOMA DISTRICT' );
INSERT INTO PHU ( ID, NAME )   
VALUES ( 2235	,'HALIBURTON, KAWARTHA, PINE RIDGE' );
INSERT INTO PHU ( ID, NAME )   
VALUES ( 2236	,'HALTON REGION' );
INSERT INTO PHU ( ID, NAME )   
VALUES ( 5183	,'HURON PERTH' );
INSERT INTO PHU ( ID, NAME )   
VALUES ( 2241	,'KINGSTON, FRONTENAC, LENNOX & ADDINGTON' );
INSERT INTO PHU ( ID, NAME )   
VALUES ( 2242	,'LAMBTON COUNTY' );
INSERT INTO PHU ( ID, NAME )   
VALUES ( 2243	,'LEEDS, GRENVILLE AND LANARK DISTRICT' );
INSERT INTO PHU ( ID, NAME )   
VALUES ( 2246	,'NIAGARA REGION' );
INSERT INTO PHU ( ID, NAME )   
VALUES ( 2247	,'NORTH BAY PARRY SOUND DISTRICT' );
INSERT INTO PHU ( ID, NAME )   
VALUES ( 2249	,'NORTHWESTERN' );

-- populate table confirmedcases --------
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 1  ,'5/30/2019',  '5/5/2020'	,'5/5/2020'     ,'5/3/2020'	    ,'50s'	    ,'FEMALE'	,'CC'	                ,'Resolved'	,'NO',2260	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 2  ,'11/20/2019', '10/21/2020' ,'11/21/2020'   ,'11/20/2019'	,'20s'	    ,'FEMALE'	,'NO KNOWN EPI LINK'	,'Resolved'	,'NO',4913	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 3  ,'1/1/2020',   '4/24/2020'	,'4/24/2020'	,'4/23/2020'	,'80s'	    ,'MALE'	    ,'NO KNOWN EPI LINK'	,'Resolved'	,'NO',2234	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 4  ,'1/1/2020',   '5/17/2020'	,'5/17/2020'	,'5/15/2020'	,'50s'	    ,'MALE'	    ,'CC'	                ,'Resolved'	,'NO',2265	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 5  ,'1/1/2020',   '5/26/2021'	,'3/31/2021'	,'3/28/2021'	,'UNKNOWN'	,'MALE'	    ,'TRAVEL'	            ,'Resolved'	,'NO',2263	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 6  ,'1/5/2020',   '1/9/2021'	,'1/8/2021'	    ,'1/7/2021'	    ,'20s'	    ,'MALE'	    ,'NO KNOWN EPI LINK'	,'Resolved'	,'NO',2251	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 7  ,'1/10/2020',  '6/10/2020'	,'6/10/2020'	,'6/9/2020'	    ,'50s'	    ,'MALE'	    ,'CC'	                ,'Resolved'	,'NO',2234	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 8  ,'1/13/2020',  '1/23/2021'	,'1/23/2021'	,'1/22/2021'	,'30s'	    ,'MALE'	    ,'NO KNOWN EPI LINK'	,'Resolved'	,'NO',2260	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 9  ,'1/16/2020',  '10/8/2020'	,'10/8/2020'	,'10/6/2020'	,'50s'	    ,'FEMALE'	,'NO KNOWN EPI LINK'	,'Resolved'	,'NO',2258	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 10 ,'1/21/2020',   '1/23/2020'	,'1/26/2020'	,'1/23/2020'	,'50s'	    ,'MALE'	    ,'TRAVEL'	            ,'Resolved'	,'NO',3895	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 11 ,'1/22/2020',   '1/23/2020'	,'1/27/2020'	,'1/25/2020'	,'50s'	    ,'FEMALE'	,'TRAVEL'	            ,'Resolved'	,'NO',3895	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 12 ,'1/22/2020',   '10/24/2020','10/24/2020'   ,'1/22/2020'	,'20s'	    ,'FEMALE'	,'NO KNOWN EPI LINK'	,'Resolved'	,'NO',3895	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 13 ,'1/24/2020',   '1/24/2020'	,'2/4/2020'	    ,'1/24/2020'	,'20s'	    ,'FEMALE'	,'TRAVEL'	            ,'Resolved'	,'NO',2244	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 14 ,'1/25/2020',   '1/27/2021'	,'1/27/2021'	,'1/26/2021'	,'20s'	    ,'MALE'	    ,'CC'	                ,'Resolved'	,'NO',2265	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 15 ,'1/27/2020',   '2/13/2021'	,'2/13/2021'	,'2/12/2021'	,'60s'	    ,'MALE'	    ,'NO KNOWN EPI LINK'	,'Resolved'	,'NO',3895	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 16 ,'1/29/2020',   '1/27/2021'	,'1/27/2021'	,'1/26/2021'	,'20s'	    ,'FEMALE'	,'OB'	                ,'Resolved'	,'Yes',2265	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 17 ,'1/31/2020',   '7/24/2020'	,'7/24/2020'	,'7/24/2020'	,'30s'	    ,'FEMALE'	,'NO KNOWN EPI LINK'	,'Resolved'	,'NO',2253	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 18 ,'2/1/2020',    '4/14/2020'	,'4/16/2020'	,'4/14/2020'	,'60s'	    ,'FEMALE'	,'TRAVEL'	            ,'Resolved'	,'NO',2238	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 19 ,'2/2/2020',    '3/13/2020'	,'3/12/2020'	,'3/12/2020'	,'20s'	    ,'MALE'	    ,'CC'	                ,'Resolved'	,'NO',2253	);
INSERT INTO confirmedcases (Row_ID, Accurate_Episode_Date, Case_Reported_Date, Test_Reported_Date, Specimen_Date, Age_Group, Client_Gender, Case_AcquisitionInfo, Outcome1, Outbreak_Related, Reporting_PHU_ID)
VALUES ( 20 ,'2/5/2020',    '2/21/2020'	,'2/24/2020'	,'2/22/2020'	,'20s'	    ,'FEMALE'	,'TRAVEL'	            ,'Resolved'	,'NO',3895	);

-----------------
-- populate table outbreaks --------
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2227	,'4 Workplace'	        ,1  );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2227	,'1 Congregate Care'	,2  );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2240	,'5 Recreational'       ,1  );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2240	,'6 Other/Unknown'	    ,1  );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2240	,'4 Workplace'	        ,1  );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2237	,'3 Education'	        ,1  );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2237	,'5 Recreational'	    ,1  );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2237	,'6 Other/Unknown'	    ,1  );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2237	,'4 Workplace'	        ,2  );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2237	,'1 Congregate Care'	,5  );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2251	,'4 Workplace'	        ,3  );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2251	,'2 Congregate Living'	,7  );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2251	,'6 Other/Unknown'	    ,2  );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2251	,'3 Education'	        ,6  );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2251	,'1 Congregate Care'    ,29 );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2230	,'1 Congregate Care'	,3 );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2230	,'4 Workplace'	        ,1 );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2230	,'6 Other/Unknown'	    ,1 );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2230	,'2 Congregate Living'	,1 );
INSERT INTO outbreaks ( date,	phu_num,	outbreak_group,	number_ongoing_outbreaks )
VALUES ( '11/1/2020',	2230	,'3 Education'	        ,2 );

-----------------

----------Insert into vaccinedata----
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2226,'12-17yrs',3843, 1890, 6504, 0.5909,0.2906);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2227,'12-17yrs',6306, 3567, 10734,0.5875,0.3323);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2240,'12-17yrs',3229, 1923, 7233, 0.4464,0.2659);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2237,'12-17yrs',21710,14055,37018,0.5865,0.3797);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2251,'12-17yrs',50734,31410,66222,0.7661,0.4743);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2230,'12-17yrs',34025,16953,51038,0.6667,0.3322);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2258,'12-17yrs',7808, 3557, 13423,0.5817,0.265);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2233,'12-17yrs',5533, 3627, 10179,0.5436,0.3563);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2234,'12-17yrs',3125, 1711, 7138, 0.4378,0.2397);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2235,'12-17yrs',5821, 3155, 10093,0.5767,0.3126);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2236,'12-17yrs',36557,26873,49248,0.7423,0.5457);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2238,'12-17yrs',5703, 3668, 9953, 0.573, 0.3685);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',5183,'12-17yrs',5265, 1704, 9790, 0.5378,0.1741);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2241,'12-17yrs',8637, 5141, 11803,0.7318,0.4356);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2242,'12-17yrs',4455, 2460, 8280, 0.538, 0.2971);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2243,'12-17yrs',6941, 3806, 10477,0.6625,0.3633);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2244,'12-17yrs',22283,11106,31735,0.7022,0.35);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2246,'12-17yrs',16673,10501,28353,0.5881,0.3704);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2247,'12-17yrs',4147, 2637, 7244, 0.5725,0.364);
INSERT INTO vaccinedata (date, PHU_ID, agegroup, at_least_one_dose_cumulative, second_dose_cumulative, total_population, percent_at_least_one_dose, percent_fully_vaccinated)
VALUES ('2021-07-26',2249,'12-17yrs',4132, 2197, 6670, 0.6195,0.3294);
------
----(Alternatively, data can be imported using Jupyter notebook)
