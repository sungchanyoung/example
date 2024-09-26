#기본 데이터 타입 간의 명시를 달리하는 문법 
use market_db;
#형변환의 종류 
#1. 명시적인 변환 
#cast(), convert() -형식만 다르고 기능은 동일
-- cast(값 as 데이터 형식)
-- convert(값,데이터 형식)
select  avg(price) as'평균가격'
from buy;
#cf) 형 변환시 정수형 데이터 타입 -signed, unsigned만 사용가능 
#signed:부호가 있는 정수 
# unsigned :부호가 없는 정수 

select cast(avg(price)as signed)
from buy;
-- 날짜 형 변환 (포멧을 맞추기 위한)
-- date타입 :yyyy-mm-dd;
select cast('2023##12!$02' as date);
select '100'+'200';
#CONTACT() 문자열을 이어서 작성 :contact 함수를 사용 
#2.묵시적인 변환 
-- 