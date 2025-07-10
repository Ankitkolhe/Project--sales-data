 Create table mock (
Salesprimarykey int,
product_id int,
Sales_rep_id int,
Country varchar,
city varchar,
Date date,
units int,
percentofstandardcost float,

revenuediscount float
 )

 select * from mock
copy mock from 'D:/Data Analytics/mock data/sales 2017.csv' DELIMITER',' csv header


create table categories (
categorykey int,
category varchar)
select * from categories
insert into categories(categorykey,category) values(1,'special')
insert into categories(categorykey,category) values(2,'general')
delete where set categorykey=1

create table subcategories(
subcategorykey int,
categorykey int,
subcategoryname varchar)

insert into subcategories(
subcategorykey,
categorykey,
subcategoryname) values (4,2,'Super')
select * from subcategories

create table salesrep(
salesrepid int,
salesrepname varchar)
select * from salesrep
insert into salesrep(salesrepid, salesrepname) values (4,'El Bob')
drop table salesrep

create table product(
ProductID int,	
Sub_Category_Key int,
Color varchar,
ProductName varchar,
RetailPrice float,
StandardCost float
)

insert into product(ProductID,	
Sub_Category_Key,
Color,
ProductName,
RetailPrice,
StandardCost
) values (11,4,'Florescent Blue','Carlota',29.95,9.15
)

select * from product

select * from categories as c inner join subcategories as s on c.categorykey = s.categorykey

select * from subcategories as s inner join product as p on s.subcategorykey = p.sub_category_key

select * from subcategories as s inner join product as p on s.subcategorykey = p.sub_category_key

select * from mock as m inner join salesrep as r on m.sales_rep_id = r.salesrepid

select * from mock as m inner join product as p on m.product_id = p.productid