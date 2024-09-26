## sql프로그래밍 언어 
use market_db;
select* from member; 
select*from buy;
# 1변수 데이터를 담수는 그릇 -> 데이터를 저장하기위하 공간 

#-- 변수 선언 규칙 
# @ set @ 변수 이름 =변수의 값;
#--- 변수 값 출력 #select @변수이름 
# sql변수의 특징 
#: mysql워크 벤치 시작시 유지되지만 ,종료할 경우 사라짐(임시저장공간)
-- sql 사용 예제
set @myVar1 =5;
set @myVar2 =10;

select @myVar1; -- sql 비절차적 언어이기 때문에 원하는 구문을 따로 실행 가능 
select @myVar1+@myVar2;

-- 테이블을 조회하면서 변수 사용

set @height =166; 
select mem_name
from member
where height > @height;
# limit 키워드에 변수 사용 
#cf) limit : 반환하는 행을 제한 

#prepare execute를 사용한 변수 사용 
#prepare :sql을 실행하지 않고 준비 
#cf) prepare ansdptjdml '?'사용 
# :코드 작성시에나느 값이 채워지지 X, 실행시 채워짐 
# execute : 해당 키워드를 만나야 prepare 코드가 실행 

set@count =3; 
prepare mySQL  -- 준비 
from'select mem_name,height
from `member` 
order by `height`
limit ?';
execute mySQL using @count;
#코드블룩을 준비시키고 실행시 변수값을 사용하는경우 
#limit문에도 변수 사용이 가능 

#prepare 코드블럭명 
#from '실행할 코드 블록'
#execute 코드블록 명 using 사용할 변수 