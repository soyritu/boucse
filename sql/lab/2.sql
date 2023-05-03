REM   Script: a2
REM   answer2

create table order1 
( 
    order_id int, 
    purchase_amnt int, 
    order_date date, 
    client_id int, 
    seller_id int 
);

create table client 
( 
    client_id int, 
    client_name varchar(15), 
    city varchar(10), 
    bonus_point int, 
    seller_id int 
);

create table seller 
( 
    seller_id int, 
    seller_name varchar(15), 
    city varchar(10), 
    sell_commission int    
);

insert into order1 
values (1101,1000,'12-JAN-2023',1000,2000);

insert into client 
values (1000,'Shakil','Dhaka',50,2000);

insert into seller 
values (2000,'Rosid','Khulna',20);

insert into order1 
values (1102,1000,'12-JAN-2023',1001,2001);

insert into client 
values (1001,'Shama','Dhaka',50,2000);

insert into seller 
values (2001,'Risi','Khulna',20);

insert into order1 
values (1103,1000,'12-JAN-2023',1003,2002);

insert into client 
values (1003,'Shara','Shylet',50,2003);

insert into seller 
values (2003,'Ritu','Shylet',20);

select * from order1;

select * from client;

select * from seller;

select client_name,seller_name from client c,seller s 
where c.seller_id = s.seller_id;

select order_id from order1 
where client_id in (select client_id from client  
                    where city not in (select city from seller));

