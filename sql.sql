use classicmodels;
SELECT * FROM employees;
SELECT * 
FROM employees
WHERE employeeNumber > 1200;

SELECT *
FROM employees
WHERE employeeNumber = 1611;

SELECT *
FROM employees
WHERE jobtitle = 'Sales Rep' AND officeCode !=1;

SELECT *
FROM employees
WHERE jobtitle ='Sales Rep';

SELECT  *
FROM employees
 WHERE  jobtitle = 'Sales Rep' AND officeCode =1;
 
 SELECT employeeNumber, lastName, firstName FROM
 employees
 WHERE employeeNumber >= 1000 AND
 employeeNumber <=2000;
 
 SELECT *
 FROM  employees
 WHERE  jobTitle='Sales Rep' AND reportsTo = 1143; 
 
 SELECT *
 FROM employees
 WHERE reportsTo = 1002 AND firstName != 'jeff';
 
 SELECT officeCode , employeeNumber, lastName, firstName
 FROM  employees
 WHERE employees.officeCode in (2,3);
 
 SELECT officeCode, employeeNumber, lastName, firstName
 FROM employees WHERE firstName LIKE '%S%';
 
 SELECT officeCode, employeeNumber, lastName, firstName FROM  employees
 WHERE reportsTo is NULL;