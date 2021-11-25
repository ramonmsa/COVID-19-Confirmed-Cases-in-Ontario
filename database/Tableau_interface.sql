
---------------------------------------------------------
-- Creat VIEW to return the clustered_phus data along with PHU geo information
CREATE VIEW view_clustered_phus AS
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
        clustered_phus cphu
     ON phu.Reporting_PHU_ID = cphu.reporting_phu_id
