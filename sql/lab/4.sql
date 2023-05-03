create table student
(
    stuid int,
    stuname varchar(100),
    constraint student_stuid_pk primary key (stuid)
);
create table course
(
    ccode varchar(10),
    cname varchar(10),
    constraint course_ccode_pk primary key (ccode)
);
create table course_taken
(
    ccode varchar(10),
    stuid int,
    year_registration int,
    constraint course_taken_ccode_fk foreign key (ccode) references course(ccode),
    constraint course_taken_stuid_fk foreign key (stuid) references student(stuid)   
);
-- ans a
insert into student
values(&id,&name);
insert into course
values(&code,&name);
insert into course_taken
values(&code,&id,&yr);
-- answer c
select stuid from course_taken
    where ccode = 'CSE2138';
-- answer d
select stuname,cname from student s,course c, course_taken ct
where s.stuid = ct.stuid and c.ccode = ct.ccode;