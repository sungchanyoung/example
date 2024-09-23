#데이터 타입 ( data type)
#sql의데이터 형식 
#정수형 문자형 논리형 날짜형 
/*
1.정수형 : 숫자데이터를 저장하는데 사용 
>>데이터 타입에 따라 메모리 사용공간이 다름 

*/
create database if not exists `example` ;
use `example`;
create table `integer`(
	t_col tinyint,
    s_col smallint,
    i_col int,
    b_col bigint
);
#insert 데이터 삽입 
#Out of range 오류 해당 오류 데이터타입에 범위를 벗어나는 경우 발생 
insert into `integer`
value(128,32767,2000000000,9000000000000000);

create table person(
	age tinyint unsigned, -- 나이 (0~255);
    hieght smallint unsigned -- 키(0~65535)
);
 insert into person
 values(130,250);
 
 /*
 2 문자형 
 텍스트 데이터 저장 
 char(개수), varchar(개수)
 char (개수) 1~255바이트 
 고정길이 
 Ex)char(10)의 10자리 중 3자리만 사용하는 경우 ,7자리가 비워진 상태로 메모리 낭비 
 길이가 항상 일정하기 떄문에 검색 속도가 빠름 
 짧은 문자열 저장에 사용 
 Ex)성별 국가 코드 (kor,Chi,JPA)
 b)varchar(개수) 1~1638바이트 
 가변길이  문자혈 
 Ex)varchar (10)의 10자리 중 3자리만 사용하는 경우 ,7자리는 사라짐 
 길이가 일정하지 않아 검색 속도가 느림 
 선언된 길이 내에서 필요한 만큼만 데이터를 저장 
 EX)주소 ,상품명등 
 
 문자 수와 바이트 수의 차이 
 영어: 1바이트에 1개의 알파벳 
 한글: utf-8기준 한 글자 당 약 3바이트를 사용 
 >> varchar(255) 255/3 =약 85글자 
 
 다량의 텍스트 데이터 형식 
 a)text형식: 1~약 65000 바이트 
 long text 형식: 1~42억 바이트 
 
 b)blob(binary long object) :이미지 ,동영상 등의 데이터 
 bloob 형식: 1~약 65000바이트 
 longbloob : 1~42억 
 
 */
 create table `charecter`(
	name varchar(100),-- 제품명
    category char(100), -- 카테고리
    description text, -- 제품 설명 
    image blob
 );
 insert into `charecter`
 values('Laptop','Elec','삼성 갤럭시 북4 노트북 프로','example.com');