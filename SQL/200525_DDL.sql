
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
-- << 생성된 테이블에 데이터 넣어주기 >> 
-- insert into 
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
-- 테이블의 복사 : 서브 쿼리 이용 ㅡ> as 서브쿼리
-- 스키마 복사, 행 복사 가능, 단 제약조건 복사는 불가(default, not null등).
-- 백업용이나 기존데이터 기반으로 다른데이터 만들어내는 용도, 지표활용 등으로 복사 

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
-----------------------------------------------------------------------------------

--<< 테이블의 변경 : 컬럼 추가/수정/삭제 >> 

-----------------------------------------------------------------------------------
-- << 테이블에 컬럼 추가 >> 
-- alter table 테이블 이름 add(컬럼정의);

-- emp01 테이블에 직급(job) 컬럼을 추가하자
alter table emp01
add(job varchar2(10));

-- 결과 테이블 확인 
desc emp01;




-----------------------------------------------------------------------------------
-- << 테이블에 컬럼 수정 >>
-- alter table 테이블이름 modify(컬럼정의);
-- 기존에 있든 없든 상관이 없고, 덮어쓰는 식으로 처리된다. 
-- 사이즈를 줄이면 그냥 기존데이터가 잘리기 때문에 주의 필요. 

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
-- << 테이블 모든로우 삭제 >>
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



desc dept;
insert into dept values(10, 'test', 'seoul');
-- 10번은 가지고 있기 때문에 중복되는 값으로 인식되어 오류가 발생. 








-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

--<< 제약조건 >> 
--데이터 무결성을 위해 설정

-----------------------------------------------------------------------------------
-- <<제약조건의 2가지 방법>>
-- 컬럼의 제약정의는 컬럼 정의를 하면서 컬럼 옆에 정의하는 방법 2 (컬럼레벨에서 정의)
-- 컬럼의 타입을 모두 정의하고, 아래에 제약을 정의하는 방법 2  (테이블레벨에서 정의)

-- 컬럼레벨에서 정의하는 방식. 
-- create table emp01(
--    empno number(4) not null
--);

-- 이렇게 컬럼정의 후, 아래에 제약사항 정의하는 것도 방식. 
--create table emp01(
--    empno number(4),
--    primary key(empno)
--);

-- 이렇게 primary key 정의도 가능. 
--create table emp01(
--    empno number(4) primary key
--);


-- 그런데, not null 제약 : 컬럼의 값에 null 값을 허용하지 않는다. 
-- 컬럼 레벨에서만 정의가 가능


-- 사원 테이블(EMP02)을 
-- 사원번호, 사원명, 직급, 부서번호 4개의 칼럼으로 구성하되 
-- 이번에는 사원번호와 사원명에 NOT NULL 조건을 지정하도록 합시다.

-- 테이블 있는지 확인후 새로 생성하고 확인. 
-- not null 제약조건 포함하여 생성.
drop table emp02;

create table emp02(
    empno number(4) not null,  --컬럼레벨 : 컬럼정의할 때 바로 뒤쪽에서 정의하는 것.
    ename varchar2(10) not null,
    job varchar2(10),
    deptno number(2)
);

desc emp02;



-----------------------------------------------------------------------------------
-- 테이블에 정의되어있는 제약조건에 따라서 insert into 오류 또는 실행확인
insert into emp02 values (null, null, 'MANAGER', 10);
-- 오류 보고 -
-- ORA-01400: NULL을 ("SCOTT"."EMP02"."EMPNO") 안에 삽입할 수 없습니다

insert into emp02 values (1111, null, 'MANAGER', 10);
-- 오류 보고 -
-- ORA-01400: NULL을 ("SCOTT"."EMP02"."ENAME") 안에 삽입할 수 없습니다

insert into emp02 values (1111, 'son', 'MANAGER', 10);
-- 1 행 이(가) 삽입되었습니다.

-- 삽입되었는지 확인
select * from emp02;




-----------------------------------------------------------------------------------
--<< not null, unique 제약조건>>
--not null 제약조건 : NULL을 허용하지 않는다.
--unique 제약조건 : 중복된 값을 허용하지 않는다. 항상 유일한 값을 갖도록 한다.


-- 테이블 삭제하고 다시 생성, 제약조건(not null, unique) 
drop table emp03;
create table emp03(
    empno number(4) unique,
    ename varchar2(10) not null,
    job varchar2(10),
    deptno number(2)
);

-- desc 만 했을 때는 unique 속성이 보이지 않고
-- 왼쪽 패널의 테이블에서 확인해야한다. 
desc emp03;


--insert into로 결과 확인하기
insert into emp03 values(1111, 'TEST', 'MANAGER', 10);
-- 1 행 이(가) 삽입되었습니다.

-- 사원번호 1111 이 똑같아서 오류발생
insert into emp03 values(1111, 'TEST123', 'MANAGER', 20);
-- 오류 보고 -
-- ORA-00001: 무결성 제약 조건(SCOTT.SYS_C0011062)에 위배됩니다

insert into emp03 values(null, 'TEST123', 'MANAGER', 20);
-- 1 행 이(가) 삽입되었습니다.
-- null로 하면 삽입이 되는 문제가 발생한다. 따라서 생성할 때 unique not null로 제약조건 2개를 같이 적어줄 수 있다. 


-----------------------------------------------------------------------------------
--<< not null, unique 제약조건>>

-- 테이블 삭제하고 ㅡ> 제약조건 2개 같이 적어주고 다시 생성. 
drop table emp03;
create table emp03(
    empno number(4) unique not null,
    ename varchar2(10) not null,
    job varchar2(10),
    deptno number(2)
);


--insert into로 결과 확인하기
insert into emp03 values(1111, 'TEST', 'MANAGER', 10);
-- 1 행 이(가) 삽입되었습니다.

-- 사원번호 1111 이 똑같아서 오류발생
insert into emp03 values(1111, 'TEST123', 'MANAGER', 20);
-- 오류 보고 -
-- ORA-00001: 무결성 제약 조건(SCOTT.SYS_C0011062)에 위배됩니다

insert into emp03 values(null, 'TEST123', 'MANAGER', 20);
--오류 보고 -
--ORA-01400: NULL을 ("SCOTT"."EMP03"."EMPNO") 안에 삽입할 수 없습니다
-- unique 제약조건과 not null 제약조건이 모두 실행된 것을 확인가능. 








-----------------------------------------------------------------------------------
--<< 제약조건 조건명 명시하기>>
-- 사용자 제약 조건 명을 설정하기 위해서는 CONSTRAINT라는 키워드와 함께 제약 조건 명을 기술
-- constraint 테이블명_컬럼명_조건명 제약사항유형 

-- 조건명 명시하는 이유 : 입력오류가 발생했을때 exeption의 이름을 정해주는 것. 
-- 지정해주지 않았을 때는 오라클 내부에서 지정해준 이름이 나오므로, 
-- 어떤 컬럼에서 문제가 생겼는지 빠르게 찾기가 어렵다. 따라서 관리가 쉽도록 조건명 명시하는 것이 좋다. 



-- 사원번호, 사원명,
-- 직급, 부서번호 4개의 칼럼으로 구성된 EMP04 테이블을 생성하되 
-- 사원번호에는 유일키로 사원명은 NOT NULL 제약조건을 설정해 봅시다.

drop table emp04;
create table emp04(
    empno number(4) constraint emp04_empno_uk unique constraint emp04_empno_NN not null,
    ename varchar2(10)constraint emp04_ename_NN not null,
    job varchar2(10),
    deptno number(2)
);



--insert into로 결과 확인하기
insert into emp04 values(1111, 'TEST', 'MANAGER', 10);
-- 1 행 이(가) 삽입되었습니다.

-- 사원번호 1111 이 똑같아서 오류발생
insert into emp04 values(1111, 'TEST123', 'MANAGER', 20);
-- 오류 보고 -
-- ORA-00001: 무결성 제약 조건(SCOTT.EMP04_EMPNO_UK)에 위배됩니다
--> (제약 조건명 : EMP04_EMPNO_UK)이 바뀐것을 확인가능. 

insert into emp04 values(null, 'TEST123', 'MANAGER', 20);
--오류 보고 -
--ORA-01400: NULL을 ("SCOTT"."EMP04"."EMPNO") 안에 삽입할 수 없습니다
--> not null의 경우 (제약 조건명)이 나오지 않기 때문에, 보통 not null은 제약조건명을 따로 붙여주지 않는다. 








-----------------------------------------------------------------------------------
--<< primary key 제약조건 >>
-- 식별 기능을 갖는 칼럼은 유일하면서도 NULL 값을 허용하지 말아야 합니다.
-- 제약조건 (primary key)하게 되면 uinque와 not null을 모두 해준 것과 같다.


-- 사원번호, 사원명,--직급, 부서번호 4개의 칼럼으로 구성된 
-- 테이블을 생성하되 기본 키 제약 조건을 설정해 봅시다.
drop table emp05;
create table emp05(
    empno number(4) constraint emp05_empno_pk primary key,
    ename varchar2(10)constraint emp05_empname_NN not null,
    job varchar2(10),
    deptno number(2)
);

desc emp05;


--insert into로 결과 확인하기
insert into emp05 values(1111, 'TEST', 'MANAGER', 10);
-- 1 행 이(가) 삽입되었습니다.

-- 사원번호 1111 이 똑같아서 오류발생
insert into emp05 values(1111, 'TEST123', 'MANAGER', 20);
-- 오류 보고 -
-- ORA-00001: 무결성 제약 조건(SCOTT.EMP05_EMPNO_PK)에 위배됩니다
--> (제약 조건명 :SCOTT.EMP05_EMPNO_PK)이 바뀐것을 확인가능. 

insert into emp05 values(null, 'TEST123', 'MANAGER', 20);
--오류 보고 -
--ORA-01400: NULL을 ("SCOTT"."EMP05"."EMPNO") 안에 삽입할 수 없습니다
--> not null의 경우 (제약 조건명)이 나오지 않기 때문에, 보통 not null은 제약조건명을 따로 붙여주지 않는다.





-----------------------------------------------------------------------------------
--<< FOREIGN KEY 제약 조건 : 외래키 제약조건 >>
-- 부모 키가 되기 위한 칼럼은 반드시 부모 테이블의 기본 키(PRIMARY KEY)나 유일키(UNIQUE)로 설정되어 있어야 한다 
--   : dept 테이블의 deptno가  emp테이블의 부모테이블이므로 
--     반드시 dept 테이블의 deptno 컬럼에는 기본 키(PRIMARY KEY)나 유일키(UNIQUE)로 설정되어 있어야 한다

-- 컬럼레벨에서는 REFERENCES 부모테이블명(기본키)로 처리해도 되지만,
-- 테이블레벨에서는 foreign key로 외래키 제약조건을 작성해야한다. 


-- 사원번호, 사원명,--직급, 부서번호 4개의 칼럼으로 구성된 
-- 테이블을 생성하되 기본 키 제약 조건을 설정해 봅시다.
-- deptno 외래키로 제약조건을 설정 : deptno number(2) constraint emp06_deptno_fk REFERENCES dept(deptno)

drop table emp06;
create table emp06( 
    empno number(4) constraint emp06_empno_pk primary key,
    ename varchar2(10) constraint emp06_ename_NN not null,
    job varchar2(10),
    deptno number(2) constraint emp06_deptno_fk REFERENCES dept(deptno)   --외래키 제약조건. REFERENCES 부모테이블(컬럼명)
);

SELECT * FROM DEPT;
DESC EMP06;



--insert into로 결과 확인하기
insert into emp06 values(1111, 'TEST', 'MANAGER', 10);
-- 1 행 이(가) 삽입되었습니다.

-- 사원번호 1111 이 똑같아서 오류발생
insert into emp06 values(1111, 'TEST123', 'MANAGER', 20);
-- 오류 보고 -
-- ORA-00001: 무결성 제약 조건(SCOTT.EMP06_EMPNO_PK)에 위배됩니다
--> (제약 조건명 :SCOTT.EMP06_EMPNO_PK)이 바뀐것을 확인가능. 

insert into emp06 values(2222, 'TEST123', 'MANAGER', 50);
--오류 보고 -
--ORA-02291: 무결성 제약조건(SCOTT.EMP06_DEPTNO_FK)이 위배되었습니다- 부모 키가 없습니다
--> 부모키인 dept 테이블의 deptno가 10~40까지 있기 때문에, 
-- 자식테이블에서는 부모키에 있는 범위 또는 null값만 가능하므로 50은 들어갈 수없다. 





-----------------------------------------------------------------------------------
--<< chek 제약조건 >>  << default 제약조건 >>
-- 입력되는 값을 체크하여 설정된 값 이외의 값이 들어오면 오류 메시지와 함께 명령이 수행되지 못하게 하는 것
-- 값의 입력값 설정이나, 범위지정도 가능. 이외의 값은 입력할 수 없고 오류발생.  

-- 디폴트는 아무런 값을 입력 하지 않았을 때 디폴트제약의 값이 입력


-- 사원번호, 사원명, 직급, 부서번호, 직급, 성별, 생일 7개의 칼럼으로 구성된 테이블을 생성하되 
-- 기본 키 제약 조건, 외래키 제약 조건은 물론
-- CHECK 제약 조건도 설정해 봅시다.
-- default 제약 조건으로 birthday sysdate로 입력되도록 처리
-- default에는 constraint 따로 없다. 

create table emp07( 
    empno number(4) constraint emp07_empno_pk primary key,
    ename varchar2(10) constraint emp07_ename_NN not null,
    job varchar2(10) default 'MANAGER',
    deptno number(2) constraint emp07_deptno_fk REFERENCES dept(deptno),
    gender char(1) constraint emp07_gender_ck check(gender='M' or gender='F'),
    sal number(7,2) constraint emp07_sla_ck check(sal between 500 and 5000),
    birthday date default sysdate
);


--insert into로 결과 확인하기
insert into emp07 values(1111, 'test', null, 10, 'F', 600, null);
--1 행 이(가) 삽입되었습니다.

insert into emp07 values(1112, 'test', null, 10, 'K', 600, null);
--오류 보고 -
--ORA-02290: 체크 제약조건(SCOTT.EMP07_GENDER_CK)이 위배되었습니다
--> gender에서 check 제약조건에 해당되지 않은 값이므로, 오류발생

insert into emp07 (empno, ename, deptno, gender, sal) values(1113, 'test', 10, 'F', 1600);
select * from emp07;
-- 1 행 이(가) 삽입되었습니다.
--> gender와 sal에서 check 제약조건에 해당되는 값과 범위이므로, 오류없이 행 삽입 가능.

SELECT * FROM EMP07;






-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--2020.05.26
--<<테이블 레벨 방식으로 제약 조건 지정>>
-- 칼럼을 모두 정의하고 나서 
-- 테이블 정의를 마무리 짓기 전에 따로 생성된 칼럼들에 대한 제약 조건을 한꺼번에 지정하는 것
-- NOT NULL조건은 테이블 레벨 정의 방법으로 제약 조건을 지정할 수 없다


-- 테이블제거 후 생성. 테이블 레벨방식으로 제약조건 지정
drop table emp02;
create table emp02(
    empno number(4),
    ename varchar2(10) constraint emp02_ename_nn not null,
    job varchar2(10) not null,
    deptno number(2),
    -- 컬럼정의 후 제약조건 정의 
    constraint emp02_empno_pk primary key(empno),
    constraint emp02_ename_uk unique(ename),
    constraint emp02_ename_fk foreign key(deptno) references dept(deptno)
);













-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
-- << 전화번호 관리 프로그램 >>

-- 이름, 전화번호, 생일, 이메일
-- 전공, 학년
-- 부서이름, 직급
-- 모임이름, 닉네임
-- 대리키 : 일련번호 ㅡ> pIdx  (p_idx  or  member_idx  or  memberIDX   이것도 가능)

--> 이 데이터들을 저장할 수 있는 공간을 만들면 된다. --> 하나의 테이블 생성 
----> 전화번호 부 (Contact)
-- pk(기본키) 찾기 : 전화번호,,도 없을수도? .... ㅡ> 기본키 할 것이 없다 ㅡ> 대리키 사용! : 보통 일련번호 적용














