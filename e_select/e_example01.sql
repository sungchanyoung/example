use baseball_league;

#1 
select * from players
where  birth_date> 1990;

select * from players
where  position ='외야수' and year(birth_date) < 1995;

select *from  players
order by birth_date desc ;

select *from teams
order by  founded_year ;

select distinct name  from teams;

select distinct position from players;

select position ,count(*) as player_count
from players
group by position 
having player_count >=2;
