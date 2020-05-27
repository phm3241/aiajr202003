
--2020. 05. 27

-----------------------------------------------------------------------------------

-- sequence  
-- 번호 자동 생성기

-----------------------------------------------------------------------------------

--<< sequence 생성 >>

-- create sequence 시퀀스이름         
-- start with 시작값 (기본값 0 시작)    --> 보통 많이 사용
-- increment by 증가값 (기본값 1)      --> 보통 많이 사용
-- maxvalue 최대값
-- minvalue 최소값 
-- cycle ㅣ nocycle 반복여부
-- cache ㅣ nocache 


-- 예제. 부서번호 deptno의 sequence 생성
create sequence dept_deptno_seq01;
-->> Sequence DEPT_DEPTNO_SEQ01이(가) 생성되었습니다.

--sequence의 nextval 확인 : 생성할 때마다 계속 증가
select DEPT_DEPTNO_SEQ01.nextval
from dual;

--sequence의 currval 확인 : 마지막으로 생성된 nextval값
select DEPT_DEPTNO_SEQ01.currval
from dual;









