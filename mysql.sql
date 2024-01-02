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
	 )
   
  
  CREATE TABLE address(
    emp_address_id VARCHAR(10) PRIMARY KEY,
	emp_add1 VARCHAR(50),
	emp_add2 VARCHAR(50),
	emp_zipcode VARCHAR(7),
	emp_city VARCHAR(50),
	emp_state VARCHAR(50),
	)
 
CREATE TABLE employee(
  emp_id INTEGER(11) NOT NULL,
  first_name VARCHAR(15),
  last_name VARCHAR(20),
  emp_address_id VARCHAR(10) NOT NULL,
  dept_id CHAR(5) NOT NULL,
  hire_date DATE,
  PRIMARY KEY (emp_id),
  FOREIGN KEY(dept_id) REFERENCES departments (dept_id),
  FOREIGN KEY (emp_address_id) REFERENCES address(ep_address_id)
  )
  
  
  
 CREATE TABLE email(
 emp_id INTEGER(11)PRIMARY KEY,
 email_1(20),
 email_2(20)
 )
 
 CREATE TABLE phone(
 emp_id INTEGER(11) PRIMARY KEY,
 emp_ph_home(10),
 emp_ph_cell(10),
 emp_ph_work(10)
 )

show tables;
desc employee;