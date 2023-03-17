select * 
from `extra-vehicular_activity__eva__-_us_and_russia`;


select * 
from `extra-vehicular_activity__eva__-_us_and_russia` 
where crew like 'Buzz Aldrin';


select * 
from `extra-vehicular_activity__eva__-_us_and_russia` 
where country like 'USA';
--232 of the 371 vehicles were from USA


select * 
from `extra-vehicular_activity__eva__-_us_and_russia` 
where country like 'Russia';
--139 of the 371 vehicles were Russian


select country, duration, purpose 
from `extra-vehicular_activity__eva__-_us_and_russia` 
where duration >= 5
order by duration desc;
#Looking at the instances that were at least 5 minutes or longer


select country, duration, purpose 
from `extra-vehicular_activity__eva__-_us_and_russia` 
where duration < 1;
--Looking at the instances were less than one minute


select country, duration, purpose 
from `extra-vehicular_activity__eva__-_us_and_russia` 
where duration between 1 and 3
order by duration;
--52 of the instances  lasted between 1 and 3 minutes


SELECT count(distinct vehicle) 
from  `extra-vehicular_activity__eva__-_us_and_russia`;
--149 unique vehicle names


SELECT distinct vehicle 
from  `extra-vehicular_activity__eva__-_us_and_russia` 
order by vehicle asc;
--list of each distinct vehicle included in dataset
 
 
 select country, duration, purpose 
 from `extra-vehicular_activity__eva__-_us_and_russia` 
 order by duration desc 
 limit 10;
 --created view looking at the country, duration, and 
 --purpose columns of the 10 rows containing the longest durations, in other words maximum values(10)


select country, duration, purpose 
from `extra-vehicular_activity__eva__-_us_and_russia` 
order by duration asc 
limit 10;
--created view looking at the country, duration, and purpose 
--columns of the 10 rows containing the shortest durations, or minimum values(10)
