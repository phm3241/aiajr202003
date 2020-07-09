-- 방명록 테이블

drop table guestbook_message;

-- 방명록 테이블 생성
create table guestbook_message (
    message_id number(4) primary key, 
    guest_name varchar2(50) not null,
    password varchar2(10) not null,
    message varchar2(1000) not null
);

create sequence message_id_seq INCREMENT by 1 start with 1;
drop sequence message_id_seq;

insert into guestbook_message values (message_id_seq.nextVal, '테스터01', '1111', '글쓰기 테스트');
insert into guestbook_message values (message_id_seq.nextVal, '테스터02', '1111', '글쓰기 테스트');
insert into guestbook_message values (message_id_seq.nextVal, '테스터03', '1111', '글쓰기 테스트');
insert into guestbook_message values (message_id_seq.nextVal, '테스터04', '1111', '글쓰기 테스트');
insert into guestbook_message values (message_id_seq.nextVal, '테스터05', '1111', '글쓰기 테스트');
insert into guestbook_message values (message_id_seq.nextVal, '테스터06', '1111', '글쓰기 테스트');
insert into guestbook_message values (message_id_seq.nextVal, '테스터07', '1111', '글쓰기 테스트');
insert into guestbook_message values (message_id_seq.nextVal, '테스터08', '1111', '글쓰기 테스트');
insert into guestbook_message values (message_id_seq.nextVal, '테스터09', '1111', '글쓰기 테스트');
insert into guestbook_message values (message_id_seq.nextVal, '테스터10', '1111', '글쓰기 테스트');

delete guestbook_message;
select * from guestbook_message;

select rownum, message_id, message
from (select *from guestbook_message order by message_id);


select rownum, message_id, guest_name, password, message
from guestbook_message order by message_id desc;


select rownum, message_id, guest_name, password, message
from (
        -- 최근글 순으로 정렬
        select * from guestbook_message order by guestbook_message.message_id desc
);

-- 2page : 4~6번 게시글

select rownum rnum, message_id, guest_name, password, message
from (
        -- 최근글 순으로 정렬
        select * from guestbook_message order by guestbook_message.message_id desc
)
where rownum <= 6;

select message_id, guest_name, password, message
from (
        select rownum rnum, message_id, guest_name, password, message
        from (
                -- 최근글 순으로 정렬
                select * from guestbook_message order by guestbook_message.message_id desc
        )
        where rownum <= 6
)
where rnum >= 4;



select count(*) from guestbook_message;

-- 글선택 코드 확인
select * from guestbook_message where message_id = 10; 

-- 글삭제 코드 확인
delete from guestbook_message where message_id=11; 

-- 테이블 내용 확인
select * from guestbook_message;




commit;

rollback;


