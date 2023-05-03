REM   Script: 1b
REM   answer1b

create table enroll 
( 
    studentid int, 
    courseid int, 
    enrollyear int, 
    grade varchar(2) 
);

insert into enroll 
values (181,111,2019,'A+');

insert into enroll 
values (181,112,2019,'A+');

insert into enroll 
values (181,113,2019,'D');

insert into enroll 
values (182,111,2019,'B');

insert into enroll 
values (182,112,2019,'B');

insert into enroll 
values (182,113,2019,'D');

insert into enroll 
values (183,111,2019,'A+');

insert into enroll 
values (183,112,2019,'C');

insert into enroll 
values (183,113,2019,'D');

insert into enroll 
values (171,111,2018,'A+');

insert into enroll 
values (171,112,2018,'A+');

insert into enroll 
values (171,113,2018,'D');

select * from enroll;

select studentid, count(grade) from enroll 
where enrollyear=2019 and ( grade = 'B' or grade like 'A_') 
group by studentid 
having count(grade) >= 2;

select courseid, count(studentid) from enroll 
where enrollyear=2019 
group by courseid 
having count(studentid) > 30;

