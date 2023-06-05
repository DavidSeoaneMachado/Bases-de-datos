--Le añades una tabla que se llame "frutas" con un campo que sea clave primaria y otro que permita usar JSON, que guardará información sobre frutas.--
CREATE TABLE frutas (
  id SERIAL PRIMARY KEY,
  datos JSONB
);

--Añade al menos 5 frutas a tu base de datos--
INSERT INTO frutas (datos)
VALUES
  ('{
    "nombre": "Naranja","diametro": 2,"origen": "Vigo"
  }'),
  ('{
    "nombre": "Melocoton","diametro": 1,"origen": "Lugo"
  }'),
  ('{
    "nombre": "Uva","diametro": 5,"origen": "Madrid"
  }'),
  ('{
    "nombre": "Fresa","diametro": 7,"origen": "Valencia"
  }'),
  ('{
    "nombre": "Manzana","diametro": 3,"origen": "Vigo"
  }');

--Ponme la consulta para mostrar las frutas que vienen de Ourense--
SELECT * FROM frutas WHERE datos->>'origen' = 'Ourense';


--Muéstrame las frutas que comiencen por la letra N--
SELECT * FROM frutas WHERE datos->>'nombre' LIKE 'N%';
