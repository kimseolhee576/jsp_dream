CREATE TABLE MEMBER_TABLE ( --ȸ���������̺�
	MEM_ID VARCHAR2(50) CONSTRAINT MEMBER_TABLE_MEM_ID_PK PRIMARY KEY, --���̵�
	MEM_PASS VARCHAR2(30) CONSTRAINT MEMBER_TABLE_MEM_PASS_NN NOT NULL, --���й�ȣ
	MEM_NAME VARCHAR2(30) CONSTRAINT MEMBER_TABLE_MEM_NAME_NN NOT NULL, --�̸�
  MEM_BIRTH	NUMBER(20) CONSTRAINT MEMBER_TABLE_MEM_BIRTH_NN NOT NULL, --��������
	MEM_EMAIL1	VARCHAR2(30) CONSTRAINT MEMBER_TABLE_MEM_EMAIL1_NN NOT NULL, --�̸��� EX)imreu
  MEM_EMAIL2	VARCHAR2(30) CONSTRAINT MEMBER_TABLE_MEM_EMAIL2_NN NOT NULL, --�̸��� EX)naver.com
	MEM_HP	VARCHAR2(30) CONSTRAINT MEMBER_TABLE_MEM_HP_NN NOT NULL,  --�ڵ�����ȣ
  MEM_DATE DATE, --������
	MEM_STATUS	number(20) --ȸ��Ż�𿩺�
);

CREATE TABLE RESERV_CHECK ( --���೻�� ���̺�
	RESERV_ID	VARCHAR2(50) CONSTRAINT RESERV_CHECK_RESERV_ID_PK PRIMARY KEY, --������
	MEM_ID	VARCHAR2(50) CONSTRAINT RESERV_CHECK_MEM_ID_FK REFERENCES MEMBER_TABLE(MEM_ID), --���̵�
	RESERV_SS	NUMBER(20) CONSTRAINT RESERV_CHECK_RESERV_SS_NN NOT NULL, --������ ����(start Small)
	RESERV_SB	NUMBER(20) CONSTRAINT RESERV_CHECK_RESERV_SB_NN NOT NULL, --������ ����(start Big)
	RESERV_FS	NUMBER(20) CONSTRAINT RESERV_CHECK_RESERV_FS_NN NOT NULL, --�����̿��� ����(Free Small)
	RESERV_FB	NUMBER(20) CONSTRAINT RESERV_CHECK_RESERV_FB_NN NOT NULL, --�����̿��� ����(Free Big)
	RESERV_DATE	DATE, --�ֹ�������
	RESERV_DDAY	VARCHAR2(50) CONSTRAINT RESERV_CHECK_RESERV_DDAY_NN NOT NULL, --�湮����
	RESERV_TOTAL NUMBER(20) CONSTRAINT RESERV_CHECK_RESERV_TOTAL_NN NOT NULL --�ѱݾ�
);

CREATE TABLE QNA_TABLE ( --���ǰԽ��� ���̺�
	QNA_ID	NUMBER(20) CONSTRAINT QNA_TABLE_QNA_ID_PK PRIMARY KEY, --QNA�Խñ۾��̵�(������)
	QNA_TITLE	VARCHAR2(100) CONSTRAINT QNA_TABLE_QNA_TITLE_NN NOT NULL, --����
	QNA_CONTENT	VARCHAR2(1000) CONSTRAINT QNA_TABLE_QNA_CONTENT_NN NOT NULL, --����
	QNA_HITS	NUMBER(6), --��ȸ��
	QNA_STATUS	NUMBER(4) DEFAULT 0, --��������
	MEM_ID1	VARCHAR2(50) CONSTRAINT QNA_TABLE_MEM_ID1_FK REFERENCES MEMBER_TABLE(MEM_ID), --���̵�(�ۼ���)
	QNA_DATE	DATE, --������
	MEM_ID2	VARCHAR2(50) CONSTRAINT QNA_TABLE_MEM_ID2_FK REFERENCES MEMBER_TABLE(MEM_ID), --���̵�(������)
	QNA_UPDATEDATE	DATE, --������
	COMM_COUNT NUMBER(4) DEFAULT 0 --���� ��
);

CREATE TABLE COMM_TABLE ( --���ǰԽ��� ���� ���̺�
	COMM_ID	NUMBER(20) CONSTRAINT COMM_TABLE_COMM_ID_PK PRIMARY KEY, --������
	QNA_ID NUMBER(20) CONSTRAINT COMM_TABLE_QNA_ID_FK REFERENCES QNA_TABLE(QNA_ID), --QNA�Խñ۾��̵�(������)
  COMM_CONTENT VARCHAR2(1000) CONSTRAINT COMM_TABLE_COMM_CONTENT_NN NOT NULL, --����
  MEM_ID1	VARCHAR2(50) CONSTRAINT COMM_TABLE_MEM_ID1_FK REFERENCES MEMBER_TABLE(MEM_ID), --���̵�(�ۼ���)
  COMM_DATE	DATE, --������
	MEM_ID2 VARCHAR2(50)	CONSTRAINT COMM_TABLE_MEM_ID2_FK REFERENCES MEMBER_TABLE(MEM_ID), --�����ھ��̵�
	COMM_UPDATEDATE	DATE, --������
  COMM_STATUS NUMBER(4) DEFAULT 0 --��������
);

CREATE TABLE NOTICE_TABLE ( --�������� ���̺�
	NOTICE_ID	VARCHAR2(50) CONSTRAINT NOTICE_TABLE_NOTICE_ID_PK PRIMARY KEY, --������
	NTITLE VARCHAR2(500)	CONSTRAINT NOTICE_TABLE_NTITLE_NN	NOT NULL, --����
	NCONTENT VARCHAR2(1000) CONSTRAINT NOTICE_TABLE_NCONTENT_NN NOT NULL, --����
	NOTICE_HITS NUMBER(6), --��ȸ��
	NOTICE_STATUS	NUMBER(4), --��������
	MEM_ID1	VARCHAR2(50) CONSTRAINT NOTICE_TABLE_MEM_ID1_FK REFERENCES MEMBER_TABLE(MEM_ID), --�ۼ��ھ��̵�
	NOTICE_DATE	DATE, --������
	MEM_ID2 VARCHAR2(50) CONSTRAINT NOTICE_TABLE_MEM_ID2_FK REFERENCES MEMBER_TABLE(MEM_ID), --�����ھ��̵�
	NOTICE_UPDATEDATE	DATE --������
);

CREATE TABLE REVIEW_TABLE ( --�ı��Խ��� ���̺�
  REVIEW_ID VARCHAR2(50) CONSTRAINT REVIEW_TABLE_REVIEW_ID_PK PRIMARY KEY, --������
  REVIEW_TITLE VARCHAR2(500) CONSTRAINT REVIEW_TABLE_REVIEW_TITLE_NN NOT NULL, --����
  REVIEW_CONTENT VARCHAR2(1000) CONSTRAINT REVIEW_TABLE_REVIEW_CONTENT_NN NOT NULL, --����
  REVIEW_STAR NUMBER(4), --����
  REVIEW_HITS NUMBER(6), --��ȸ��
  REVIEW_STATUS NUMBER(4), --��������
  MEM_ID1 VARCHAR2(50) CONSTRAINT REVIEW_TABLE_MEM_ID_FK REFERENCES MEMBER_TABLE(MEM_ID), --�ۼ��ھ��̵�
  REVIEW_DATE DATE, --������
  MEM_ID2 VARCHAR2(50) CONSTRAINT REVIEW_TABLE_MEM_ID2_FK REFERENCES MEMBER_TABLE(MEM_ID), --�����ھ��̵�
  REVIEW_UPDATEDATE DATE --������
);

--������ ����
--1.���೻�� ���̺� ������ ����
CREATE SEQUENCE SEQU_RESERV_CHECK START WITH 1 INCREMENT BY 1;
--2.���ǰԽ��� ���̺� ������ ����
CREATE SEQUENCE SEQU_QNA_TABLE START WITH 1 INCREMENT BY 1;
--3.���ǰԽ��� ���� ���̺� ������ ����
CREATE SEQUENCE SEQU_COMM_TABLE START WITH 1 INCREMENT BY 1;
--4.�������� ���̺� ������ ����
CREATE SEQUENCE SEQU_NOTICE_TABLE START WITH 1 INCREMENT BY 1;
--5.�ı��Խ��� ���̺� ������ ����
CREATE SEQUENCE SEQU_REVIEW_TABLE START WITH 1 INCREMENT BY 1;

--������ ����
DROP SEQUENCE SEQU_REVIEW_TABLE; --�ı��Խ��� ������ ����
DROP SEQUENCE SEQU_RESERV_CHECK; --���ų��� ������ ����
DROP SEQUENCE SEQU_QNA_TABLE; --���ǰԽ��� ������ ����
DROP SEQUENCE SEQU_COMM_TABLE; --���ǰԽ��� ���� ������ ����
DROP SEQUENCE SEQU_NOTICE_TABLE; --�������� ������ ����
--������ �ִ��� Ȯ��
SELECT * FROM USER_SEQUENCES;


-- ȸ������ ���̺� ������ �Է�
-- 1. ADMIN(������) ȸ������
INSERT INTO MEMBER_TABLE VALUES('admin','1234','������',19930621,'admin','naver.com','01065096937', SYSDATE, 0);

-- 2. ȫ�浿 ������ ȸ������
INSERT INTO MEMBER_TABLE VALUES('test11','asd1234','ȫ�浿',19910101,'test11','naver.com','01011111111', SYSDATE, 0);

-- 3. ��ö�� ������ ȸ������
INSERT INTO MEMBER_TABLE VALUES('test22','qwe1234','��ö��',19900101,'test22','naver.com','01022222222', SYSDATE, 0);

-- ȸ������ �� ������� Ȯ��
SELECT * FROM MEMBER_TABLE;

--���̺� ������
DROP TABLE MEMBER_TABLE; --ȸ������
DROP TABLE NOTICE_TABLE; --��������
DROP TABLE QNA_TABLE; --���ǰԽ���
DROP TABLE COMM_TABLE; --���ǰԽ��� ����
DROP TABLE RESERV_CHECK; --���ų���
DROP TABLE REVIEW_TABLE; --�ı��Խ���

SELECT * FROM USER_TABLES;
--ȸ������ ���̺� �ȿ� ������ ���� ����
DELETE FROM MEMBER_TABLE;
delete from qna_table;
delete from comm_table;
-- �������� ������ �Է�
insert into notice_table values('n_'||sequ_notice_table.nextval,'[����]�ް� ȯ���� ���� �帲���� Ȩ������ ���� �ȳ�','�帲���尡 Ȩ�������� �����߽��ϴ�. ���� �̿���Ź�帳�ϴ�. �����մϴ�.',1234,0,'admin',sysdate-1,'admin',sysdate);
insert into notice_table values('n_'||sequ_notice_table.nextval,'[����]�帲���� ��Ʈ���� ���� �ȳ�','�帲���� ���� ���̱ⱸ�� ���޵� �����̿��� ���� �ٶ��ϴ�.',984,0,'admin',sysdate-1,'admin',sysdate);
insert into notice_table values('n_'||sequ_notice_table.nextval,'[����]�帲���� ��ȸ�� �Ÿ��α�','�帲���� �������� ��ȸ�� �Ÿ��αⰡ �����˴ϴ�. �׻� ����ũ ���� ���� �� �����ֽñ� �ٶ��ϴ�.',126,0,'admin',sysdate,'admin',sysdate);
insert into notice_table values('n_'||sequ_notice_table.nextval,'[����]2022 ���� �̺�Ʈ �ȳ�','�帲���忡�� 2022 ���� �������� ���� �մϴ�. ���� ���� �ٶ��ϴ�.',458,0,'admin',sysdate,'admin',sysdate);
commit;
-- �������� ���� Ȯ��
select * from notice_table;

-- ���� �Խ��� ������ �Է�
insert into qna_table values(sequ_qna_table.nextval,'�̿��ȳ��ð��� �˰��;���','������ �����ϰ� ���ÿ� ���� �ݳ���',123,0,'test11',sysdate-1,'test11',sysdate-1,0);
insert into qna_table values(sequ_qna_table.nextval,'���Ĺ� ������ �ǳ���?','�ۿ��� ������ �缭 ������ֳ���?',777,0,'test11',sysdate,'test11',sysdate,0);
insert into qna_table values(sequ_qna_table.nextval,'�帲������ ������ �ֳ���?','�帲���� ���������� �������ֳ���?',12,0,'test22',sysdate,'test22',sysdate);
insert into qna_table values(sequ_qna_table.nextval,'�������뿡 ���� �˰��;���','���ιް� ������ �����ֳ���?',223,0,'test22',sysdate,'test22',sysdate);
commit;
-- ���ǰԽ��� ���� Ȯ��
SELECT * FROM QNA_TABLE;

-- ���� �Խ��� ���� ������ �Է�
INSERT INTO COMM_TABLE VALUES(SEQU_COMM_TABLE.NEXTVAL,2,'����9�ú��� ����10�ñ��� �Դϴ�. �����մϴ�.','admin',sysdate,'admin',sysdate,0);
INSERT INTO COMM_TABLE VALUES(SEQU_COMM_TABLE.NEXTVAL,1,'�����մϴ�:)','test11',sysdate,'test11',sysdate,0);
INSERT INTO COMM_TABLE VALUES(SEQU_COMM_TABLE.NEXTVAL,2,'�����մϴ�:)','test22',sysdate,'test11',sysdate,0);

commit;
-- ���ǰԽ��� ���� ���� Ȯ��
SELECT * FROM COMM_TABLE;

desc comm_table;
INSERT INTO COMM_TABLE VALUES(SEQU_COMM_TABLE.NEXTVAL,1,'�����մϴ�:) ���ſ��Ϸ��Ǽ���.','test11',sysdate,'test11',sysdate,0);
commit;


create view qna_view
as
select * from (
	select rownum num, q.* from (
		select qna_id, qna_title, qna_content, qna_hits, qna_status, mem_id1,  to_char(qna_date,'yyyy-mm-dd') qna_date, mem_id2, qna_updatedate, comm_count from qna_table where qna_status=0 order by qna_id desc
	) q
)
insert into qna_table values(sequ_qna_table.nextval,'테스트','테스트',123,0,'admin',sysdate-2,'test11',sysdate-2,0);
