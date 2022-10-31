create database if not exists cardealership;
use cardealership;
create table customers (
ID int,
c_id int,
name varchar(20),
phone varchar(20),
emails varchar(20),
adress varchar(20),
city varchar(20),
state varchar(20),
country varchar(20),
postal int
);
/*drop table customers ;*/
create table cars (
ID int,
VIN varchar(25),
manufacturer varchar(20),
model varchar(20),
year int,
color varchar(20)
);
/*drop table cars;*/
create table salespersons (
ID int,
staff_id int,
s_name varchar(20),
store varchar(20)
);
/*drop table salespersons;*/
create table invoices (
ID int,
invoicenumber int,
c_id int,
staff_id int,
car int,
date varchar(20)
);
/*drop table invoices;*/

insert into customers (ID, c_id, name, phone, emails, adress, city, state, country, postal)
values(0,10001,"Pablo Picasso","34636176382","-","Paseo de","Madrid","Madrid","Spain","28045"),(" 1" ,20001,"Abraham Lincoln","13059077086","-","120 SW 8th St"," Miami","Florida","United States",33130);

insert into cars (ID, VIN, manufacturer, model, year, color)
values(0,"3K096I98581DHSNUP","Volkswagen","Tiguan","2019","Blue"),(1,"ZM8G7BEUQZ97IH46V","Peugeot","Rifter",2019,"Red");

insert into salespersons (ID, staff_id, s_name, store)
values(0,00001,"Petey Cruiser", "Madrid"),(1,00002,"Anna Sthesia","Barcelona");

insert into invoices (ID, invoicenumber, date, c_id, staff_id)
values(0,852399038,"22-08-2018","0","3"),(1,731166526,"31-12-2018",3,5);


