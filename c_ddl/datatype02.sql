#날짜 및 열거형 데이터 타입 
/*
날짜 형 :날짜 및 시간을 저장할때 
date(3byte):날짜만 /yyyy-mm-dd
>기념일 ,생일 

b) time(3byte)
>시간만 저장 /HH:MM:SS

C) datetime(8byte)
날짜와 시간을 저장 /YYYY-MM-DD_HH-MM_SS 형식 
구매일자 가입 일자 
*/
create table events(
event_name varchar(100),
event_date date
);
insert into events
values('Birthday',"2024-03-14");
select *from  events;

/*
열거형 타입(enum)
:사전에 정의된 값의 집합중 하나의 값을 저장 
제한된 값 목록 중에서 선택 
*/

create table rainbow(
	color enum('red','yellow','orange','purple'),
    description varchar(100)
);
insert into rainbow 
values('red',"빨강"),
	  ('yellow',"노랑"),
	  ('orange',"주항"),
	  ('PURPLE',"보라 ")