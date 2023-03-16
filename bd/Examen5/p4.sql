1  create table Persona (id serial primary key, nombre text, dni text);

create table foto (id serial primary key, titulo text); 

create table Monumento (id serial primary key, nombre text, ciudad text, antiguedad_monumento text);

create table Recuerdos (id serial primary key, fecha date, id_foto int, id_persona int, id_monumento int, foreign key (id_foto) references foto (id), foreign key (id_persona) references Persona (id), foreign key (id_monumento) references Monumento (id));