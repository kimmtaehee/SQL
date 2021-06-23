--모든 컬럼 조회하기
select * 
from employees;

select * 
from departments;

--원하는 컬럼만 조화하기
SELECT employee_id,first_name,last_name
FROM employees;

--예제
SELECT  first_name,
        phone_number, 
        hire_date, 
        salary
FROM employees;

SELECT  first_name,
        last_name, 
        phone_number, 
        hire_date, 
        email
FROM employees;

--출력할 때 컬럼에 별명 사용하기
SELECT  employee_id as empNo,
        first_name as "f-name",
        salary as "급 여"
FROM employees;

--예제
SELECT  first_name as 이름,
        phone_number as 전화번호,
        hire_date as 입사일,
        salary as 급여
FROM employees;

SELECT  first_name as 이름,
        last_name as 성,
        salary as 급여,
        phone_number as 전화번호,
        email as 이메일,
        hire_date as 입사일
FROM employees;

--연결 연산자(comcatenation)로 컬럼들 붙이기
SELECT  first_name,
        last_name
FROM employees;

SELECT  first_name || last_name
FROM employees;

SELECT  first_name ||''|| last_name
FROM employees;

SELECT  first_name ||'hire date is'|| hire_date as 입사일
FROM employees;

--산술 연산자 사용하기
SELECT  first_name,
        salary
FROM employees;

SELECT  first_name,
        salary,
        salary*12,
        (salary+300)*12
FROM employees;

--예제
SELECT  job_id*12
FROM employees;

select  first_name||'-'||last_name 성명,
        salary 급여,
        salary*12 연봉,
        salary*12+5000 연봉2,
        phone_number 전화번호
from employees;

/*where절*/
SELECT *
FROM employees
where department_id = 10;

--예제
SELECT  first_name,
        salary
FROM employees
WHERE salary >= 15000;

SELECT  first_name,
        hire_date
FROM employees
WHERE hire_date >= '07/01/01';

SELECT  salary
FROM employees
WHERE first_name = 'Lex';

--조건이 2개이상 일때 한꺼번에 조회
SELECT  first_name,
        salary
FROM employees
WHERE salary >= 14000
and salary <= 17000;

--예제
SELECT  first_name,
        salary
FROM employees
WHERE salary >= 14000
and salary <= 17000;

SELECT  first_name,
        hire_date
FROM employees
WHERE hire_date >= '04/01/01'
and hire_date <= '05/12/31';

--between
SELECT  first_name,
        salary
FROM employees
WHERE salary BETWEEN 14000 and 17000;

select  first_name,
        last_name,
        salary
from employees
where first_name in ('Neena', 'Lex', 'John');

SELECT  first_name,
        salary
FROM employees
WHERE salary in (2100,3100,4100,5100);

--like 연산자로 비슷한것들 모두 찾기
select  first_name,
        last_name,
        salary
from employees
where first_name like 'L%';

--예제
select  first_name,
        salary
from employees
where first_name like '%am%';

select  first_name,
        salary
from employees
where first_name like '_a%';

select  first_name
from employees
where first_name like '___a%';

select  first_name
from employees
where first_name like '__a_';

