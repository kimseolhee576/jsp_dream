CREATE TABLE MEMBER_TABLE ( --회원가입테이블
	MEM_ID VARCHAR2(50) CONSTRAINT MEMBER_TABLE_MEM_ID_PK PRIMARY KEY, --아이디
	MEM_PASS VARCHAR2(30) CONSTRAINT MEMBER_TABLE_MEM_PASS_NN NOT NULL, --비밀번호
	MEM_NAME VARCHAR2(30) CONSTRAINT MEMBER_TABLE_MEM_NAME_NN NOT NULL, --이름
  MEM_BIRTH	NUMBER(20) CONSTRAINT MEMBER_TABLE_MEM_BIRTH_NN NOT NULL, --생년월일
	MEM_EMAIL1	VARCHAR2(30) CONSTRAINT MEMBER_TABLE_MEM_EMAIL1_NN NOT NULL, --이메일 EX)imreu
  MEM_EMAIL2	VARCHAR2(30) CONSTRAINT MEMBER_TABLE_MEM_EMAIL2_NN NOT NULL, --이메일 EX)naver.com
	MEM_HP	VARCHAR2(30) CONSTRAINT MEMBER_TABLE_MEM_HP_NN NOT NULL,  --핸드폰번호
  MEM_DATE DATE, --가입일
	MEM_STATUS	number(20) --회원탈퇴여부
);

CREATE TABLE RESERV_CHECK ( --예약내역 테이블
	RESERV_ID	VARCHAR2(50) CONSTRAINT RESERV_CHECK_RESERV_ID_PK PRIMARY KEY, --시퀀스
	MEM_ID	VARCHAR2(50) CONSTRAINT RESERV_CHECK_MEM_ID_FK REFERENCES MEMBER_TABLE(MEM_ID), --아이디
	RESERV_SS	NUMBER(20) CONSTRAINT RESERV_CHECK_RESERV_SS_NN NOT NULL, --입장권 소인(start Small)
	RESERV_SB	NUMBER(20) CONSTRAINT RESERV_CHECK_RESERV_SB_NN NOT NULL, --입장권 대인(start Big)
	RESERV_FS	NUMBER(20) CONSTRAINT RESERV_CHECK_RESERV_FS_NN NOT NULL, --자유이용권 소인(Free Small)
	RESERV_FB	NUMBER(20) CONSTRAINT RESERV_CHECK_RESERV_FB_NN NOT NULL, --자유이용권 대인(Free Big)
	RESERV_DATE	DATE, --주문한일자
	RESERV_DDAY	VARCHAR2(50) CONSTRAINT RESERV_CHECK_RESERV_DDAY_NN NOT NULL, --방문일자
	RESERV_TOTAL NUMBER(20) CONSTRAINT RESERV_CHECK_RESERV_TOTAL_NN NOT NULL --총금액
);

CREATE TABLE QNA_TABLE ( --문의게시판 테이블
	QNA_ID	NUMBER(20) CONSTRAINT QNA_TABLE_QNA_ID_PK PRIMARY KEY, --QNA게시글아이디(시퀀스)
	QNA_TITLE	VARCHAR2(100) CONSTRAINT QNA_TABLE_QNA_TITLE_NN NOT NULL, --제목
	QNA_CONTENT	VARCHAR2(1000) CONSTRAINT QNA_TABLE_QNA_CONTENT_NN NOT NULL, --내용
	QNA_HITS	NUMBER(6), --조회수
	QNA_STATUS	NUMBER(4) DEFAULT 0, --삭제여부
	MEM_ID1	VARCHAR2(50) CONSTRAINT QNA_TABLE_MEM_ID1_FK REFERENCES MEMBER_TABLE(MEM_ID), --아이디(작성자)
	QNA_DATE	DATE, --등록일
	MEM_ID2	VARCHAR2(50) CONSTRAINT QNA_TABLE_MEM_ID2_FK REFERENCES MEMBER_TABLE(MEM_ID), --아이디(수정자)
	QNA_UPDATEDATE	DATE, --수정일
	COMM_COUNT NUMBER(4) DEFAULT 0 --댓글 수
);

CREATE TABLE COMM_TABLE ( --문의게시판 댓글 테이블
	COMM_ID	NUMBER(20) CONSTRAINT COMM_TABLE_COMM_ID_PK PRIMARY KEY, --시퀀스
	QNA_ID NUMBER(20) CONSTRAINT COMM_TABLE_QNA_ID_FK REFERENCES QNA_TABLE(QNA_ID), --QNA게시글아이디(시퀀스)
  COMM_CONTENT VARCHAR2(1000) CONSTRAINT COMM_TABLE_COMM_CONTENT_NN NOT NULL, --내용
  MEM_ID1	VARCHAR2(50) CONSTRAINT COMM_TABLE_MEM_ID1_FK REFERENCES MEMBER_TABLE(MEM_ID), --아이디(작성자)
  COMM_DATE	DATE, --등록일
	MEM_ID2 VARCHAR2(50)	CONSTRAINT COMM_TABLE_MEM_ID2_FK REFERENCES MEMBER_TABLE(MEM_ID), --수정자아이디
	COMM_UPDATEDATE	DATE, --수정일
  COMM_STATUS NUMBER(4) DEFAULT 0 --삭제여부
);

CREATE TABLE NOTICE_TABLE ( --공지사항 테이블
	NOTICE_ID	VARCHAR2(50) CONSTRAINT NOTICE_TABLE_NOTICE_ID_PK PRIMARY KEY, --시퀀스
	NTITLE VARCHAR2(500)	CONSTRAINT NOTICE_TABLE_NTITLE_NN	NOT NULL, --제목
	NCONTENT VARCHAR2(1000) CONSTRAINT NOTICE_TABLE_NCONTENT_NN NOT NULL, --내용
	NOTICE_HITS NUMBER(6), --조회수
	NOTICE_STATUS	NUMBER(4), --삭제여부
	MEM_ID1	VARCHAR2(50) CONSTRAINT NOTICE_TABLE_MEM_ID1_FK REFERENCES MEMBER_TABLE(MEM_ID), --작성자아이디
	NOTICE_DATE	DATE, --등록일
	MEM_ID2 VARCHAR2(50) CONSTRAINT NOTICE_TABLE_MEM_ID2_FK REFERENCES MEMBER_TABLE(MEM_ID), --수정자아이디
	NOTICE_UPDATEDATE	DATE --수정일
);

CREATE TABLE REVIEW_TABLE ( --후기게시판 테이블
  REVIEW_ID VARCHAR2(50) CONSTRAINT REVIEW_TABLE_REVIEW_ID_PK PRIMARY KEY, --시퀀스
  REVIEW_TITLE VARCHAR2(500) CONSTRAINT REVIEW_TABLE_REVIEW_TITLE_NN NOT NULL, --제목
  REVIEW_CONTENT VARCHAR2(1000) CONSTRAINT REVIEW_TABLE_REVIEW_CONTENT_NN NOT NULL, --내용
  REVIEW_STAR NUMBER(4), --별점
  REVIEW_HITS NUMBER(6), --조회수
  REVIEW_STATUS NUMBER(4), --삭제여부
  MEM_ID1 VARCHAR2(50) CONSTRAINT REVIEW_TABLE_MEM_ID_FK REFERENCES MEMBER_TABLE(MEM_ID), --작성자아이디
  REVIEW_DATE DATE, --등록일
  MEM_ID2 VARCHAR2(50) CONSTRAINT REVIEW_TABLE_MEM_ID2_FK REFERENCES MEMBER_TABLE(MEM_ID), --수정자아이디
  REVIEW_UPDATEDATE DATE --수정일
);

--시퀀스 적용
--1.예약내역 테이블 시퀀스 적용
CREATE SEQUENCE SEQU_RESERV_CHECK START WITH 1 INCREMENT BY 1;
--2.문의게시판 테이블 시퀀스 적용
CREATE SEQUENCE SEQU_QNA_TABLE START WITH 1 INCREMENT BY 1;
--3.문의게시판 댓글 테이블 시퀀스 적용
CREATE SEQUENCE SEQU_COMM_TABLE START WITH 1 INCREMENT BY 1;
--4.공지사항 테이블 시퀀스 적용
CREATE SEQUENCE SEQU_NOTICE_TABLE START WITH 1 INCREMENT BY 1;
--5.후기게시판 테이블 시퀀스 적용
CREATE SEQUENCE SEQU_REVIEW_TABLE START WITH 1 INCREMENT BY 1;

--시퀀스 삭제
DROP SEQUENCE SEQU_REVIEW_TABLE; --후기게시판 시퀀스 삭제
DROP SEQUENCE SEQU_RESERV_CHECK; --예매내역 시퀀스 삭제
DROP SEQUENCE SEQU_QNA_TABLE; --문의게시판 시퀀스 삭제
DROP SEQUENCE SEQU_COMM_TABLE; --문의게시판 댓글 시퀀스 삭제
DROP SEQUENCE SEQU_NOTICE_TABLE; --공지사항 시퀀스 삭제
--시퀀스 있는지 확인
SELECT * FROM USER_SEQUENCES;


-- 회원가입 테이블 데이터 입력
-- 1. ADMIN(관리자) 회원가입
INSERT INTO MEMBER_TABLE VALUES('admin','1234','관리자',19930621,'admin','naver.com','01065096937', SYSDATE, 0);

-- 2. 홍길동 사람이 회원가입
INSERT INTO MEMBER_TABLE VALUES('test11','asd1234','홍길동',19910101,'test11','naver.com','01011111111', SYSDATE, 0);

-- 3. 김철수 사람이 회원가입
INSERT INTO MEMBER_TABLE VALUES('test22','qwe1234','김철수',19900101,'test22','naver.com','01022222222', SYSDATE, 0);

-- 회원가입 잘 들어갔는지 확인
SELECT * FROM MEMBER_TABLE;

--테이블 삭제시
DROP TABLE MEMBER_TABLE; --회원가입
DROP TABLE NOTICE_TABLE; --공지사항
DROP TABLE QNA_TABLE; --문의게시판
DROP TABLE COMM_TABLE; --문의게시판 댓글
DROP TABLE RESERV_CHECK; --예매내역
DROP TABLE REVIEW_TABLE; --후기게시판

SELECT * FROM USER_TABLES;
--회원가입 테이블 안에 데이터 모두 삭제
DELETE FROM MEMBER_TABLE;
delete from qna_table;
delete from comm_table;
-- 공지사항 데이터 입력
insert into notice_table values('n_'||sequ_notice_table.nextval,'[공지]꿈과 환상의 나라 드림월드 홈페이지 오픈 안내','드림월드가 홈페이지를 오픈했습니다. 많은 이용부탁드립니다. 감사합니다.',1234,0,'admin',sysdate-1,'admin',sysdate);
insert into notice_table values('n_'||sequ_notice_table.nextval,'[공지]드림월드 어트랙션 운휴 안내','드림월드 내의 놀이기구가 운휴될 예정이오니 참고 바랍니다.',984,0,'admin',sysdate-1,'admin',sysdate);
insert into notice_table values('n_'||sequ_notice_table.nextval,'[공지]드림월드 사회적 거리두기','드림월드 내에서는 사회적 거리두기가 적용됩니다. 항상 마스크 필히 착용 후 즐겨주시길 바랍니다.',126,0,'admin',sysdate,'admin',sysdate);
insert into notice_table values('n_'||sequ_notice_table.nextval,'[공지]2022 설날 이벤트 안내','드림월드에서 2022 설날 오프라인 행사 합니다. 많은 참석 바랍니다.',458,0,'admin',sysdate,'admin',sysdate);
commit;
-- 공지사항 내용 확인
select * from notice_table;

-- 문의 게시판 데이터 입력
insert into qna_table values(sequ_qna_table.nextval,'이용안내시간을 알고싶어요','오픈은 언제하고 몇시에 문을 닫나요',123,0,'test11',sysdate-1,'test11',sysdate-1,0);
insert into qna_table values(sequ_qna_table.nextval,'음식물 반입이 되나요?','밖에서 음식을 사서 들어갈수있나요?',777,0,'test11',sysdate,'test11',sysdate,0);
insert into qna_table values(sequ_qna_table.nextval,'드림월드는 어디에 있나요?','드림월드 가고싶은데 어디에있나요?',12,0,'test22',sysdate,'test22',sysdate,0);
insert into qna_table values(sequ_qna_table.nextval,'할인적용에 대해 알고싶어요','할인받고 싶은데 정보있나요?',223,0,'test22',sysdate,'test22',sysdate,0);
commit;
-- 문의게시판 내용 확인
SELECT * FROM QNA_TABLE;

-- 문의 게시판 댓글 데이터 입력
INSERT INTO COMM_TABLE VALUES(SEQU_COMM_TABLE.NEXTVAL,2,'오전9시부터 오후10시까지 입니다. 감사합니다.','admin',sysdate,'admin',sysdate,0);
INSERT INTO COMM_TABLE VALUES(SEQU_COMM_TABLE.NEXTVAL,1,'감사합니다:)','test11',sysdate,'test11',sysdate,0);
INSERT INTO COMM_TABLE VALUES(SEQU_COMM_TABLE.NEXTVAL,2,'감사합니다:)','test22',sysdate,'test11',sysdate,0);

commit;
-- 문의게시판 댓글 내용 확인
SELECT * FROM COMM_TABLE;

desc comm_table;
INSERT INTO COMM_TABLE VALUES(SEQU_COMM_TABLE.NEXTVAL,1,'감사합니다:) 즐거운하루되세요.','test11',sysdate,'test11',sysdate,0);
commit;

create view qna_view --문의게시판 목록 조회를 위한 view(qna_table 생성과 함께 같이 해줘야 함)
as
select * from (
	select rownum num, q.* from (
		select qna_id, qna_title, qna_content, qna_hits, qna_status, mem_id1,  to_char(qna_date,'yyyy-mm-dd') qna_date, mem_id2, qna_updatedate, comm_count from qna_table where qna_status=0 order by qna_id desc
	) q
);

insert into qna_table values(sequ_qna_table.nextval,'테스트','테스트',123,0,'admin',sysdate,'admin',sysdate,0); --문의게시글 샘플 글
