#3 
select DISTINCT last_name, count(DISTINCT first_name) unique_cnt, count(last_name) cnt
from actor
where first_name IN
(SELECT DISTINCT first_name from actor group by first_name having Count(Distinct first_name)
order by first_name) AND last_name IN 
(SELECT DISTINCT last_name from actor group by last_name) AND last_name = "DAVIS"
group by last_name
order by last_name;