create database ejemplo;

CREATE SCHEMA esq1;

create table esq1.tabla1 (dni TEXT, nombre TEXT);

alter table esq1.tabla1 add constraint restriccion Primary key (dni);
  create table tabla2 (id_pedido SERIAL, dni TEXT, foreign key (dni) references esq1.tabla1 (dni) );

alter table esq1.tabla1 add column edad integer check (edad > 0 and edad <=99); 

alter table tabla2 add column precio numeric (8,4);