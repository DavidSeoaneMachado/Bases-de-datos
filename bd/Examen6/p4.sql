--Sobre el manejo de valores nulos. 25p

--La respuesta siempre instrucciones SQL en el archivo p4.sql. Si ves importante poner un comentario, también usando comentarios en SQL.

--Ver los valores nulos (si hay) en el campo start_station
select * from trips where start_station IS null;

--Actualizar todos los valores de start_station, si tienen valores nulos, para que sean iguales al valor de end_station para ese registro.
update trips set start_station = end_station where start_station is null; 

--Para arreglar este tema en el futuro, ¿qué instrucción de modificación DDL tendríamos que ejecutar?

--PRIMERO IGUALO LAS END_STATION NULAS A SU ESTACION DE ORIGEN COMO HICIMOS EN EL EJERCICIO 2 PARA QUE NO HAYA TRIPS SIN NINGUNA ESTACION DE REFERENCIA
update trips set END_station = START_station where END_station is null; 

--ELIMINO LOS REGISTROS(6) EN LOS QUE AMBAS SON NULL Y LAS ESTABLEZCO NOT NULL PARA EL FUTURO
alter table trips alter column start_station set not null; 
alter table trips alter column end_station set not null;

--INTENTE MODIFICAR TANTO START COMO END CON EL SIGUIENTE COMANDO PARA QUE 
--POR DEFECTO TUVIERAN EL VALOR DE LA OTRA POR SI ERAN NULAS PERO CREO QUE NO SE PUEDE (O NO LO CONSEGUÍ YO)
ALTER TABLE trips ALTER COLUMN start_station SET NOT NULL DEFAULT end_station;

--Borra todos los registros que no tengan un valor conocido de birth_date?
DELETE from trips where birth_date is null;

--Actualizar los valores nulos de bike_number para que tengan el valor B00000
update trips set bike_number = 'B00000' where bike_number is null;



