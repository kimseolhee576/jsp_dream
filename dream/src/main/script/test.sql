

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
	QNA_ID	VARCHAR2(50) CONSTRAINT QNA_TABLE_QNA_ID_PK PRIMARY KEY, --QNA게시글아이디(시퀀스)
	QNA_TITLE	VARCHAR2(50) CONSTRAINT QNA_TABLE_QNA_TITLE_NN NOT NULL, --제목
	QNA_CONTENT	VARCHAR2(500) CONSTRAINT QNA_TABLE_QNA_CONTENT_NN NOT NULL, --내용
	QNA_HITS	NUMBER(4), --조회수
	QNA_STATUS	NUMBER(4) DEFAULT 0, --삭제여부
	MEM_ID1	VARCHAR2(50) CONSTRAINT QNA_TABLE_MEM_ID1_FK REFERENCES MEMBER_TABLE(MEM_ID), --아이디(작성자)
	QNA_DATE	DATE, --등록일
	MEM_ID2	VARCHAR2(50) CONSTRAINT NN_QNA_TABLE_MEM_ID2_FK REFERENCES MEMBER_TABLE(MEM_ID), --아이디(수정자)
	QNA_UPDATEDATE	DATE --수정일
);

CREATE TABLE COMM_TABLE ( --문의게시판 댓글 테이블
	COMM_ID	VARCHAR2(50) CONSTRAINT COMM_TABLE_COMM_ID_PK PRIMARY KEY, --시퀀스
	QNA_ID VARCHAR2(50) CONSTRAINT COMM_TABLE_QNA_ID_FK REFERENCES QNA_TABLE(QNA_ID), --QNA게시글아이디(시퀀스)
  COMM_CONTENT VARCHAR2(500) CONSTRAINT COMM_TABLE_COMM_CONTENT_NN NOT NULL, --내용
  MEM_ID1	VARCHAR2(50) CONSTRAINT COMM_TABLE_MEM_ID1_FK REFERENCES MEMBER_TABLE(MEM_ID), --아이디(작성자)
  COMM_DATE	DATE, --등록일
	MEM_ID2 VARCHAR2(50)	CONSTRAINT COMM_TABLE_MEM_ID2_FK REFERENCES MEMBER_TABLE(MEM_ID), --수정자아이디
	COMM_UPDATEDATE	DATE, --수정일
  COMM_STATUS NUMBER(4) DEFAULT 0 --삭제여부 
);

CREATE TABLE NOTICE_TABLE ( --공지사항 테이블
	NOTICE_ID	VARCHAR2(50) CONSTRAINT NOTICE_TABLE_NOTICE_ID_PK PRIMARY KEY, --시퀀스
	NTITLE VARCHAR2(50)	CONSTRAINT NOTICE_TABLE_NTITLE_NN	NOT NULL, --제목
	NCONTENT VARCHAR2(500) CONSTRAINT NOTICE_TABLE_NCONTENT_NN NOT NULL, --내용
	NOTICE_HITS NUMBER(4), --조회수
	NOTICE_STATUS	NUMBER(4), --삭제여부
	MEM_ID1	VARCHAR2(50) CONSTRAINT NOTICE_TABLE_MEM_ID1_FK REFERENCES MEMBER_TABLE(MEM_ID), --작성자아이디
	NOTICE_DATE	DATE, --등록일
	MEM_ID2 VARCHAR2(50) CONSTRAINT NOTICE_TABLE_MEM_ID2_FK REFERENCES MEMBER_TABLE(MEM_ID), --수정자아이디
	NOTICE_UPDATEDATE	DATE --수정일
);

CREATE TABLE REVIEW_TABLE ( --후기게시판 테이블
  REVIEW_ID VARCHAR2(50) CONSTRAINT REVIEW_TABLE_REVIEW_ID_PK PRIMARY KEY, --시퀀스
  REVIEW_TITLE VARCHAR2(50) CONSTRAINT REVIEW_TABLE_REVIEW_TITLE_NN NOT NULL, --제목
  REVIEW_CONTENT VARCHAR2(500) CONSTRAINT REVIEW_TABLE_REVIEW_CONTENT_NN NOT NULL, --내용
  REVIEW_STAR NUMBER(4), --별점
  REVIEW_HITS NUMBER(4), --조회수
  REVIEW_STATUS NUMBER(4), --삭제여부
  MEM_ID1 VARCHAR2(50) CONSTRAINT REVIEW_TABLE_MEM_ID_FK REFERENCES MEMBER_TABLE(MEM_ID), --작성자아이디
  REVIEW_DATE DATE, --등록일
  MEM_ID2 VARCHAR2(50) CONSTRAINT REVIEW_TABLE_MEM_ID2_FK REFERENCES MEMBER_TABLE(MEM_ID), --수정자아이디
  REVIEW_UPDATEDATE DATE --수정일
);

--시퀀스 적용

--1.예약내역 테이블 시퀀스 적용
CREATE SEQUENCE SEQU_RESERV_CHECK
  START WITH 1
  INCREMENT BY 1;

--2.문의게시판 테이블 시퀀스 적용
CREATE SEQUENCE SEQU_QNA_TABLE
  START WITH 1
  INCREMENT BY 1;
  
--3.문의게시판 댓글 테이블 시퀀스 적용
CREATE SEQUENCE SEQU_COMM_TABLE
  START WITH 1
  INCREMENT BY 1;
  
--4.공지사항 테이블 시퀀스 적용
CREATE SEQUENCE SEQU_NOTICE_TABLE
  START WITH 1
  INCREMENT BY 1;
  
--5.후기게시판 테이블 시퀀스 적용
CREATE SEQUENCE SEQU_REVIEW_TABLE
  START WITH 1
  INCREMENT BY 1;
  
-- 회원가입 테이블 데이터 입력

-- 1. ADMIN(관리자) 회원가입
INSERT INTO MEMBER_TABLE VALUES('admin','1234','관리자',19930621,'admin','naver.com',01065096937, SYSDATE, 0);

-- 2. 홍길동 사람이 회원가입
INSERT INTO MEMBER_TABLE VALUES('test1','1111','홍길동',19910101,'test1','naver.com',01011111111, SYSDATE, 0);

-- 3. 김철수 사람이 회원가입
INSERT INTO MEMBER_TABLE VALUES('test2','2222','김철수',19900101,'test2','naver.com',01022222222, SYSDATE, 0);

SELECT * FROM MEMBER_TABLE;

--테이블 삭제시
DROP TABLE MEMBER_TABLE; --회원가입
DROP TABLE NOTICE_TABLE; --공지사항
DROP TABLE COMM_TABLE; --문의게시판 댓글
DROP TABLE QNA_TABLE; --문의게시판
DROP TABLE RESERV_CHECK; --예매내역
DROP TABLE REVIEW_TABLE; --후기게시판

--회원가입 테이블 안에 데이터 모두 삭제
DELETE FROM MEMBER_TABLE;





