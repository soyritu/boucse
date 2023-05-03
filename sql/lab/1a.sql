REM   Script: 1a
REM   answer1a

create table trainee_info 
( 
    id int, 
    trainee_name varchar(3) 
);

insert into trainee_info 
values(1,'abc');

insert into trainee_info 
values(2,'def');

insert into trainee_info 
values(3,'abc');

insert into trainee_info 
values(4,'pqr');

create table grade_info 
( 
    id int, 
    course varchar(2), 
    marks int 
);

insert into grade_info 
values(1,'x',20);

insert into grade_info 
values(1,'y',30);

insert into grade_info 
values(2,'x',40);

insert into grade_info 
values(2,'y',40);

insert into grade_info 
values(3,'x',30);

insert into grade_info 
values(4,'x',20);

insert into grade_info 
values(3,'y',25);

insert into grade_info 
values(4,'y',25);

select * from trainee_info;

select* from grade_info;

select t.trainee_name,sum(g.marks) 
from trainee_info t, grade_info g 
where t.id = g.id 
group by trainee_name;

