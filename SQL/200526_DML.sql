
--2020. 05. 26

-----------------------------------------------------------------------------------

-- DML

-----------------------------------------------------------------------------------
-- << insert문 >>
-- 새로운 부서 정보를 입력 : 행단위 입력
-- insert into 테이블이름 (입력하고자하는 컬럼들) values (데이터들)
-- 입력 컬럼의 순서와 입력데이터의 순서는 같아야한다.

-------------------------------
-- 테이블 dept01로 insert확인 
-- 데이터 가져오지 않고 구조만 가져오는 것. 
-- where절이 무조건 false가 나오기 때문에
drop table dept01;
create table dept01
as
select * from dept where 1<0;

--> insert 확인
insert into dept01 (deptno, dname, loc) values (10, 'MARKETING','SEOUL');
-- 1 행 이(가) 삽입되었습니다.

insert into dept01 (loc, deptno, dname) values ('LONDON', 30, 'SALES');
-- 1 행 이(가) 삽입되었습니다
-- 컬럼명의 순서들을 바꿔서 입력순서가 바뀌어도 삽입된다. 

insert into dept01 values (20,'DESIGN','PUSAN');
-- 1 행 이(가) 삽입되었습니다.
-- 모든컬럼을 입력한다면, 컬럼명을 생략가능하다.


-- 테이블 확인
desc dept01;
select * from dept01;



-------------------------------
-- 테이블 dept02로 default 값 지정하고, 명시적 null값 추가 확인

create table dept02(
    deptno number(2) not null,
    dname varchar(20) not null,
    loc varchar(20) default 'SEOUL'
);

--> insert 확인
insert into dept02 (deptno, dname, loc) values (10, 'MARKETING','SEOUL');
-- 1 행 이(가) 삽입되었습니다
-- 컬럼명의 순서들을 바꿔서 입력순서가 바뀌어도 삽입된다. 

insert into dept02 (deptno, dname) values (40, 'DEV');
-- 1 행 이(가) 삽입되었습니다
-- 일부 컬럼만 추가가능, 추가하지 않은 컬럼값에는 디폴트 값으로 지정한 'SEOUL'이 들어간다. 



--> 테이블 확인
desc dept02;
select * from dept02;



-------------------------------
-- -- NULL 값 삽입하는 다양한 방법 : 암시적 방법
insert into dept01 (deptno, dname) values (40, 'DEV');
-- 1 행 이(가) 삽입되었습니다
-- 일부 컬럼만 추가가능, 추가하지 않은 컬럼값에는 디폴트 값 또는 null값으로 들어간다. 

-- NULL 값 삽입하는 다양한 방법 : 명시적 방법
insert into dept02 (deptno, dname, loc) values (20, 'MARKETING', null);
insert into dept02 (deptno, dname, loc) values (30, 'MARKETING', '');
-- 1 행 이(가) 삽입되었습니다
-- 명시적으로 null값을 넣었기 때문에(null 또는 '') 디폴트값인 'SEOUL'이 아니라 (null)이 들어간다. 


-------------------------------
-- 오류발생 : 컬럼명 목록과 values값 개수가 다를 때!, 데이터 타입이 맞지 않을 때!

insert into dept02 (deptno, dname) values (40, 'DEV', 'SEOUL');
-- 오류 보고 -
-- SQL 오류: ORA-00913: 값의 수가 너무 많습니다

insert into dept02 (deptno, dname, loc) values (10, 'MARKETING');
-- 오류 보고 -
-- SQL 오류: ORA-00947: 값의 수가 충분하지 않습니다

insert into dept02 values (40, 'DEV');
-- 오류 보고 -
-- SQL 오류: ORA-00947: 값의 수가 충분하지 않습니다



select * from dept02;

-- deptno와 dname이 not null 제약조건이 있음을 확인가능.
-- 따라서 insert into 할때 반드시 생략하지 않고 값을 입력해준다.
desc dept02;

insert into dept02 (dname, loc) values ('test', 'locTest');
--오류 보고 -
--ORA-01400: NULL을 ("SCOTT"."DEPT02"."DEPTNO") 안에 삽입할 수 없습니다

insert into dept02 (deptno, dname, loc) values (60, 'test', 'locTest');
-- 1 행 이(가) 삽입되었습니다.






