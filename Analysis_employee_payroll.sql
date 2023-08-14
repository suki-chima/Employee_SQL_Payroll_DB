USE employee_payroll_2023;

/* AVERAGE SALARY*/

SELECT AVG(TOTAL_PAY) AS Average_salary
FROM payinfo 
;    

/* LOWEST SALARY*/

SELECT MIN(TOTAL_PAY)
FROM payinfo
;

/* HIGHEST SALARY*/

SELECT MAX(TOTAL_PAY) AS Highest_salary
FROM payinfo
;

/* LOWEST-PAID EMPLOYEE*/

SELECT jobdetails.EMPLOYEE_NO, jobdetails.JOB_TITLE, payinfo.TOTAL_PAY
FROM jobdetails
JOIN payinfo ON jobdetails.EMPLOYEE_NO = payinfo.EMPLOYEE_NO
WHERE payinfo.TOTAL_PAY = (SELECT MIN(TOTAL_PAY) FROM payinfo)
;

/* HIGHEST-PAID EMPLOYEE*/

SELECT jobdetails.EMPLOYEE_NO, jobdetails.JOB_TITLE, payinfo.TOTAL_PAY
FROM jobdetails
JOIN payinfo ON jobdetails.EMPLOYEE_NO = payinfo.EMPLOYEE_NO
WHERE payinfo.TOTAL_PAY = (SELECT MAX(TOTAL_PAY) FROM payinfo)
;

/* SALARY DISTRIBUTION ACROSS DEPARTMENTS*/

SELECT department.DEPARTMENT_TITLE, AVG(TOTAL_PAY)
FROM department
JOIN payinfo ON department.EMPLOYEE_NO = payinfo.EMPLOYEE_NO
GROUP BY DEPARTMENT_TITLE
ORDER BY AVG(REGULAR_PAY)
;

/* SALARY DISTRIBUTION ACROSS JOBS*/

SELECT jobdetails.JOB_TITLE, AVG(TOTAL_PAY)
FROM jobdetails
JOIN payinfo ON jobdetails.EMPLOYEE_NO = payinfo.EMPLOYEE_NO
GROUP BY JOB_TITLE
ORDER BY AVG(TOTAL_PAY)
;