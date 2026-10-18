CREATE DATABASE fitzone_api;

CREATE TABLE socios (
	id_socio INT PRIMARY KEY,
	nombres VARCHAR(50) NOT NULL, 
	apellidos VARCHAR(50) NOT NULL, 
	edad INT NOT NULL, 
	fecha_registro VARCHAR(10) NOT NULL , 
	activo BOOLEAN NOT NULL 
);

INSERT INTO socios 
	(id_socio, nombres, apellidos, edad, fecha_registro, activo)
	VALUES
	(9, 'Pedro', 'Ramirez', '32', '2026-06-16', true ),
	(2, 'Jose', 'Andrade', '30', '2026-12-12', true ),
	(3, 'Andres', 'Zapata', '28', '2026-08-11', false ),
	(4, 'Maria', 'Gomez', '41', '2026-06-17', true ),
	(5, 'Juan', 'Perez', '56', '2026-01-10', false ),
	(6, 'Diego', 'Gonzales', '24', '2026-11-09', true ),
	(7, 'Ana', 'Torres', '37', '2026-02-26', true ),
	(8, 'Fernando', 'Garcia', '27', '2026-04-19', true );


SELECT * FROM socios;

SELECT * FROM socios WHERE activo = true AND edad > 18;

SELECT * FROM socios WHERE fecha_registro > '2026-02-01';

SELECT * FROM socios ORDER BY edad DESC;

ALTER TABLE socios ADD COLUMN email VARCHAR (100);

UPDATE socios SET email = 'abc@gmail.com' WHERE id_socio = 1;

SELECT id_socio, nombres, email FROM socios;

SELECT * FROM socios;	