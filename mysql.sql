--connect to cloud SQL instance
--gcloud sql connect archana --user=root


create databases HR;
show databases;
use HR;

--create tables


CREATE TABLE departments(
     dept_id CHAR(5) PRIMARY KEY,
	 dept_name VARCHAR(40),
	 dept_mgr VARCHAR(40)
	 );
   

  CREATE TABLE address(
    emp_address_id VARCHAR(10) PRIMARY KEY,
	emp_add1 VARCHAR(50),
	emp_add2 VARCHAR(50),
	emp_zipcode VARCHAR(7),
	emp_city VARCHAR(50),
	emp_state VARCHAR(50),
	);
	

 
CREATE TABLE employee(
  emp_id INTEGER(11) NOT NULL,
  first_name VARCHAR(15),
  last_name VARCHAR(20),
  emp_address_id VARCHAR(10) NOT NULL,
  dept_id CHAR(5) NOT NULL,
  hire_date DATE,
  PRIMARY KEY (emp_id),
  FOREIGN KEY(dept_id) REFERENCES departments (dept_id),
  FOREIGN KEY(emp_address_id) REFERENCES address(emp_address_id)
  );
  
  
  
 CREATE TABLE email(
 emp_id INTEGER(11)PRIMARY KEY,
 email_1 VARCHAR(20),
 email_2 VARCHAR(20) 
 );
  
 
 
 CREATE TABLE phone(
 emp_id INTEGER(11) PRIMARY KEY,
 emp_ph_home VARCHAR(10),
 emp_ph_cell VARCHAR(10),
 emp_ph_work VARCHAR (10)
 );
 
show tables;
desc employee;

INSERT INTO departments ( dept_id,dept_name,dept_mgr)
    VALUES ( "sal01" , "sales","john"); 
INSERT INTO departments ( dept_id,dept_name,dept_mgr)
    VALUES ( "mkl01" , "marketing","Peter");
INSERT INTO departments ( dept_id,dept_name,dept_mgr)
    VALUES ( "inv01","inventory" , "alex");
	
	
INSERT INTO address ( emp_address_id,emp_add1,emp_add2,emp_zipcode,emp_city,emp_state)
    VALUES ( "eadd01" , "75", "queen st","l7p439","brampton","ON"); 	

INSERT INTO employee ( emp_id,first_name,last_name,emp_address_id,dept_id,hire_date)
    VALUES ( "001" , "kelly", "smith","eadd01","sal01","2023-05-23");

INSERT INTO email( emp_id,email_1,email_2)
    VALUES ( "001" , "k.smith@gmail.com", "k.smith34@yahoo.ca");

 
 INSERT INTO phone ( emp_id,emp_ph_home,emp_ph_cell,emp_ph_work)
     VALUES ( "001" , "4371234575", "6475671234","9057894561"); 
	
	Select * from departments;
	select * from address;
	select * from employee;
	SELECT * from email;
	SELECT * from phone;
	
	CREATE TABLE emp(
  emp_id INTEGER(11) NOT NULL,
  first_name VARCHAR(15),
  last_name VARCHAR(20),
  dept_id INTEGER(5) NOT NULL,
  salary INTEGER
  );


INSERT INTO emp ( emp_id,first_name,last_name,dept_id,salary)
    VALUES ("1","Paresh","Yadav","1","10");
INSERT INTO emp ( emp_id,first_name,last_name,dept_id,salary)
    VALUES ("2","Gita","Yadav","2","20");
INSERT INTO emp ( emp_id,first_name,last_name,dept_id,salary)
    VALUES ("3","Poonam","Sharma","2","30");
INSERT INTO emp ( emp_id,first_name,last_name,dept_id,salary)
    VALUES ("4","Bhakti","Patel","3","40");
INSERT INTO emp ( emp_id,first_name,last_name,dept_id,salary)
    VALUES ("5","Maunee","Patel","1","40");
INSERT INTO emp ( emp_id,first_name,last_name,dept_id,salary)
    VALUES ("6","Archana","Mistry","4","50");
INSERT INTO emp ( emp_id,first_name,last_name,dept_id,salary)
    VALUES ("7","Raunakraj","Patel","5","60");
