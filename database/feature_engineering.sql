-- normalize age group on confirmedcases and vaccinadata
UPDATE vaccinedata
SET agegroup = '70s'
WHERE  agegroup = '70-79yrs';

UPDATE vaccinedata
SET agegroup = '30s'
WHERE agegroup = '30-39yrs';

UPDATE vaccinedata
SET agegroup = '40s'
WHERE agegroup = '40-49yrs';

UPDATE vaccinedata
SET agegroup = '60s'
WHERE agegroup = '60-69yrs';

UPDATE vaccinedata
SET agegroup = '50s'
WHERE agegroup = '50-59yrs';

UPDATE vaccinedata
SET agegroup = 'UNKNOWN'
WHERE agegroup = 'Undisclosed_or_missing';

UPDATE vaccinedata
SET agegroup = '<30'
WHERE agegroup = '12-17yrs';

UPDATE vaccinedata
SET agegroup = '<30'
WHERE agegroup = '18-29yrs';

----------------

UPDATE confirmedcases
SET age_group = '<30'
WHERE age_group = '20s';

UPDATE confirmedcases
SET age_group = '<30'
WHERE age_group = '<20';

UPDATE confirmedcases
SET age_group = '80+'
WHERE age_group = '90+';

UPDATE confirmedcases
SET age_group = '80+'
WHERE age_group = '80s';





----------------------------------------------------------------------------------
-- CREAT VIEW TO RETURN PIVOT TABLE cases_by_phu 
CREATE VIEW cases_by_phu AS
	SELECT * 
	FROM
		phu AS phu
	INNER JOIN 
		(   SELECT
			 -- Pivoting by PHU_id
			   reporting_phu_id
			 -- Pivot the Years
			 , SUM( CASE WHEN "year" =  2019 THEN total_cases END ) "2019"
			 , SUM( CASE WHEN "year" =  2020 THEN total_cases END ) "2020"
			 , SUM( CASE WHEN "year" =  2021 THEN total_cases END ) "2021"
			 -- Pivot the Months
			 , SUM( CASE WHEN "month" =  1   THEN total_cases END )  jan
			 , SUM( CASE WHEN "month" =  2   THEN total_cases END )  feb
			 , SUM( CASE WHEN "month" =  3   THEN total_cases END )  mar
			 , SUM( CASE WHEN "month" =  4   THEN total_cases END )  apr
			 , SUM( CASE WHEN "month" =  5   THEN total_cases END )  may
			 , SUM( CASE WHEN "month" =  6   THEN total_cases END )  jun
			 , SUM( CASE WHEN "month" =  7   THEN total_cases END )  jul
			 , SUM( CASE WHEN "month" =  8   THEN total_cases END )  aug
			 , SUM( CASE WHEN "month" =  9   THEN total_cases END )  sep
			 , SUM( CASE WHEN "month" = 10   THEN total_cases END )  oct
			 , SUM( CASE WHEN "month" = 11   THEN total_cases END )  nov
			 , SUM( CASE WHEN "month" = 12   THEN total_cases END ) "dec"
			FROM 
			-- Select from subquery
			   (SELECT  
					reporting_phu_id
					,EXTRACT( YEAR  FROM accurate_episode_date ) AS "year" 
					,EXTRACT( MONTH FROM accurate_episode_date ) AS "month" 
					,count(row_id) as total_cases
				FROM confirmedcases cci
				GROUP BY 
					 EXTRACT( YEAR  FROM accurate_episode_date )
					,EXTRACT( MONTH FROM accurate_episode_date )
					,reporting_phu_id
				) as grp
			GROUP BY 
				reporting_phu_id
		) as cphu
		ON phu.reporting_phu_id = cphu.reporting_phu_id;