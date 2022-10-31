-- SCHEMA: public

-- DROP SCHEMA IF EXISTS public ;

-- CREATE SCHEMA IF NOT EXISTS public
--     AUTHORIZATION pg_database_owner;

-- COMMENT ON SCHEMA public
--     IS 'standard public schema';

-- GRANT USAGE ON SCHEMA public TO PUBLIC;

-- GRANT ALL ON SCHEMA public TO pg_database_owner;
-- q1
CREATE TABLE cust_mstr(
	cust_no int PRIMARY KEY,
	fname varchar(64) NOT NULL,
	lname varchar(64) NOT NULL
	
);
CREATE TABLE add_dets(
	cust_no int PRIMARY KEY,
	add1 varchar(64) NOT NULL,
	add2 varchar(64) NOT NULL,
	stateAd varchar(64) NOT NULL,
	cityAD varchar(10) NOT NULL,
	pincode int NOT NULL	
);
	



INSERT INTO cust_mstr
VALUES(3,'xyz','pqr');

INSERT INTO add_dets
VALUES(3,'xyz','zzz','MH','Ravet',411033);

------------------------------------------
-- q2
SELECT * From cust_mstr
WHERE( fname='xyz'AND lname='pqr');
-------------------------------------------

-----------------------------------------------
-- q3
CREATE TABLE acc_fd_cust_dets(
	cust_no int PRIMARY KEY,
	acc_fd_no int NOT NULL
);
CREATE TABLE fd_dets(
	cust_no int NOT NULL,
	fd_sr_no int PRIMARY KEY,
	amt int NOT NULL
);
INSERT INTO fd_dets
VALUES(3,4,4000 );

SELECT * FROM fd_dets;
SELECT * FROM acc_fd_cust_dets;

SELECT * FROM cust_mstr INNER JOIN fd_dets ON fd_dets.cust_no = cust_mstr.cust_no where amt >= 5000;
-------------------------------------------------



SELECT * FROM cust_mstr;
SELECT * FROM add_dets;


CREATE TABLE emp_mstr(
	emp_no int PRIMARY KEY,
	f_name varchar(64) NOT NULL,
	l_name varchar(64) NOT NULL,
	M_name varchar(64) NOT NULL,
	dept varchar(64) NOT NULL,
	desg varchar(64) NOT NULL,
	branch_no INT NOT NULL
);

CREATE TABLE branch_mstr(
	b_name varchar(64) NOT NULL,
	branch_no INT NOT NULL
	);
------------------------------------	
SELECT * FROM emp_mstr;
SELECT * FROM branch_mstr;
--------------------------------------
