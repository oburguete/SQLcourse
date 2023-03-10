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
 
 SELECT  *
 FROM employees
 ORDER BY lastName;
 
 SELECT *
 FROM employees
 WHERE jobTitle = 'sales rep'
 ORDER BY employeeNumber;
 
SELECT  officeCode AS 
FROM employees;

SELECT COUNT(DISTINCT officeCode) FROM employees;

SELECT officeCode, COUNT(employeeNumber)
FROM employees
GROUP BY officeCode;

SELECT *
FROM employees
ORDER BY officeCode;

SELECT jobTitle, COUNT(jobTitle) AS 'cantidad'
FROM employees
GROUP BY jobTitle
ORDER BY cantidad DESC;

SELECT reportsTO, COUNT(reportsTO)
FROM employees
group by reportsTO;
 
SELECT round(8.5);

SELECT UPPER(lastName)
FROM employees;

SELECT CONCAT(UPPER(lastName),' ',UPPER(firstName))
FROM employees;
SELECT LTRIM('     5 ESPACIOS');

SELECT NOW();
SELECT CURRENT_DATE(), CURDATE();

SELECT CURRENT_TIME();

SELECT firstName, 
CASE officeCode
WHEN 1 THEN 'PISO 1'
WHEN 2 THEN 'PISO 2'
WHEN 3 THEN 'PISO 3'
ELSE 'PLANTA BAJA'
END AS 'UBICACION'
FROM employees;

SELECT PRODUCTS;


SELECT productName,
	CASE WHEN quantityInStock < 1000  THEN 'urge realizar pedido'
	WHEN quantityInStock > 1000 AND quantityInStock < 2000 THEN 'REALIZAR PEDIDO ESTA SEMANA'
	ELSE 'en stock'
	END
FROM PRODUCTS 
ORDER BY quantityInStock;
