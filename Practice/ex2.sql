--ex1
SELECT count(manager_id)
FROM employees;

--ex2
SELECT  max(salary) "최고임금",
        min(salary) "최저임금",
        max(salary)- min(salary) "최고임금-최저임금"
FROM employees;

--ex3
SELECT to_char(max(hire_date), 'yyyy"년"mm"월"dd"일"')
FROM employees;

--ex4
SELECT  avg(salary),
        max(salary),
        min(salary),
        department_id
FROM employees
group by department_id
order by department_id desc;

--ex5
SELECT  round(avg(salary),1),
        MAX(salary),
        MIN(salary),
        job_id
FROM employees
group by job_id
order by min(salary) desc, avg(salary) asc;

--ex6
SELECT to_char(min(hire_date), 'yyyy-mm-dd day')
FROM employees;

--ex7
SELECT  department_id,
        avg(salary),
        min(salary),
        avg(salary)-min(salary)
FROM employees
group by department_id
having avg(salary)-min(salary) < 2000
order by avg(salary)-min(salary) desc;

--ex8
select  job_id,
        max(salary),
        min(salary),
        max(salary)-min(salary)
from employees
group by job_id
order by max(salary)-min(salary) desc;

--ex9
SELECT  manager_id,
        round(avg(salary),1),
        min(salary),
        max(salary)
FROM employees
WHERE hire_date > '05/01/01'
group by manager_id
having avg(salary) >= 5000
order by avg(salary) desc;

--ex10
SELECT  first_name,
        hire_date,  
        CASE when hire_date <= '02/12/31' then '창립멤버'
             when hire_date <= '03/12/31' then '03년입사'
             when hire_date <= '04/12/31' then '04년입사'
             else '상장이후입사'
        end optDate
FROM employees
ORDER by hire_date asc;