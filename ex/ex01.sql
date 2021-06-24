--ex1
SELECT  first_name || last_name 이름,
        salary 월급,
        phone_number 전화번호,
        hire_date 입사일
FROM employees
ORDER by hire_date asc;

--ex2
SELECT  job_title,
        max_salary
FROM jobs
ORDER by max_salary desc;

--ex3
SELECT  first_name,
        manager_id,
        commission_pct,
        salary
FROM employees
WHERE   commission_pct is null
and salary < 3000;

--ex4
SELECT  job_title,
        max_salary
FROM jobs
WHERE max_salary >= 10000
ORDER by max_salary DESC;

--ex5
SELECT  first_name,
        salary,
        NVL(commission_pct,0)
FROM employees
WHERE salary >= 10000
and salary < 14000
ORDER by salary DESC;

--ex6
SELECT  first_name,
        salary,
        to_char(hire_date,'yyyy-mm-dd'),
        employee_id
FROM employees
WHERE department_id in (10, 90, 100);

--ex07
SELECT first_name,
       salary 
FROM employees
WHERE first_name like '%S%'
or first_name like '%s%';

--ex08
SELECT department_name
FROM departments
ORDER by length(department_name) desc;

--ex09
SELECT INITCAP(country_name)
FROM countries
ORDER by country_name asc;

--ex10
SELECT  first_name,
        salary,
        replace(phone_number,'.','-'),
        hire_date
FROM employees
WHERE hire_date <= '03/12/31';