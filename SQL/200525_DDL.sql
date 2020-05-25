
--2020. 05. 25 

-----------------------------------------------------------------------------------
-- DDL


-----------------------------------------------------------------------------------
-- << 테이블 생성 >>
-- create table 테이블의 이름() <- 괄호 안에 컬럼을 정의
-- (컬럼명1 데이터타입(사이즈), 컬럼명2 데이터타입(사이즈), ...)
-- 스키마정의.. (컬럼들의 집합), 순서는 상관없다. 

-- ddl_test 라는 이름의 테이블을 생성
-- 컬럼1 : no, 숫자타입, 사이즈 3
-- 컬럼2 : name, 가변 문자열 저장, 사이즈 10
-- 컬럼3 : birth, 날짜타입, 기본값 현재 날짜 시간

create table ddl_test (
    no number(3),
    name varchar(10),
    birth DATE default sysdate
);

-- 생성된 테이블 확인 
desc ddl_test;
select * from tab;
select * from ddl_test;



-----------------------------------------------------------------------------------
-- 생성된 테이블에 데이터 넣어주기 : insert into 
insert into ddl_test (no, name) values(1,'SCOTT');
-- 테이블 생성시 birth의 기본값이 현재시간으로 설정되어있기 때문에, 
-- 값을 넣어주지 않아도 현재시간으로 값이 들어간 것을 확인할 수 있다. 

-- emp 테이블 참조
-- 사원번호, 사원이름, 급여 3개의 칼럼으로 구성된
-- emp01테이블을 생성해 봅시다.
desc emp;

create table emp01(
    empno number(4),
    ename varchar2(10),
    sal number(7,2)
);

select * from tab;
desc emp01;

-----------------------------------------------------------------------------------
-- << 테이블의 복사 >> 
-- 서브쿼리 이용 ㅡ> 스키마 복사, 행 복사 가능, 단 제약조건 복사는 불가(default, not null등).
create table emp02
as
select * from emp;

-- 복사한 emp02 테이블 확인 (백업용으로 쓰기도 한다.)
select * from tab;
desc emp02;
select * from emp02;



-- emp 테이블의 empno와 ename 컬럼만 복사해서 
-- 새로운 테이블 emp03 생성
create table emp03
as
select empno, ename from emp;

-- 결과 테이블 확인
select * from emp03;
desc emp03;



-- emp 테이블의 10번 부서의 데이터만 복사해서 
-- 새로운 테이블 emp04 생성
create table emp04
as
select * from emp where deptno=10;

-- 결과 테이블 확인
select * from emp04;
desc emp04;



-- emp 테이블의 스키마 구조만 복사해서 
-- 새로운 테이블 emp05 생성
-- where 1<0 사용. 무조건 false가 나오기 때문에
create table emp05
as
select * from emp where 1<0;

-- 결과 테이블 확인
select * from emp05;
desc emp05;




-----------------------------------------------------------------------------------
--<< 테이블에 컬럼 추가/수정/삭제 >> 
-----------------------------------------------------------------------------------
-- << 테이블에 컬럼 추가 >> 
-- alter table 테이블 이름 add (컬럼정의);

-- emp01 테이블에 직급(job) 컬럼을 추가하자
alter table emp01
add(job varchar2(10));

-- 결과 테이블 확인 
desc emp01;



-----------------------------------------------------------------------------------
-- << 테이블에 컬럼 변경 >>
-- alter table 체이블이름 modify (컬럼정의);
-- 사이즈를 줄이면 그냥 기존데이터가 잘린다. 

-- 직급(job) 컬럼을 최대 30글자까지 저장할 수 있게 변경
alter table emp01
modify (job not null); --> 이렇게 처리하면 안되고, 아래처럼 작성해야한다. 

alter table emp01
modify (job varchar(30) not null); 

-- 결과 테이블 확인 
desc emp01;



-----------------------------------------------------------------------------------
-- << 테이블에 컬럼 삭제 >>
-- alter table 테이블이름 drop column 컬럼이름;
-- 바로 물리적으로 적용되므로, 복구가 불가. 주의해서 사용. 
alter table emp01 drop column sal;

-- 결과 테이블 확인 
desc emp01;


-- << 테이블 객체 삭제 >>
-- 바로 물리적으로 적용되므로, 복구가 불가. 주의해서 사용. 
-- drop table 테이블이름;
drop table emp01;

-- 결과 테이블 확인
select * from tab;
desc emp01;




-----------------------------------------------------------------------------------
-- << 테이블 객체 삭제 >>
-- 바로 물리적으로 적용되므로, 복구가 불가. 주의해서 사용. 
truncate table emp02;

-- 결과 테이블 확인
select * from tab;
desc emp02;
select * from emp02;


-- << 테이블에 이름의 변경 >>
-- rename 현재 테이블이름 to 새로운 테이블이름
rename emp02 to test_emp;

-- 결과 테이블 확인
select * from tab;
desc test_emp;
select * from test_emp;












