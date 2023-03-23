CREATE TABLE Asignatura (nombre VARCHAR(30) PRIMARY KEY);

CREATE TABLE Alumnos (dni VARCHAR(20) PRIMARY KEY, nombre1 VARCHAR(15) NOT NULL, nombre2 VARCHAR(15), apellido1 VARCHAR(15) NOT NULL, apellido2 VARCHAR(15));

CREATE TABLE Matricula (dni_alumno VARCHAR(20), nombre_asignatura VARCHAR(30), FOREIGN KEY (dni_alumno) REFERENCES Alumnos(dni), FOREIGN KEY (nombre_asignatura) REFERENCES Asignatura(nombre));
