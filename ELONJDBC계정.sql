SHOW USER;

CREATE TABLE STUDENT_TBL(
	STUDENT_NAME VARCHAR2(15) UNIQUE NOT NULL, -- �ѱ۷� 5���� 15����Ʈ
	FIRST_SCORE NUMBER DEFAULT 0,
	SECOND_SCORE NUMBER DEFAULT 0
);

SELECT * FROM student_tbl;

drop TABLE student_tbl;
rollback;

DELETE FROM student_tbl WHERE STUDENT_NAME = ' SS';

COMMIT;














