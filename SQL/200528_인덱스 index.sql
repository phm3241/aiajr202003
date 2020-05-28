
--2020. 05. 28

-----------------------------------------------------------------------------------

-- index

-----------------------------------------------------------------------------------
-- SQL 명령문의 처리 속도를 향상시키기 위해서 컬럼에 대해서 생성하는 오라클 객체
-- 장점 : 검색을 빠르게 하기위해 사용한다.(사용목적)
-- 단점 : DML 작업에는 성능저하가 올 수 있다. (수정작업이 많을 때, 시간과 공간에 대한 성능저하..)


--<< index 생성유무 확인(구조확인) >>
-- USER_IND_COLUMNS 데이터 딕셔너리 뷰로 인덱스의 생성 유무를 확인
desc user_ind_columns;

select index_name, table_name, column_name
from user_ind_columns;


---------------------------------
-- 테스트 테이블생성
drop table emp01;
create table emp01
as
select * from emp;

-- 데이터 추가 : 계속하면...2배씩 계속 추가된다...
insert into emp01 select * from emp01;
select count(*) from emp01;

-- 검색속도 확인할 데이터 추가 : 총 917,504개 행 
insert into emp01 (empno, ename) values (1111,'SON');

-- 검색속도 확인 : 0.05초
select *from emp01 where ename='SON';

-- 검색속도 확인할 데이터 추가 : 총 7,340,036개 행 
insert into emp01 (empno, ename) values (2222,'PARK');


-- 검색속도 확인 : 0.25초..(더 느려진 것을 확인가능..)
select *from emp01 where ename='PARK';  
select *from emp01 where ename='SON';


--질의 선택 후, f10 단축키로 확인하면 어떤 인덱스가 적용되었는지(어떤 인덱스의 영향을 받았는지) 확인가능


-----------------------------------------------------------------------------------
--<< index 생성 >>
-- create index 인덱스이름 on 테이블이름 (컬럼이름)

create index emp01_ename_index on emp01(ename);
-- 물리적인 저장공간이 필요하므로.. 저장하는데 시간이 걸린다..
-->> Index EMP01_ENAME_INDEX이(가) 생성되었습니다. 88초정도 소요..

-- 검색속도 확인 : 0.016초 .. 
-- (인덱스 생성 후, 이전 속도 0.25초에서.. 속도가 빨라진 것을 확인가능.. )
select *from emp01 where ename='PARK';


-----------------------------------------------------------------------------------
--<< index 삭제 >>
drop index emp01_ename_index;












