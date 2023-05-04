create table emp
(
    emp_num int primary key,
    emp_name varchar(10),
    dept varchar(10),
    sal number(10,2),
    doj varchar(10),
    branch varchar(8)
);
insert into emp values(1,'a','x',1000.44,'y','z');
insert into emp values(2,'b','y',222.33,'p','q');
-- a
select emp_num,sal from emp;
--b
select avg(sal) as average_salary from emp;
--c
select count(emp_num) as No_of_employee from emp;
--d
select distinct count(emp_name) as dis_emp from emp;
--e
select sum(sal),count(emp_name) from emp
	group by emp_name;
--f
select sum(sal) from emp
	group by emp_name
	having sum(sal) > 500;