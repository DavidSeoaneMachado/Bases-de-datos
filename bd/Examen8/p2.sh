#Diseña un almacén de datos que te permita gestionar y acceder a los datos de una aplicación de gestión de viajes sencilla. Se cumplirán los siguientes requisitos:--

use aplicacion_viajes
db

db.createCollection("clientes")
db.createCollection("vuelos")
db.createCollection("ciudad")

#Necesitamos conocer la información de los viajeros y los vuelos que hacen.
db.clientes.insertMany([{nombre: "David", dni:45684123, num_vuelos: 4, fecha_nacimiento: ISODate("2000-05-12")},{nombre: "Daani", dni:4534684123, num_vuelos: 1, fecha_nacimiento: ISODate("2000-05-10")},{nombre: "Dachi", dni:45678884123, num_vuelos: 10, fecha_nacimiento: ISODate("2000-02-12")},{nombre: "Danso", dni:45111684123, num_vuelos: 3, fecha_nacimiento: ISODate("2001-05-12")},{nombre: "Daala", dni:45888684123, num_vuelos: 4, fecha_nacimiento: ISODate("2002-05-12")}])
 
#Los viajeros son españoles o con residencia en España, y queremos saber el día que nacen para saber cual es su edad y felicitarle el cumpleaños. Un viajero puede hacer muchos viajes
 db.vuelos.insertMany([{ciudad_origen: "Lugo", ciudad_destino: "Vigo", fecha_salida: ISODate("2000-05-12"), fecha_llegada: ISODate("2000-05-12")},{ciudad_origen: "Vigo", ciudad_destino: "Lugo", fecha_salida: ISODate("2000-05-12"), fecha_llegada: ISODate("2000-05-12")},{ciudad_origen: "Orense", ciudad_destino: "Vigo", fecha_salida: ISODate("2000-05-12"), fecha_llegada: ISODate("2000-05-12")},{ciudad_origen: "Valencia", ciudad_destino: "Pontevedra", fecfecha_salida: ISODate("2000-05-12"), fecha_llegada: ISODate("2000-05-12")}])
 
#De los viajes queremos conocer de qué ciudad es el origen y cual es el destino, y claro la fecha (de salida y llegada). Ah! Y de cada ciudad queremos saber cuantos habitantes tiene y una descripción sencilla de 150 caracteres máximo con un recomendación de cosas para ver.
 db.ciudad.insertMany([{ nombre: "Barcelona", poblacion: 156620,descripcion: "Barcelona es …" }, {  nombre: "Albuquerque",  poblacion: 8912438653, descripcion: "Albuquerque es…" },{ nombre: "Camabrils", poblacion: 3990352456, descripcion: "Camabrils es…"}])




