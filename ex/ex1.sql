--null
select  first_name,
        salary,
        commission_pct,
        salary*commission_pct
from employees
where salary between 13000 and 15000;

select first_name,
        salary,
        commission_pct
from employees
where commission_pct is null;

--커미션비율이 있는 사원의 이름과 연봉 커미션비율을 출력하세요
SELECT  first_name,
        salary
FROM employees
WHERE commission_pct is not null;


--담당매니저가 없고 커미션비율이 없는 직원의 이름을 출력하세요
SELECT  first_name
FROM employees
WHERE manager_id is null
and commission_pct is null;

--order by
SELECT  first_name,
        salary
FROM employees
order by salary desc; --내림차순

SELECT  first_name,
        salary
FROM employees
order by salary asc; --오름차순


SELECT  first_name,
        salary
FROM employees
order by salary asc, first_name asc;    --1순위 급여 오름차순
                                        --급여가 동률할때 이름을 오름차순
                                        
select  first_name,
        salary
from employees
where salary >= 9000
order by salary desc;

--부서번호를 오름차순으로 정렬하고 부서번호, 급여, 이름을 출력하세요
SELECT  department_id,
        salary,
        first_name
FROM employees
order by department_id asc;

--급여가 10000 이상인 직원의 이름 급여를 급여가 큰직원부터 출력하세요
SELECT  first_name
FROM employees
WHERE salary >= 10000
order by salary asc;

--부서번호를 오름차순으로 정렬하고 부서번호가 같으면 급여가 높은 사람부터 
--부서번호 급여 이름을 출력하세요  
SELECT  department_id,
        salary,
        first_name
FROM employees
order by department_id ASC, salary desc;

/*단일행 함수*/
SELECT  email,
        INITCAP(email),
        department_id
FROM employees
WHERE department_id = 100;

--가상의 테이블 dual
SELECT  INITCAP('aaaaaa')
FROM dual;

--lower소문자, UPPER대문자
SELECT  first_name,
        lower(first_name),
        UPPER(first_name)
FROM employees
WHERE department_id = 100;

--substr주어진 문자열에서 특정길이의 문자열을 구하는 함수
select  first_name,
        substr(first_name,1,3),
        substr(first_name,-3,2)
from employees
where department_id = 100;

--lpad왼쪽공백 특별한 문자, rpad오른쪽공백 특별한 문자
select first_name, 
       lpad(first_name,10,'*'), 
       rpad(first_name,10,'*')
from employees;

--repace문자를 다른 문자로 바꾸는 함수
select  first_name, 
        replace(first_name, 'a', '*'),
        replace(first_name, SUBSTR(first_name, 2, 3), '***')
from employees;

SELECT  first_name,
        SUBSTR(first_name, 2, 3)
FROM employees;

/*숫자함수*/
--round 반올림
SELECT  round(123.346, 2)"r2",
        round(123.546, 0) "r0",
        round(124.346, -1) "r-1",
        round(127.346, -1)
FROM dual;

--trunc 주어진 숫자버림
SELECT  trunc(123.456, 2),
        trunc(123.456, 0),
        trunc(123.456, -1)
FROM dual;

--abs절대값
SELECT  abs(-5)
FROM dual;

/*날짜 함수*/
--sysdate
SELECT SYSDATE
FROM dual;

--month_between개월수를 출력해주는 함수
SELECT  sysdate,
        hire_date,
        round(MONTHS_BETWEEN(SYSDATE,hire_date), 0)
FROM employees;

/*변환함수*/
--to_char 숫자형 -> 문자형으로 변환
SELECT  first_name,
        salary*12,
        to_char (salary*12, '$999,999.99')
FROM employees
WHERE department_id = 110;

SELECT  to_char(9876, '99999'),
        to_char(9876, '099999'),
        to_char(9876, '$99999'),
        to_char(9876, '9999.99'),
        to_char(9876, '99,999')
FROM dual;

--to_char 날짜-->문자열
SELECT  sysdate,
        to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),
        to_char(sysdate, 'yyyy"년" mm"월" dd"일"'),
        to_char(sysdate, 'yyyy'),
        to_char(sysdate, 'yy'),
        to_char(sysdate, 'mm'),
        to_char(sysdate, 'month'),
        to_char(sysdate, 'dd'),
        to_char(sysdate, 'day'),
        to_char(sysdate, 'hh'),
        to_char(sysdate, 'hh24'),
        to_char(sysdate, 'mi'),
        to_char(sysdate, 'ss')
FROM dual;

--nvl null일 경우 치환할 값, nvl2 null이거나, 아닐때 치환할 값
SELECT  first_name,
        commission_pct,
        nvl(commission_pct, 0),--null을 0으로 변경해준다
        nvl2(commission_pct, 100, 0)--null일때랑 아닐때 값
FROM employees;