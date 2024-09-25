use korea_db;

select name from members
order by name;

select * from members limit 3 offset 2; -- ,= offset생략 가능 
#3
select point from members order by point  desc limit 3; 
#4
select distinct grade from members;
#5
select area_code, max(point)
from members;
#6 
select gender, avg(point)
from members
group by gender;

#7
select grade ,avg(point) 
from members
group by grade
	having avg(point) >=250;


select grade ,min(point) 
from members
group by grade
	having min(point) >=100;


