create table dept
(
    dept_no int,
    dept_name varchar(10),
    location varchar(5)
);
insert into dept
values(10,'CSE','uk');
-- a
rename dept to department;
-- b
alter table department
add (course int default 0 not null);
-- c
alter table department
rename column dept_name to d_name;
--d
alter table department
modify location varchar(10);
select * from dept;
-- e
drop table department;