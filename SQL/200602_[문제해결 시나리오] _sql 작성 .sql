
--2020.06.02
--[문제해결시나리오_sql 작성]


-----------------------------------------------------------------------------------
--1. 아래 조건에 맞는 DDL을 작성하시오.
-- ===== 전화번호 부( 테이블 이름 : Contact )
------ 기본정보(not null)
-- 대리키 : 일련번호 -> pIdx 기본키로 설정
-- 이름, 전화번호, 주소, 이메일 
-- 주소값과 이메일은 입력이 없을 때 기본값 입력
-- 친구의 타입 (카테고리) : univ, com, cafe 세가지 값만 저장 가능

------ 선택 정보
-- 전공, 학년
-- 회사이름, 부서이름, 직급
-- 모임이름, 닉네임


create table Contact(
    pIdx number(6),                                   -- 일련번호
    name varchar2(20) not null,                       -- 이름
    phonenumber varchar2(20) not null,                -- 전화번호
    address varchar2(50) default '입력없음' not null,   -- 주소
    email varchar2(20) default '입력없음' not null,     -- 이메일
    ContactType varchar2(20) not null,                -- 친구타입
    major varchar2(20),                               -- 전공
    grade number(1),                                  -- 학년
    comName varchar2(20),                             -- 회사이름    
    comDept varchar2(20),                             -- 부서이름
    comJob varchar2(20),                              -- 직급
    cafeName varchar2(20),                            -- 동호회이름
    cafeNickname varchar2(20),                        -- 닉네임
    
    constraint Ct_pIdx_pk PRIMARY KEY(pIdx),
    CONSTRAINT Ct_type_ck check (ContactType in ('univ', 'com', 'cafe') ),
    constraint Ct_grade_ck check (grade between 1 and 4)
    );
    
    
    
-----------------------------------------------------------------------------------
--2. DEPT 테이블에 데이터를 삽입하는 SQL을 작성하시오. 입력 데이터는 임의로 작성하시오.
insert into dept values(80, 'design', 'jeju');

SELECT * FROM dept;


-----------------------------------------------------------------------------------
--3. DEPT 테이블에 위에서 삽입한 데이터의 dname, loc 데이터를 변경하는 SQL을 작성하시오.
--입력 데이터는 임의로 작성하시오
update dept set dname='SALES', loc='NEW YORK' where deptno=80;


-----------------------------------------------------------------------------------
--4. DEPT 테이블에 위에서 삽입한 데이터를 deptno 컬럼의 값을 기반으로 삭제하는 SQL을 작성하시오.
delete from dept where deptno=80;


-----------------------------------------------------------------------------------
--5. 사용자가 보유한 테이블 목록을 확인하는 SQL문을 작성하시오.
select * from tab;


-----------------------------------------------------------------------------------
--6. EMP 테이블의 구조를 확인하는 SQL을 작성하시오.
desc emp;

-----------------------------------------------------------------------------------
--7. 사용자가 정의한 제약조건들을 확인하는 SQL문을 작성하시오.
select * from user_CONSTRAINTS;




-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--#2 아래 요구사항에 맞도록 고급 SQL 문을 작성하시오.
--1. EMP 테이블의 ename 컬럼에 인덱스를 생성하는 SQL을 작성하시오. 인덱스의 이름은 emp_index
create index emp_index on emp(ename);

select * from emp_index;
select * from emp;

SELECT * FROM USER_INDEXES 
WHERE TABLE_NAME='emp' ;

SELECT * FROM USER_IND_COLUMNS

WHERE INDEX_NAME='emp_index';

 




출처: https://multifrontgarden.tistory.com/41 [우리집앞마당]

--2. EMP 테이블과 DEPT 테이블을 조인하는 SQL을 기반으로 view 객체를 생성하는 SQL을 작성하시오.
--view 의 이름은 emp_view 로 하시오. 
create or replace view emp_view
as
select e.empno, e.ename, e.job, e.mgr, 
       e.hiredate, e.sal, e.comm, e.deptno,
       d.dname, d.loc
from emp e, dept d 
where e.deptno=d.deptno;



--3. EMP 테이블에서 모든 사원의 부서번호를 이름이 'SCOTT'인 사원의 부서번호로 변경하는 SQL을 작성하시오.
update emp set deptno=(select deptno from emp where ename='SCOTT'); 



















