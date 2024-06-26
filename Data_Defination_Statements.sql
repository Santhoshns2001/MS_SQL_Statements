use FirstDatabase

-- INSERT 
CREATE TABLE CONSUMERS(
CID INT PRIMARY KEY IDENTITY(1,1),
CNAME VARCHAR(50) NOT NULL,
CNUM VARCHAR(10) UNIQUE CHECK (CNUM LIKE '[6-9][0-9]%' AND LEN(CNUM)=10),
CLOCATION VARCHAR(100) DEFAULT 'INDIA',
PID INT FOREIGN KEY (PID) REFERENCES PRODUCTS(PID)
);

--SELECT * FROM CONSUMERS
SELECT * FROM CUSTOMERS


CREATE TABLE PRODUCTS (
PID INT PRIMARY KEY IDENTITY(1,1),
PNAME VARCHAR(50) NOT NULL,
PCOST DECIMAL NOT NULL,
);

--SELECT *FROM PRODUCTS
SELECT * FROM PRODUCT_LIST



-- RENAMEING TABLE NAME 
EXEC SP_RENAME 'CONSUMERS','CUSTOMERS'

EXEC SP_RENAME 'PRODUT_LIST','PRODUCT_LIST'

-->ALTER
   -- ADDING COLUMN INTO A TABLE 

ALTER TABLE CUSTOMERS
ADD CJOB VARCHAR(50) NOT NULL

ALTER TABLE CUSTOMERS
ADD LOC VARCHAR(50) NOT NULL

ALTER TABLE CUSTOMERS
ADD SURNAME VARCHAR(50) NOT NULL

-- DELETE
ALTER TABLE CUSTOMERS
DROP COLUMN LOC 

ALTER TABLE CUSTOMERS
DROP COLUMN SURNAME 

-- RENAME COLUMN NAME

SELECT * FROM CUSTOMERS

EXEC SP_RENAME 'CUSTOMERS.CLOCTAION','LOCATION','COLUMN';

EXEC SP_RENAME 'CUSTOMERS.CJOB','JOB','COLUMN';

-- MODIFY DATATYPE OF EXISTING COLUMN 

ALTER TABLE CUSTOMERS
ALTER COLUMN CNAME VARCHAR(150) NOT NULL;

ALTER TABLE CUSTOMERS
ALTER COLUMN CLOCATION VARCHAR (100) NOT NULL


  -- TRUNCATE 
TRUNCATE TABLE PRODUCT_LIST

TRUNCATE TABLE CUSTOMERS

-- DROP(DELETE THE TABLE )
 DROP TABLE CUSTOMERS

 DROP TABLE PRODUT_LIST

