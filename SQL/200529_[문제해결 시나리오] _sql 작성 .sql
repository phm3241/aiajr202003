--2020.05.29
-- [문제해결 시나리오]
-- 자바(JAVA)기반 크로스 플랫폼 웹콘텐츠 개발자 양성과정
-- 데이터베이스 구현


--  #2 요구사항에 맞는 오브젝트를 생성하는 sql을 작성하시오.
--  1. 대리키 IDX, 회원 아이디, 이름, 비밀번호, 사진이름, 가입일 을 저장할 수 있는
--     이름이 MEMBER인 테이블을 생성하세요. o
--     회원 아이디에는 기본키 제약설정을 하고o, 이름과 비밀번호에는 not nullo,
--     가입일은 기본 값으로 sysdate가 입력되도록 하시오. o

--  2. MEMBER 테이블에서 이름 컬럼으로 인덱스 객체를 생성하시오.o

--  3. MEMBER 테이블에서 회원 아이디, 이름, 사진 정보만을 출력하는 view 객체를 생성하시오.
--   view의 이름은 member_view 로 생성하시오.


create table MEMBER(
    idx number(6),                                          -- 대리키
    id varchar2(20) constraint Member_id_pk primary key,    -- 회원 아이디 (기본키 설정)
    name varchar2(20) not null,                             -- 이름
    pw varchar2(20) not null,                               -- 비밀번호
    image_name varchar2(20),                                -- 사진이름
    regdateid date default sysdate                          -- 가입일
);    
    

create index MEMBER_name_index on MEMBER(name);


create or replace view member_vie
as
select id, name, image_name 
from MEMBER;




create table MEMBER(
    idx number(6),
    id varchar2(20) default 'N' not null,
    name number(1) default 1 not null,
    pw number(6),
    image_name varchar2(20),
    regdateid varchar2(20)
    constraint pu_idx_pk primary key(idx),
    constraint pu_fr_u_year_ck check (fr_u_year between 1 and 4),
    constraint pu_fr_ref_fk foreign key(fr_ref) REFERENCES phoneInfo_basic(idx) on delete cascade   
);