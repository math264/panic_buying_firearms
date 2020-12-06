-- Instructions:

-- 1. Open QGIS > DB Manager
-- 2. Right-click Geopackage > Connect > add "math_panic_buying.gpkg"
-- 3. Open a SQL Query window
-- 4. Complete the query below
-- 5. Copy-n-paste and execute this query
-- 6. Save table to new CSV
-- 7. Table join based on state name spatial layer


select 
    state, 
    sum(case when month='2020-10' then handgun end) as handgun_2020_10,
	sum(case when month='2020-10' then rifle end) as rifle_2020_10,
	sum(case when month='2020-10' then total end) as total_2020_10,
	sum(case when month='2020-09' then handgun end) as handgun_2020_09,
	sum(case when month='2020-09' then rifle end) as rifle_2020_09,
	sum(case when month='2020-09' then total end) as total_2020_09,
	sum(case when month='2020-08' then handgun end) as handgun_2020_08,
	sum(case when month='2020-08' then rifle end) as rifle_2020_08,
	sum(case when month='2020-08' then total end) as total_2020_08
from 
    "math264_panic_buying"
group by 
    state
order by 
    state