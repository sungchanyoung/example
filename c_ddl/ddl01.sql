#DDL 문법 정리 
#create, alter ,drop ,truncate

#--데이터베이스 
#1.create :데이터베이스 생성, 데이터를 저장하고 관리하는 첫 단계 
# 기본 형태 
# create database 데이터 베이스명 
create database example; 
#테이블 생성 
#create:테이블 생성 , 테이블에 저장될 데이터의 형태와 특서을 정의 
#데이터 타입,제약 조건, 기본값등을 설정 가능 
#create table테이블 명 (
#	컬럼1 데이터타입 [선택적 옵션],
#	컬럼1 데이터타입 [선택적 옵션],
#	컬럼1 데이터타입 [선택적 옵션]
#)
create table `example`.`students2` (
	student_id int, 
    student_name char(8),
    student_gender char(8)
)
default character set =utf8;

#테이블 삭제 
# drop 키워드 사용 
# 기본 형태 
#drop table `데이터베이스 명`.`테이블명 `
drop table `example`.`students2`;
# drop database `데이터베이스명`;
