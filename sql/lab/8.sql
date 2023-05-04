/*--a
___________________________________________________________
||customer|| product   || cust_order    || order_product ||
||cid|name||pcode|pname||ocode|odate|cid||ocode|pcode|nou||
||pk |    ||pk   |     ||pk   |     |fk ||pk,fk|pk,fk|   ||
___________________________________________________________
*/
--(b)
create table customer
(
    cid number(10),
    name varchar2(10),
    constraint customer_cid_pk primary key (cid)
);

create table product
(
    pcode int primary key,
    pname varchar(10),
    unit_price int
);
create table cust_order
(
    ocode int primary key,
    odate date,
    cid number(10),
    constraint cust_order_cid_fk foreign key (cid)
    						references customer(cid)
);
create table order_product
(
    ocode int ,
    pcode int ,
    nou int,
    primary key (ocode,pcode),
    foreign key (ocode) references cust_order(ocode),
    foreign key (pcode) references product(pcode)
    
);

--c
alter table product
add constraint product_pname_chk check (pname in ('Laptop', 'Mouse', 'Server', 'Air conditioner'));
--d
select * from product
	where unit_price > (select avg(unit_price) from product);

