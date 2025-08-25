SHOW USER;

CREATE TABLE STUDENT_TBL(
	STUDENT_NAME VARCHAR2(15) UNIQUE NOT NULL, -- 한글로 5글자 15바이트
	FIRST_SCORE NUMBER DEFAULT 0,
	SECOND_SCORE NUMBER DEFAULT 0
);

SELECT * FROM student_tbl;

drop TABLE student_tbl;
rollback;

DELETE FROM student_tbl WHERE STUDENT_NAME = ' SS';

COMMIT;














