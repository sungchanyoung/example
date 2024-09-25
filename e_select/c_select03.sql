use korea_db;

#select a from b where c;
/*
	order by :정렬 
    limit 결과 개수의 제한 
    distinct:: 중복된 데이터를 제거 
    group by: 지정한 열 데이터들 중 같은 데이터끼리 묶어서 호출 
    having :그룹화된 데이터에 조건을 추가 
*/
#.order by 
#:데이터 정렬  -결과의 값이나 개수에 영향 X 
-- 기본값 asc(오름차순), desc(내림 차순)
select * from members
order by 
	join_date desc;

select * from members
order by 
	grade asc, point asc;
select distinct area_code  from members; 
select distinct grade  from members; 

#group by : 그룹으로 묶어주는 역활 
#>> 여러 행을 그룹화하여 집계 함수를 적용에 주로 사용 
#>> 집계 함수 
#>> 그룹화된 데이터에 대한 계산 
#sum(),avg(),min(),max()
#count()
#count(distinct) :행의 갯수 
select grade, count(*) member_count from members
group by grade;

-- 지역 평균 포인트 계산 
select area_code, avg(point) member_points  from members
group by area_code; 
# having 절 
#group by와 함께 사용 ,그룹화된 결과에 대한 조건을 지정 
#where과 유사하지만 그룹화된 데이터에 대한 조건에 사용 
select grade ,count(*) as member_count from members
group by
	grade
having 
	count(*) >=2;
select area_code, avg(point) avg_point from members
group by area_code
having
	avg(point) >200;