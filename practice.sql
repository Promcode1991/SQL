select* from public."EMPLOYEE DATA"


select education, joiningyear,city
from "EMPLOYEE DATA"
where city = 'Pune'

select education, joiningyear,city,
	row_number() over(partition by city) as city_num,
	rank() over(partition by city) as city_rank,
	dense_rank() over(partition by city) as city_dense
from "EMPLOYEE DATA"

select education, joiningyear,city
from "EMPLOYEE DATA"
where city like 'Ban%'

select education, joiningyear,city
from "EMPLOYEE DATA"
where city = 'Bangalore' and joiningyear = 2017

select sum(age)
from "EMPLOYEE DATA"

select education, joiningyear,age,
case
	when education = 'Bachelors' then 'levels'
	when joiningyear = 2013 then 'matric_year'
	when age between 20 and 40 then 'ages'
end as graduationyear
from "EMPLOYEE DATA";

select education, joiningyear,age,
concat(education,'-',joiningyear,'-',age) as student_details
from "EMPLOYEE DATA"
