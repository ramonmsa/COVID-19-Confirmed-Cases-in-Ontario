----------------------------------------------------------------------------------
-- CREAT VIEW TO RETURN PIVOT TABLE cases_by_phu 
----------------------------------------------------------------------------------
-- What this view returns ?
--     This view returns total of cases by phy along the years 2020 and 2021. Data 
--   from 2019 was kept for history purpose.
----------------------------------------------------------------------------------
-- How this VIEW works ?
--     Firstly, the subquery "grp" counts the total cases by PHU, Year and Month.
--     Secondly, the subquery "cphu" pivots the data returned by the subquery "grp"
--   using CASE Statements to fix the summations to columns
--     Finaly, the table PHU is JOINED to data returned by subquery "cphu" by phu_id.
----------------------------------------------------------------------------------
CREATE VIEW cases_by_phu AS
	SELECT 
		 phu.reporting_phu
		,phu.reporting_phu_address
		,phu.reporting_phu_city
		,phu.reporting_phu_postal_code
		,phu.reporting_phu_website
		,phu.reporting_phu_latitude
		,phu.reporting_phu_longitude
		,cphu.* 
	FROM
		phu AS phu
	INNER JOIN 
        -- Subquery "cphu"
		(SELECT
			 -- Pivoting by PHU_id
			   reporting_phu_id
			 -- Pivot years
               -- COALESCE returns 0 when the result is null
			 , COALESCE(SUM( CASE WHEN "year" =  2019 THEN total_cases END ), 0 ) "2019"
			 , COALESCE(SUM( CASE WHEN "year" =  2020 THEN total_cases END ), 0 ) "2020"
			 , COALESCE(SUM( CASE WHEN "year" =  2021 THEN total_cases END ), 0 ) "2021"
			 -- Pivot months
			 , COALESCE(SUM( CASE WHEN "month" =  1   THEN total_cases END ), 0 ) "jan"
			 , COALESCE(SUM( CASE WHEN "month" =  2   THEN total_cases END ), 0 ) "feb"
			 , COALESCE(SUM( CASE WHEN "month" =  3   THEN total_cases END ), 0 ) "mar"
			 , COALESCE(SUM( CASE WHEN "month" =  4   THEN total_cases END ), 0 ) "apr"
			 , COALESCE(SUM( CASE WHEN "month" =  5   THEN total_cases END ), 0 ) "may"
			 , COALESCE(SUM( CASE WHEN "month" =  6   THEN total_cases END ), 0 ) "jun"
			 , COALESCE(SUM( CASE WHEN "month" =  7   THEN total_cases END ), 0 ) "jul"
			 , COALESCE(SUM( CASE WHEN "month" =  8   THEN total_cases END ), 0 ) "aug"
			 , COALESCE(SUM( CASE WHEN "month" =  9   THEN total_cases END ), 0 ) "sep"
			 , COALESCE(SUM( CASE WHEN "month" = 10   THEN total_cases END ), 0 ) "oct"
			 , COALESCE(SUM( CASE WHEN "month" = 11   THEN total_cases END ), 0 ) "nov"
			 , COALESCE(SUM( CASE WHEN "month" = 12   THEN total_cases END ), 0 ) "dec"
			 -- Pivot 2019 months
			 , COALESCE(SUM( CASE WHEN "year" =  2019 AND "month" = 10   THEN total_cases END ), 0 ) "19-oct"
			 , COALESCE(SUM( CASE WHEN "year" =  2019 AND "month" = 11   THEN total_cases END ), 0 ) "19-nov"
			 , COALESCE(SUM( CASE WHEN "year" =  2019 AND "month" = 12   THEN total_cases END ), 0 ) "19-dec"
			 -- Pivot 2020 months
			 , COALESCE(SUM( CASE WHEN "year" =  2020 AND "month" =  1   THEN total_cases END ), 0 ) "20-jan"
			 , COALESCE(SUM( CASE WHEN "year" =  2020 AND "month" =  2   THEN total_cases END ), 0 ) "20-feb"
			 , COALESCE(SUM( CASE WHEN "year" =  2020 AND "month" =  3   THEN total_cases END ), 0 ) "20-mar"
			 , COALESCE(SUM( CASE WHEN "year" =  2020 AND "month" =  4   THEN total_cases END ), 0 ) "20-apr"
			 , COALESCE(SUM( CASE WHEN "year" =  2020 AND "month" =  5   THEN total_cases END ), 0 ) "20-may"
			 , COALESCE(SUM( CASE WHEN "year" =  2020 AND "month" =  6   THEN total_cases END ), 0 ) "20-jun"
			 , COALESCE(SUM( CASE WHEN "year" =  2020 AND "month" =  7   THEN total_cases END ), 0 ) "20-jul"
			 , COALESCE(SUM( CASE WHEN "year" =  2020 AND "month" =  8   THEN total_cases END ), 0 ) "20-aug"
			 , COALESCE(SUM( CASE WHEN "year" =  2020 AND "month" =  9   THEN total_cases END ), 0 ) "20-sep"
			 , COALESCE(SUM( CASE WHEN "year" =  2020 AND "month" = 10   THEN total_cases END ), 0 ) "20-oct"
			 , COALESCE(SUM( CASE WHEN "year" =  2020 AND "month" = 11   THEN total_cases END ), 0 ) "20-nov"
			 , COALESCE(SUM( CASE WHEN "year" =  2020 AND "month" = 12   THEN total_cases END ), 0 ) "20-dec"
			 -- Pivot 2021 months
			 , COALESCE(SUM( CASE WHEN "year" =  2021 AND "month" =  1   THEN total_cases END ), 0 ) "21-jan"
			 , COALESCE(SUM( CASE WHEN "year" =  2021 AND "month" =  2   THEN total_cases END ), 0 ) "21-feb"
			 , COALESCE(SUM( CASE WHEN "year" =  2021 AND "month" =  3   THEN total_cases END ), 0 ) "21-mar"
			 , COALESCE(SUM( CASE WHEN "year" =  2021 AND "month" =  4   THEN total_cases END ), 0 ) "21-apr"
			 , COALESCE(SUM( CASE WHEN "year" =  2021 AND "month" =  5   THEN total_cases END ), 0 ) "21-may"
			 , COALESCE(SUM( CASE WHEN "year" =  2021 AND "month" =  6   THEN total_cases END ), 0 ) "21-jun"
			 , COALESCE(SUM( CASE WHEN "year" =  2021 AND "month" =  7   THEN total_cases END ), 0 ) "21-jul"
			 , COALESCE(SUM( CASE WHEN "year" =  2021 AND "month" =  8   THEN total_cases END ), 0 ) "21-aug"
			 , COALESCE(SUM( CASE WHEN "year" =  2021 AND "month" =  9   THEN total_cases END ), 0 ) "21-sep"
			 , COALESCE(SUM( CASE WHEN "year" =  2021 AND "month" = 10   THEN total_cases END ), 0 ) "21-oct"
			 , COALESCE(SUM( CASE WHEN "year" =  2021 AND "month" = 11   THEN total_cases END ), 0 ) "21-nov"
			 , COALESCE(SUM( CASE WHEN "year" =  2021 AND "month" = 12   THEN total_cases END ), 0 ) "21-dec"
			FROM 
			-- Subquery "grp"
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

------------------------------------------------------------
-- Normalize age group on confirmedcases and vaccinadata 
-- This feature engineering was done to be possible to 
--  
------------------------------------------------------------

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






---------------------------------------------------------
-- CREAT VIEW TO RETURN PIVOT TABLE of vaccine data
CREATE VIEW vax_by_phu AS
    SELECT 
		 phuext.reporting_phu
		,phuext.reporting_phu_address
		,phuext.reporting_phu_city
		,phuext.reporting_phu_postal_code
		,phuext.reporting_phu_website
		,phuext.reporting_phu_latitude
		,phuext.reporting_phu_longitude
        ,vax.*
    FROM 
        phu AS phuext
    INNER JOIN 
        (SELECT
            phu.reporting_phu_id AS vax_phu_id
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  1   THEN at_least_one_dose_cumulative END ), 0 ) "20-jan-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  1   THEN second_dose_cumulative END ), 0 ) 	    "20-jan-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  2   THEN at_least_one_dose_cumulative END ), 0 ) "20-feb-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  2   THEN second_dose_cumulative END ), 0 )       "20-feb-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  3   THEN at_least_one_dose_cumulative END ), 0 ) "20-mar-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  3   THEN second_dose_cumulative END ), 0 )       "20-mar-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  4   THEN at_least_one_dose_cumulative END ), 0 ) "20-apr-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  4   THEN second_dose_cumulative END ), 0 )       "20-apr-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  5   THEN at_least_one_dose_cumulative END ), 0 ) "20-may-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  5   THEN second_dose_cumulative END ), 0 )       "20-may-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  6   THEN at_least_one_dose_cumulative END ), 0 ) "20-jun-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  6   THEN second_dose_cumulative END ), 0 ) 		"20-jun-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  7   THEN at_least_one_dose_cumulative END ), 0 ) "20-jul-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  7   THEN second_dose_cumulative END ), 0 ) 		"20-jul-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  8   THEN at_least_one_dose_cumulative END ), 0 ) "20-aug-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  8   THEN second_dose_cumulative END ), 0 ) 		"20-aug-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  9   THEN at_least_one_dose_cumulative END ), 0 ) "20-sep-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  9   THEN second_dose_cumulative END ), 0 ) 		"20-sep-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" = 10   THEN at_least_one_dose_cumulative END ), 0 ) "20-oct-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" = 10   THEN second_dose_cumulative END ), 0 ) 		"20-oct-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" = 11   THEN at_least_one_dose_cumulative END ), 0 ) "20-nov-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" = 11   THEN second_dose_cumulative END ), 0 ) 		"20-nov-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" = 12   THEN at_least_one_dose_cumulative END ), 0 ) "20-dec-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" = 12   THEN second_dose_cumulative END ), 0 ) 		"20-dec-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  1   THEN at_least_one_dose_cumulative END ), 0 ) "21-jan-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  1   THEN second_dose_cumulative END ), 0 ) 	    "21-jan-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  2   THEN at_least_one_dose_cumulative END ), 0 ) "21-feb-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  2   THEN second_dose_cumulative END ), 0 )       "21-feb-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  3   THEN at_least_one_dose_cumulative END ), 0 ) "21-mar-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  3   THEN second_dose_cumulative END ), 0 )       "21-mar-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  4   THEN at_least_one_dose_cumulative END ), 0 ) "21-apr-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  4   THEN second_dose_cumulative END ), 0 )       "21-apr-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  5   THEN at_least_one_dose_cumulative END ), 0 ) "21-may-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  5   THEN second_dose_cumulative END ), 0 )       "21-may-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  6   THEN at_least_one_dose_cumulative END ), 0 ) "21-jun-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  6   THEN second_dose_cumulative END ), 0 ) 		"21-jun-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  7   THEN at_least_one_dose_cumulative END ), 0 ) "21-jul-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  7   THEN second_dose_cumulative END ), 0 ) 		"21-jul-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  8   THEN at_least_one_dose_cumulative END ), 0 ) "21-aug-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  8   THEN second_dose_cumulative END ), 0 ) 		"21-aug-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  9   THEN at_least_one_dose_cumulative END ), 0 ) "21-sep-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  9   THEN second_dose_cumulative END ), 0 ) 		"21-sep-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" = 10   THEN at_least_one_dose_cumulative END ), 0 ) "21-oct-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" = 10   THEN second_dose_cumulative END ), 0 ) 		"21-oct-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" = 11   THEN at_least_one_dose_cumulative END ), 0 ) "21-nov-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" = 11   THEN second_dose_cumulative END ), 0 ) 		"21-nov-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" = 12   THEN at_least_one_dose_cumulative END ), 0 ) "21-dec-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" = 12   THEN second_dose_cumulative END ), 0 ) 		"21-dec-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" = 10   THEN total_population END ), 0 ) "population"
        FROM 
            phu phu
        FULL OUTER JOIN 
            (SELECT 
                EXTRACT( YEAR  FROM "date" ) AS "year"
                ,EXTRACT( MONTH FROM "date" ) AS "month"
                ,agegroup
                ,phu_id
                ,MAX(at_least_one_dose_cumulative) AS at_least_one_dose_cumulative
                ,MAX(second_dose_cumulative) AS second_dose_cumulative
                ,total_population
                ,COUNT(1) AS counting
            FROM vaccinedata vdi
            WHERE
                agegroup <> 'Adults_18plus'
            AND
                agegroup <> 'Ontario_12plus'
            AND
                agegroup <> 'UNKNOWN'
            GROUP BY
                EXTRACT( YEAR  FROM "date" )
                ,EXTRACT( MONTH FROM "date" )
                ,agegroup
                ,phu_id
                ,total_population
            ) AS vd
        ON
            phu.reporting_phu_id = vd.phu_id
        GROUP BY phu.reporting_phu_id
        ) AS vax
    ON
        phuext.reporting_phu_id = vax.vax_phu_id;

------------------
-- CREAT VIEW TO RETURN PIVOT TABLE of cases and vaccine data
CREATE VIEW cases_and_vax AS
    SELECT 
		 phuext.reporting_phu
		,phuext.reporting_phu_address
		,phuext.reporting_phu_city
		,phuext.reporting_phu_postal_code
		,phuext.reporting_phu_website
		,phuext.reporting_phu_latitude
		,phuext.reporting_phu_longitude
        ,cases.*
        ,vax.*
    FROM 
        phu AS phuext
    INNER JOIN
        (SELECT  
            -- Pivoting by PHU_id
            phu.reporting_phu_id
            -- Pivot years
            , COALESCE(SUM( CASE WHEN cc."year" =  2019 THEN total_cases END ), 0 ) "cases_2019"
            , COALESCE(SUM( CASE WHEN cc."year" =  2020 THEN total_cases END ), 0 ) "cases_2020"
            , COALESCE(SUM( CASE WHEN cc."year" =  2021 THEN total_cases END ), 0 ) "cases_2021"
            -- Pivot months
            , COALESCE(SUM( CASE WHEN cc."month" =  1   THEN total_cases END ), 0 ) "cases_jan"
            , COALESCE(SUM( CASE WHEN cc."month" =  2   THEN total_cases END ), 0 ) "cases_feb"
            , COALESCE(SUM( CASE WHEN cc."month" =  3   THEN total_cases END ), 0 ) "cases_mar"
            , COALESCE(SUM( CASE WHEN cc."month" =  4   THEN total_cases END ), 0 ) "cases_apr"
            , COALESCE(SUM( CASE WHEN cc."month" =  5   THEN total_cases END ), 0 ) "cases_may"
            , COALESCE(SUM( CASE WHEN cc."month" =  6   THEN total_cases END ), 0 ) "cases_jun"
            , COALESCE(SUM( CASE WHEN cc."month" =  7   THEN total_cases END ), 0 ) "cases_jul"
            , COALESCE(SUM( CASE WHEN cc."month" =  8   THEN total_cases END ), 0 ) "cases_aug"
            , COALESCE(SUM( CASE WHEN cc."month" =  9   THEN total_cases END ), 0 ) "cases_sep"
            , COALESCE(SUM( CASE WHEN cc."month" = 10   THEN total_cases END ), 0 ) "cases_oct"
            , COALESCE(SUM( CASE WHEN cc."month" = 11   THEN total_cases END ), 0 ) "cases_nov"
            , COALESCE(SUM( CASE WHEN cc."month" = 12   THEN total_cases END ), 0 ) "cases_dec"
            -- Pivot 2019 months
            , COALESCE(SUM( CASE WHEN cc."year" =  2019 AND cc."month" = 10   THEN total_cases END ), 0 ) "cases_19-oct"
            , COALESCE(SUM( CASE WHEN cc."year" =  2019 AND cc."month" = 11   THEN total_cases END ), 0 ) "cases_19-nov"
            , COALESCE(SUM( CASE WHEN cc."year" =  2019 AND cc."month" = 12   THEN total_cases END ), 0 ) "cases_19-dec"
            -- Pivot 2020 months
            , COALESCE(SUM( CASE WHEN cc."year" =  2020 AND cc."month" =  1   THEN total_cases END ), 0 ) "cases_20-jan"
            , COALESCE(SUM( CASE WHEN cc."year" =  2020 AND cc."month" =  2   THEN total_cases END ), 0 ) "cases_20-feb"
            , COALESCE(SUM( CASE WHEN cc."year" =  2020 AND cc."month" =  3   THEN total_cases END ), 0 ) "cases_20-mar"
            , COALESCE(SUM( CASE WHEN cc."year" =  2020 AND cc."month" =  4   THEN total_cases END ), 0 ) "cases_20-apr"
            , COALESCE(SUM( CASE WHEN cc."year" =  2020 AND cc."month" =  5   THEN total_cases END ), 0 ) "cases_20-may"
            , COALESCE(SUM( CASE WHEN cc."year" =  2020 AND cc."month" =  6   THEN total_cases END ), 0 ) "cases_20-jun"
            , COALESCE(SUM( CASE WHEN cc."year" =  2020 AND cc."month" =  7   THEN total_cases END ), 0 ) "cases_20-jul"
            , COALESCE(SUM( CASE WHEN cc."year" =  2020 AND cc."month" =  8   THEN total_cases END ), 0 ) "cases_20-aug"
            , COALESCE(SUM( CASE WHEN cc."year" =  2020 AND cc."month" =  9   THEN total_cases END ), 0 ) "cases_20-sep"
            , COALESCE(SUM( CASE WHEN cc."year" =  2020 AND cc."month" = 10   THEN total_cases END ), 0 ) "cases_20-oct"
            , COALESCE(SUM( CASE WHEN cc."year" =  2020 AND cc."month" = 11   THEN total_cases END ), 0 ) "cases_20-nov"
            , COALESCE(SUM( CASE WHEN cc."year" =  2020 AND cc."month" = 12   THEN total_cases END ), 0 ) "cases_20-dec"
            -- Pivot 2021 months
            , COALESCE(SUM( CASE WHEN cc."year" =  2021 AND cc."month" =  1   THEN total_cases END ), 0 ) "cases_21-jan"
            , COALESCE(SUM( CASE WHEN cc."year" =  2021 AND cc."month" =  2   THEN total_cases END ), 0 ) "cases_21-feb"
            , COALESCE(SUM( CASE WHEN cc."year" =  2021 AND cc."month" =  3   THEN total_cases END ), 0 ) "cases_21-mar"
            , COALESCE(SUM( CASE WHEN cc."year" =  2021 AND cc."month" =  4   THEN total_cases END ), 0 ) "cases_21-apr"
            , COALESCE(SUM( CASE WHEN cc."year" =  2021 AND cc."month" =  5   THEN total_cases END ), 0 ) "cases_21-may"
            , COALESCE(SUM( CASE WHEN cc."year" =  2021 AND cc."month" =  6   THEN total_cases END ), 0 ) "cases_21-jun"
            , COALESCE(SUM( CASE WHEN cc."year" =  2021 AND cc."month" =  7   THEN total_cases END ), 0 ) "cases_21-jul"
            , COALESCE(SUM( CASE WHEN cc."year" =  2021 AND cc."month" =  8   THEN total_cases END ), 0 ) "cases_21-aug"
            , COALESCE(SUM( CASE WHEN cc."year" =  2021 AND cc."month" =  9   THEN total_cases END ), 0 ) "cases_21-sep"
            , COALESCE(SUM( CASE WHEN cc."year" =  2021 AND cc."month" = 10   THEN total_cases END ), 0 ) "cases_21-oct"
            , COALESCE(SUM( CASE WHEN cc."year" =  2021 AND cc."month" = 11   THEN total_cases END ), 0 ) "cases_21-nov"
            , COALESCE(SUM( CASE WHEN cc."year" =  2021 AND cc."month" = 12   THEN total_cases END ), 0 ) "cases_21-dec"
        FROM 
            phu phu
        FULL OUTER JOIN 
            (SELECT  
                reporting_phu_id
                ,EXTRACT( YEAR  FROM accurate_episode_date ) AS "year" 
                ,EXTRACT( MONTH FROM accurate_episode_date ) AS "month" 
                ,age_group
                ,count(row_id) as total_cases
            FROM confirmedcases cci
            GROUP BY 
                EXTRACT( YEAR  FROM accurate_episode_date )
                ,EXTRACT( MONTH FROM accurate_episode_date )
                ,age_group
                ,reporting_phu_id
            ) AS cc
        ON
            phu.reporting_phu_id = cc.reporting_phu_id
        GROUP BY phu.reporting_phu_id
        ) AS cases
    ON
        phuext.reporting_phu_id = cases.reporting_phu_id
    INNER JOIN 
        (SELECT
            phu.reporting_phu_id AS vax_phu_id
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  1   THEN at_least_one_dose_cumulative END ), 0 ) "20-jan-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  1   THEN second_dose_cumulative END ), 0 ) 	    "20-jan-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  2   THEN at_least_one_dose_cumulative END ), 0 ) "20-feb-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  2   THEN second_dose_cumulative END ), 0 )       "20-feb-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  3   THEN at_least_one_dose_cumulative END ), 0 ) "20-mar-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  3   THEN second_dose_cumulative END ), 0 )       "20-mar-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  4   THEN at_least_one_dose_cumulative END ), 0 ) "20-apr-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  4   THEN second_dose_cumulative END ), 0 )       "20-apr-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  5   THEN at_least_one_dose_cumulative END ), 0 ) "20-may-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  5   THEN second_dose_cumulative END ), 0 )       "20-may-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  6   THEN at_least_one_dose_cumulative END ), 0 ) "20-jun-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  6   THEN second_dose_cumulative END ), 0 ) 		"20-jun-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  7   THEN at_least_one_dose_cumulative END ), 0 ) "20-jul-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  7   THEN second_dose_cumulative END ), 0 ) 		"20-jul-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  8   THEN at_least_one_dose_cumulative END ), 0 ) "20-aug-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  8   THEN second_dose_cumulative END ), 0 ) 		"20-aug-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  9   THEN at_least_one_dose_cumulative END ), 0 ) "20-sep-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" =  9   THEN second_dose_cumulative END ), 0 ) 		"20-sep-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" = 10   THEN at_least_one_dose_cumulative END ), 0 ) "20-oct-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" = 10   THEN second_dose_cumulative END ), 0 ) 		"20-oct-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" = 11   THEN at_least_one_dose_cumulative END ), 0 ) "20-nov-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" = 11   THEN second_dose_cumulative END ), 0 ) 		"20-nov-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" = 12   THEN at_least_one_dose_cumulative END ), 0 ) "20-dec-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2020 AND vd."month" = 12   THEN second_dose_cumulative END ), 0 ) 		"20-dec-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  1   THEN at_least_one_dose_cumulative END ), 0 ) "21-jan-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  1   THEN second_dose_cumulative END ), 0 ) 	    "21-jan-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  2   THEN at_least_one_dose_cumulative END ), 0 ) "21-feb-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  2   THEN second_dose_cumulative END ), 0 )       "21-feb-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  3   THEN at_least_one_dose_cumulative END ), 0 ) "21-mar-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  3   THEN second_dose_cumulative END ), 0 )       "21-mar-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  4   THEN at_least_one_dose_cumulative END ), 0 ) "21-apr-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  4   THEN second_dose_cumulative END ), 0 )       "21-apr-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  5   THEN at_least_one_dose_cumulative END ), 0 ) "21-may-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  5   THEN second_dose_cumulative END ), 0 )       "21-may-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  6   THEN at_least_one_dose_cumulative END ), 0 ) "21-jun-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  6   THEN second_dose_cumulative END ), 0 ) 		"21-jun-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  7   THEN at_least_one_dose_cumulative END ), 0 ) "21-jul-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  7   THEN second_dose_cumulative END ), 0 ) 		"21-jul-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  8   THEN at_least_one_dose_cumulative END ), 0 ) "21-aug-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  8   THEN second_dose_cumulative END ), 0 ) 		"21-aug-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  9   THEN at_least_one_dose_cumulative END ), 0 ) "21-sep-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" =  9   THEN second_dose_cumulative END ), 0 ) 		"21-sep-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" = 10   THEN at_least_one_dose_cumulative END ), 0 ) "21-oct-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" = 10   THEN second_dose_cumulative END ), 0 ) 		"21-oct-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" = 11   THEN at_least_one_dose_cumulative END ), 0 ) "21-nov-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" = 11   THEN second_dose_cumulative END ), 0 ) 		"21-nov-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" = 12   THEN at_least_one_dose_cumulative END ), 0 ) "21-dec-1vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" = 12   THEN second_dose_cumulative END ), 0 ) 		"21-dec-2vax"
            , COALESCE(SUM( CASE WHEN vd."year" =  2021 AND vd."month" = 10   THEN total_population END ), 0 ) "population"
        FROM 
            phu phu
        FULL OUTER JOIN 
            (SELECT 
                EXTRACT( YEAR  FROM "date" ) AS "year"
                ,EXTRACT( MONTH FROM "date" ) AS "month"
                ,agegroup
                ,phu_id
                ,MAX(at_least_one_dose_cumulative) AS at_least_one_dose_cumulative
                ,MAX(second_dose_cumulative) AS second_dose_cumulative
                ,total_population
                ,COUNT(1) AS counting
            FROM vaccinedata vdi
            WHERE
                agegroup <> 'Adults_18plus'
            AND
                agegroup <> 'Ontario_12plus'
            AND
                agegroup <> 'UNKNOWN'
            GROUP BY
                EXTRACT( YEAR  FROM "date" )
                ,EXTRACT( MONTH FROM "date" )
                ,agegroup
                ,phu_id
                ,total_population
            ) AS vd
        ON
            phu.reporting_phu_id = vd.phu_id
        GROUP BY phu.reporting_phu_id
        ) AS vax
    ON
        cases.reporting_phu_id = vax.vax_phu_id

------------------
-- CREAT VIEW TO RETURN PIVOT TABLE of outbreaks
CREATE VIEW outbreak_by_phu AS
    SELECT 
		 phu.reporting_phu
		,phu.reporting_phu_address
		,phu.reporting_phu_city
		,phu.reporting_phu_postal_code
		,phu.reporting_phu_website
		,phu.reporting_phu_latitude
		,phu.reporting_phu_longitude
        ,ob.*
    FROM 
        phu AS phu
    INNER JOIN
		(SELECT
            obc.phu_num
            , COALESCE(SUM( CASE WHEN obc."year" =  2020 AND obc."month" = 10   THEN obcount END ), 0 ) "20-oct"
            , COALESCE(SUM( CASE WHEN obc."year" =  2020 AND obc."month" = 11   THEN obcount END ), 0 ) "20-nov"
            , COALESCE(SUM( CASE WHEN obc."year" =  2020 AND obc."month" = 12   THEN obcount END ), 0 ) "20-dec"
            , COALESCE(SUM( CASE WHEN obc."year" =  2021 AND obc."month" =  1   THEN obcount END ), 0 ) "21-jan"
            , COALESCE(SUM( CASE WHEN obc."year" =  2021 AND obc."month" =  2   THEN obcount END ), 0 ) "21-feb"
            , COALESCE(SUM( CASE WHEN obc."year" =  2021 AND obc."month" =  3   THEN obcount END ), 0 ) "21-mar"
            , COALESCE(SUM( CASE WHEN obc."year" =  2021 AND obc."month" =  4   THEN obcount END ), 0 ) "21-apr"
            , COALESCE(SUM( CASE WHEN obc."year" =  2021 AND obc."month" =  5   THEN obcount END ), 0 ) "21-may"
            , COALESCE(SUM( CASE WHEN obc."year" =  2021 AND obc."month" =  6   THEN obcount END ), 0 ) "21-jun"
            , COALESCE(SUM( CASE WHEN obc."year" =  2021 AND obc."month" =  7   THEN obcount END ), 0 ) "21-jul"
            , COALESCE(SUM( CASE WHEN obc."year" =  2021 AND obc."month" =  8   THEN obcount END ), 0 ) "21-aug"
            , COALESCE(SUM( CASE WHEN obc."year" =  2021 AND obc."month" =  9   THEN obcount END ), 0 ) "21-sep"
            , COALESCE(SUM( CASE WHEN obc."year" =  2021 AND obc."month" = 10   THEN obcount END ), 0 ) "21-oct"
            , COALESCE(SUM( CASE WHEN obc."year" =  2021 AND obc."month" = 11   THEN obcount END ), 0 ) "21-nov"
            , COALESCE(SUM( CASE WHEN obc."year" =  2021 AND obc."month" = 12   THEN obcount END ), 0 ) "21-dec"
		 FROM
			(SELECT   	
				 EXTRACT( YEAR  FROM o1."date" ) AS "year"
				,EXTRACT( MONTH FROM o1."date" ) AS "month"
				,o1.phu_num
				,o1.outbreak_group
				,count(o1.number_ongoing_outbreaks) AS obcount
			FROM 
				outbreaks o1
			FULL OUTER JOIN 
				outbreaks o2 
			  ON o2.id = (SELECT 
							 MIN(subq.id)
						  FROM 
							 outbreaks subq
						  WHERE 
							 subq.phu_num = o1.phu_num 
							  AND 
							 subq.outbreak_group = o1.outbreak_group
							  AND 
							 EXTRACT( YEAR  FROM subq."date" ) = EXTRACT( YEAR  FROM o1."date" ) 
							  AND 
							 EXTRACT( MONTH  FROM subq."date" ) = EXTRACT( MONTH  FROM o1."date" ) 
							  AND 
							 EXTRACT( DAY  FROM subq."date" ) > EXTRACT( DAY  FROM o1."date" ) 
							  AND subq.id > o1.id
						  )
			WHERE 
				o2.number_ongoing_outbreaks > o1.number_ongoing_outbreaks
			GROUP BY EXTRACT( YEAR  FROM o1."date" )
					,EXTRACT( MONTH FROM o1."date" )
					,o1.phu_num
					,o1.outbreak_group
			) AS obc
         GROUP BY obc.phu_num
        ) AS ob
    ON
        phu.reporting_phu_id = ob.phu_num;
