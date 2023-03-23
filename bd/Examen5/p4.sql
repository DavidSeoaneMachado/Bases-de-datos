create table Persona (id serial primary key, dni VARCHAR(15), nombre VARCHAR(15));

create table foto (id serial primary key, titulo_foto VARCHAR(40)); 

create table Monumento (nombre VARCHAR(15) primary key, ciudad VARCHAR(15), antiguedad_monumento VARCHAR(15));

create table Recuerdos (fecha date not NULL, id_foto int, id_persona int, nombre_monumento VARCHAR(15), foreign key (id_foto) references foto (id), foreign key (id_persona) references Persona (id), foreign key (nombre_monumento) references Monumento (nombre));