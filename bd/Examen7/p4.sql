--Sobre la BD Huway, implementa los siguientes disparadores:

--act_duracion_t. Al actualizar un viaje, comprobará que al menos la duración es de 20 segundos. Si no lo es, lo actualizará para que sea ese valor
CREATE OR REPLACE FUNCTION check_duracion_t() RETURNS trigger AS
$$
BEGIN
  IF NEW.duration < 20
  THEN NEW.duration :=20;
  END IF;
  RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER check_duracion
BEFORE INSERT ON trips
FOR EACH ROW
EXECUTE FUNCTION check_duracion_t();


--check_municipio_t. Cuando se actualice el municipio de una estación, garantizará que sea de un municipio que esté previamente en la tabla. En el caso de que no exista ese municipio previamente no se aceptarán municipios nuevos.
CREATE OR REPLACE FUNCTION esta_en_la_tabla() RETURNS trigger AS
$$
BEGIN
IF (NEW.municipality  IN (select distinct municipality from stations))
        THEN
        RAISE NOTICE 'El municipio existe en la tabla Stations';
        ELSE
        RAISE EXCEPTION 'No existe este municipio en la tabla Stations';
        END IF;
        RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER check_municipio_t
BEFORE UPDATE ON stations
FOR EACH ROW
EXECUTE FUNCTION esta_en_la_tabla();
