#스크어드 프로시저 
#: mysql에서 프로그래밍 기능이 필요로 할떄 사용하는 DB객체이다 

#2.스토어드 프로시저의 구조  
-- 구분 문자 :delimiter 
#: 스토어드 프로시저의 코딩부분을 일반 sql문 종료와 구분하기 위해 
#: ,스토어드 프로시저의 구분 문자를 변경 

-- 구분 문자 변경의 형태 
# delimiter $$
# delimiter;//구분문자 초기화 
-- 스토어드 프로시저의 기본 형태 
/*
	delimiter 
    create  procdure `절차형`
    begin  sql프로그래밍 코딩 
    end $$ delimiter
*/