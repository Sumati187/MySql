CREATE DATABASE BMS_DB1;

USE BMS_DB1;

-- CUSTOMER_PERSONAL_INFORMATION

CREATE TABLE CUSTOMER_PERSONAL_INFO
(
CUSTOMER_ID VARCHAR(5) PRIMARY KEY,
CUSTOMER_NAME VARCHAR(30),
DATE_OF_BIRTH DATE,
GUARDIAN_NAME VARCHAR(30),
ADDRESS VARCHAR(50),
CONTACT_NO BIGINT(10),
MAIL_ID VARCHAR(30),
GENDER CHAR(1),
MARITAL_STATUS VARCHAR(10),
IDENTIFICATION_DOC_TYPE VARCHAR(20),
ID_DOC_NO VARCHAR(20),
CITIZENSHIP VARCHAR(10)

);

-- CUSTOMER_REFERENCE_INFORMATION
CREATE TABLE CUSTOMER_REFERENCE_INFO
(
CUSTOMER_ID VARCHAR(5),
REFERENCE_ACC_NAME VARCHAR(20),
REFERENCE_ACC_NO BIGINT(16),
REFERENCE_ACC_ADDRESS VARCHAR(50),
RELATION VARCHAR(25)
);

-- BANK INFO
CREATE TABLE BANK_INFO
(
IFSC_CODE VARCHAR(15) PRIMARY KEY,
BANK_NAME VARCHAR(25),
BRANCH_NAME VARCHAR(25)
);


-- ACCOUNT_INFO

CREATE TABLE ACCOUNT_INFO
(
ACCOUNT_NO BIGINT(16) PRIMARY KEY,
CUSTOMER_ID VARCHAR(5),
ACCOUNT_TYPE VARCHAR(10),
REGISTRATION_DATE DATE,
ACTIVATION_DATE DATE,
IFSC_CODE VARCHAR(10),
INTEREST DECIMAL(7,2),
INITIAL_DEPOSIT BIGINT(10)
);

-- BANK_INFO
INSERT INTO BANK_INFO VALUES
("HDVL0012","HDFC","NOIDA-SEC-16"),
("SBIN0123","SBI","TNAGAR"),
("ICIN0232","ICICI","NOIDA-SEC-15"),
("ICIPG0242","ICICI","TNAGAR"),
("SBISD0113","SBI","NOIDA-SEC-18");

-- CUSTOMER_PERSONAL_INFO
INSERT INTO CUSTOMER_PERSONAL_INFO VALUES
("C-001","JONH","1984-05-03","PETER","NO.14,ST.MARKS ROAD,BANGLORE",9734567103,"JOHN_123@GMAIL.COM","M","UNMARRIED","DL","DL-567890","INDIA"),
("C-002","JAMES","1984-08-06","GEORGE","NO.18,MG ROAD, BANGALORE","9237893481","JAMS_123@GMAIL.COM","M","UNMARRIED","DL","DL-890123","INDIA"),
("C-003","SUNITA","1984-11-06","VINOD","NO.21,GM ROAD, CHENNAI","9438978389","SUNITA_123@GMAIL.COM","F","MARRIED","OIC CARD","OIC-0123987","INDIA"),
("C-004","RAMESH","1985-12-11","KRISHNA","NO.14,LG ROAD,CHENNAI","9235234534","RAMESH_123@GMAIL.COM","M","UNMARRIED","AADHAR","985423145678","INDIA"),
("C-005","KUMAR","1983-04-26","KIRAN","NO.18,MM ROAD, BANGLORE","9242342312","KUMAR_123@GMAIL.COM","M","MARRIED","AADHAR","895423145676","INDIA");


-- ACCOUNT_INFO
INSERT INTO ACCOUNT_INFO VALUES
(001,"C-001","CURRENT","2000-08-01","2000-08-05","HDVL0012",6.2,5500),
(002,"C-002","SAVING","2002-07-23","2000-07-25","SBIN0123",3,10000),
(003,"C-003","CURRENT","1999-02-04","1999-02-09","ICIN0232",4,10000),
(004,"C-004","CURRENT","2001-01-01","2001-01-05","ICIPG0242",3,20000),
(005,"C-005","SAVING","2002-04-02","2002-04-07","SBISD0113",2,"19500");

INSERT INTO CUSTOMER_REFERENCE_INFO VALUES
("C-001","JAMES",001,"NO.18,MG ROAD, BANGALORE","BROTHER"),
("C-005","JAMES",001,"NO.18,MG ROAD, BANGALORE","FRIEND");


