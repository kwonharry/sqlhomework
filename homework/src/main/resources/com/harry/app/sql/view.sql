create view emp_view as
select employee_id 사원번호, last_name 성, salary 연봉 
from employees;

select * from emp_view;
--hr 스키마에 있는 테이블
--나라
select * from countries;
select * from cnt;
--부서
select * from departments;
select * from dep;
--직원
select * from employees;
select * from emp;
--지역
select * from locatons;
select * from loc;
--업무
select * from jobs;
select * from job;
--연혁
select * from job_history;
select * from his;
--대륙
select * from regions;
select * from reg;
drop view cnt;

create or replace view cnt as
select 
country_id as cid,
country_name as cname,
region_id as rid
from countries;

create or replace view dep as
select
department_id as did,
department_name as dname,
manager_id as mid,
location_id as lid
from DEPARTMENTS;

create or replace view emp as
select
employee_id as eid,
first_name ||' '|| last_name as ename,
email,
phone_number as phone_no,
hire_date as hire_dt,
job_id as jid,
salary as sal,
commission_pct as cms_pt,
manager_id as mid,
department_id as did
from employees;

create or replace view job as
select 
job_id as jid,
job_title as jname,
min_salary as min_sal,
max_salary as max_sal
from jobs;

create or replace view job_his as 
select
employee_id as eid,
start_date as statr_dt,
end_date as end_dt,
job_id as jid,
department_id as did
from JOB_HISTORY;

create or replace view loc as
select
location_id as lid,
street_address as street,
postal_code as zipcode,
city,
state_province as state,
country_id as cid
from LOCATIONS;

create or replace view reg as
select
region_id as rid,
region_name as rname
from regions;