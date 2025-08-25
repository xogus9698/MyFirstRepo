SHOW USER1;
SHOW USER2;
-- �ּ�
-- DBA �����ͺ��̽� ����
-- ���������� �� ��, ������, ���� ����
-- �������� ��� ������ ������ �̿��ؼ� ������� ��й�ȣ�� �����ؼ� ���
-- DBA�� ������ ������ �� ����ϴ� ���� ����� ���� ���� ������ system������ �ο� �Ǿ� ����
-- �׷��� system ���������� ������ ������ �� ����

-- �������� �������� ����Ͽ� ���� ����, ������ ����� �� �ִ� ���Ѻο� ���������� ���Ѻο�
-- oracle DBMS ����
-- 11XE, 18C

-- 1. �������� ������
CREATE USER C##OLAUSER1 IDENTIFIED BY OLAUSER01;
DROP USER C##OLAUSER1;
-- 18C�� �Ѿ���� C##�� ������ �ۼ�

-- C##�� ���� ������ ������ �� �ֵ��� �ϴ� ��ɾ�
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; -- Session��(��) ����Ǿ����ϴ�.
CREATE USER OLAUSER01 IDENTIFIED BY OLAUSER01;


-- 2. ���ӱ���, ���ҽ�(���̺� ��) ���� ���� �ο�
-- ����: ���� -�׽�Ʈ ����: ORA-01045: ����� OLAUSER01�� CREATE SESSION ������ ���������� ����; �α׿��� �����Ǿ����ϴ�
-- 2.1 ���ӱ��� �ο�
GRANT CONNECT TO OLAUSER01; -- Grant��(��) �����߽��ϴ�.


-- 2.2 ���ҽ� ���Ѻο�
-- ORA-01031: ������ ������մϴ�, 01031. 00000 -  "insufficient privileges"
GRANT RESOURCE TO OLAUSER01; -- Grant��(��) �����߽��ϴ�.
-- ���� �Ҵ緮�� ���� ������ �����Ƿ� ���Ѻο� ��ɾ� ����

-- 2.3 �Ҵ緮 ���Ѻο�
-- ���� �Ҵ緮�� ���� ������ �����Ƿ� ���� �ο� ��ɾ� ����
-- SQL ����: ORA-01950: ���̺����̽� 'USERS'�� ���� ������ �����ϴ�.
-- 01950. 00000 -  "no privileges on tablespace '%s'"
ALTER USER OLAUSER01 DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

-- ������ KH, ��й�ȣ KH�� ������ �����Ͽ� ���� �� ���̺� �����ϰ�
-- ���� �߰��� �� �ֵ��� ��������

ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
CREATE USER KH IDENTIFIED BY KH;
GRANT CONNECT TO KH;
GRANT RESOURCE TO KH;
ALTER USER KH DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;



ALTER SESSION SET "_ORACLE_SCRIPT" = true;
CREATE USER CHUN IDENTIFIED BY CHUN;
GRANT CONNECT TO CHUN;
GRANT RESOURCE TO CHUN;
ALTER USER CHUN DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;
















