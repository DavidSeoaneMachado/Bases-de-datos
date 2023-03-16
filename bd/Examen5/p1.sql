1 create database ejemplo;

2 CREATE SCHEMA sqe1;

3 create table esq1.tabla1 (dni TEXT, nombre TEXT);

4 alter table esq1.tabla1 add constraint restriccion Primary key (dni);
  create table tabla2 (id_pedido SERIAL, dni TEXT, foreign key (dni) references esq1.tabla1 (dni) );

5 alter table esq1.tabla1 add column edad integer check (edad > 0 and edad <=99); 

6  alter table tabla2 add column precio numeric (8,4);