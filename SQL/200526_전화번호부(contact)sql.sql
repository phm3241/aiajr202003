
--2020. 05. 25 

-----------------------------------------------------------------------------------

-- << 전화번호 관리 프로그램 >>

-----------------------------------------------------------------------------------
-- 이름, 전화번호, 생일, 이메일
-- 전공, 학년
-- 부서이름, 직급
-- 모임이름, 닉네임
-- 대리키 : 일련번호 ㅡ> pIdx  (p_idx  or  member_idx  or  memberIDX   이것도 가능)

--> 이 데이터들을 저장할 수 있는 공간을 만들면 된다. --> 하나의 테이블 생성 
----> 전화번호 부 (Contact)
-- pk(기본키) 찾기 : 전화번호,,도 없을수도? .... ㅡ> 기본키 할 것이 없다 ㅡ> 대리키 사용! : 보통 일련번호 적용



-----------------------------------------------------------------------------------
--<< 실습 : 전화번호 후 테이블 생성하기>>

-- 대리키 : 일련번호 -> pIdx
-- 이름, 전화번호, 주소, 이메일 <- 기본정보
-- 주소값과 이메일은 입력이 없을 때 기본값 입력
-- 친구의 타입 (카테고리) : univ, com, cafe 세가지 값만 저장 가능 ㅡ> 체크조건 

------ 선택 정보
-- 전공, 학년
-- 회사이름, 부서이름, 직급
-- 모임이름, 닉네임


-- 실습1 : 컬럼레벨에서 제약조건 정의하기
-- not null 제약조건은 컬럼레벨에서만 가능
-- default는 테이블레벨에서 정의해도 되지만, 컬럼레벨에서 해주는 것이 보기 좋음. 
-- dsfault 값은 not null 앞에 와야한다. 

create table contact1(
    -- 기본정보
    pIdx number(4) constraint contact_pIdx_pk primary key,                  --기본키, 대리키
    name varchar2(10) not null,                                             --이름
    phonenumber varchar2(13) constraint contact_phonenumber_uk not null,    --전화번호
    addess varchar2(50) default '정보없음' not null,                          --주소
    email varchar2(20) default '정보없음' not null,                           --이메일
    
    -- 친구타입
    friendType varchar2(20) constraint contact_friendType_ck 
        check(friendType='univ' or friendType='com' or friendType='cafe'),
    
    -- 선택정보
    major varchar2(20),         --전공
    year number(1),             --학년
    company varchar2(20),       --회사이름
    dept varchar2(20),          --부서이름  
    job varchar2(20),           --직급
    cafeName varchar2(20),      --동호회이름
    nickName varchar2(20)       --닉네임
);



-- 실습2 : 테이블레벨에서 제약조건 정의하기
-- not null 제약조건은 컬럼레벨에서만 가능
-- default는 테이블레벨에서 정의해도 되지만, 컬럼레벨에서 해주는 것이 보기 좋음. 
-- dsfault 값은 not null 앞에 와야한다. 

create table contact2(
    -- 기본정보
    pIdx number(4),                                     --기본키, 대리키
    name varchar2(10) not null,                         --이름
    phonenumber varchar2(13) not null,                  --전화번호
    addess varchar2(50) default '정보없음' not null,      --주소
    email varchar2(20) default '정보없음' not null,       --이메일
    
    -- 친구타입
    friendType varchar2(20), 
    
    -- 선택정보
    major varchar2(20),         --전공
    year number(1),             --학년
    company varchar2(20),       --회사이름
    dept varchar2(20),          --부서이름  
    job varchar2(20),           --직급
    cafeName varchar2(20),      --동호회이름
    nickName varchar2(20),      --닉네임
    
    --제약조건
    constraint ct_pIdx_pk primary key(pIdx),
    constraint ct_phonenumber_uk unique(phonenumber),
    constraint ct_friendType_ck 
        check (friendType='univ' or friendType='com' or friendType='cafe')
        -- check (friendType in('univ', 'com', 'cafe'))
);


-----------------------------------------------------------------

-- 사용자 정의 제약조건을 저장하는 딕셔너리 테이블
desc user_constraints;
select CONSTRAINT_NAME from user_constraints;
select * from user_constraints where table_name='PHONEBOOK';

-----------------------------------------------------------------


drop table contact2;
drop table phoneInfo_basic;
-----------------------------------------------------------------------------------
--<< 실습 : 테이블 명세서를 확인하고 전화번호부 DDL 을 작성 >>
-- 테이블 명세서가 나오는 시점 : 설계 끝나고, 물리모델링이 끝나고 타입 등이 정해진 후 문서형식으로 나온다.
-- 테이블 명세서에 나와있는 것과 똑같이 작성해줘야함. 


CREATE TABLE phoneInfo_basic(
    idx number(6),                         --기본키
    fr_name varchar2(20) not null,         --이름
    fr_phonenumber varchar2(20) not null,  --전화번호
    fr_addess varchar2(20),                --주소
    fr_email varchar2(20),                 --이메일
    fr_redate date default sysdate,        --등록시간
    constraint ct_idx_pk primary key(idx),
    constraint ct_phonenumber_uk unique(fr_phonenumber) 
);



CREATE TABLE phoneInfo_univ(
    idx number(6),                                     --기본키
    fr_u_major varchar2(20) default 'N' not null,      --전공
    fr_u_year number(1) default 1 not null,            --학년
    fr_ref number(6) not null,                         --기본정보 외래키
    constraint ct_idx_pk primary key(idx),
    constraint ct_fr_u_year_ck check(fr_u_year between 1 and 5),
    constraint ct_fr_ref_fk foreign key(fr_ref) references phoneInfo_basic(idx)
);

--drop TABLE phoneInfo_univ;

CREATE TABLE phoneInfo_com(
    idx number(6),                                     --기본키
    fr_c_company varchar2(20) default 'N' not null,    --회사이름
    fr_ref number(6) not null,                         --기본정보 외래키
    constraint ct_idx_pk primary key(idx),
    constraint ct_fr_ref_fk foreign key(fr_ref) references phoneInfo_basic(idx)
);

--drop TABLE phoneInfo_com;












