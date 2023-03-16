1 create table Asignatura (id serial Primary key, nombre TEXT);

create table Matricula (dni TEXT, nombre TEXT, apellido1 TEXT, apellido2 TEXT, asignatura_id integer, foreign key (asignatura_id) references Asignatura (id));