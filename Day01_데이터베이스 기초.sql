SHOW USER;

CREATE TABLE STUDENT_TBL(
    NO NUMBER,
    NAME VARCHAR2(12),
    AGE NUMBER
);

-- ���̺� ������ ��ȸ ������(��ɾ�)
SELECT * FROM student_tbl;

-- ���̺� ��Ű�� Ȯ�� ������
DESC STUDENT_TBL;

-- ���̺� ������ �߰�(����) ������
INSERT INTO student_tbl(NO, NAME, AGE) VALUES(1, '�Ͽ���', 33);

-- ���̺� ������ ���� ������
DELETE FROM student_tbl;

-- ���̺� ������ ���� ������
UPDATE student_tbl
SET NAME = '�̿���';

-- ������ ��ȸ ������
SELECT * FROM student_tbl;

-- ROLLBACK ���� Ŀ�� �������� ���ư�
ROLLBACK;

-- COMMIT Ʈ������ ���� �� ���� ����
COMMIT;



