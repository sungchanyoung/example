#DDL문법 정리 
#---데이터 베이스 ---
#1.데이터 베이스 생성 -create;
create database database_name;

#2.데이터베이스 선택 (use)
# use 키워드를 사용하여 데이터베이스 선택시 모든 sql명령어가 선택된 DB 내에서 실행 
#,스키마명을 더블클릭한 것과 동일함 
use sys;
use database_name;

#데이터베이스의 유무를 확인하고 오류를 방지하는sql문 , 존재하지 않을 경우에만  새로 생성 
#if not exists~~~ 
create database if not exists database_name;
#데이터베이스 삭제 
#데이터베이스 삭제 기능 , 해당 작업은 실행 후 되돌릴수 X
drop database database_name;

#4.데이터베이스 목록 조회 
#서버에 존재하는 모든 데이터베이스 조회 목록을 확인 
# show database
show databases;
#데이블 생성 
create database if not exists example;
use example;
create table students(#테이블 생성시 데이터베이스명이 필수X (오류 방지를 위해 권장)
	student_id int primary key, 
    name varchar(100) not null,
    age int not null,
    major varchar(100)
);
#테이블의 구조 조회(describe,desc)
#테이블 구조: 정의된 컬럼 ,데이터 타입 ,키정보(제야조건)등을 조회 가능 
# descibe 테이블 명 
describe students;
#Field =각 컬럼의 이름 ,type :각 컬럼의 데이터 타입,null:  null허용 여부 
#key :각 컬럼의 제약상항(키) ,default 기본값 지정 ,Extra:제약사항 -추가 옵션 

#테이블 수정 
#alter table
#이미 존재하는 테아블의 구조흫 변경하느데 사용 
#컬럼 또는 제약 조건을 추가 삭제 ,수정 

# 컬럼  
# a) 컬럼 추가 add(colum)
# alter table 테이블 명 add colum 컬러명  데이터타입 기타 사항 
alter table `students`
add email varchar(255);
desc stduents; 

#컬럼 삭제 
#drop (colum)
alter table students
drop email;
desc students;
# if exists
#선택적 키워드 테이블이 존재하는 경우에만 삭제를 수행 
# #존재하는 삭하기떄문에 오류 
drop table `students`;

#데이터베이스와 테이블을 동시 지정 
#:테이블의 위치를 명확하게 전달하기 위해 .기호를 사용하여ㅛ 경로 지정을 권장 
# 데이터베이스 .테이블명 