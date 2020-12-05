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