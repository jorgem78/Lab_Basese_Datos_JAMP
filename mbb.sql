-- CREACIÓN DEL DIRECTORIO XMLDIR (si no existe ya)
CREATE OR REPLACE DIRECTORY XMLDIR AS 'C:\UNIR\Laboratorio1_XML_Oracle_JAMP\JAMP';

-- BORRADO DE TABLAS SI EXISTEN
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE empleados CASCADE CONSTRAINTS';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -942 THEN RAISE; END IF;
END;
/

BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE departamentos CASCADE CONSTRAINTS';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -942 THEN RAISE; END IF;
END;
/

BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE ciudades CASCADE CONSTRAINTS';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -942 THEN RAISE; END IF;
END;
/

BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE regiones CASCADE CONSTRAINTS';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -942 THEN RAISE; END IF;
END;
/

-- CREACIÓN DE TABLAS
CREATE TABLE regiones (
  region_id NUMBER PRIMARY KEY,
  nombre_region VARCHAR2(50) UNIQUE
);

CREATE TABLE ciudades (
  ciudad_id NUMBER PRIMARY KEY,
  nombre_ciudad VARCHAR2(100) UNIQUE,
  direccion VARCHAR2(200),
  region_id NUMBER,
  FOREIGN KEY (region_id) REFERENCES regiones(region_id)
);

CREATE TABLE departamentos (
  departamento_id NUMBER PRIMARY KEY,
  nombre_departamento VARCHAR2(100) UNIQUE,
  ciudad_id NUMBER,
  FOREIGN KEY (ciudad_id) REFERENCES ciudades(ciudad_id)
);

CREATE TABLE empleados (
  empleado_id NUMBER PRIMARY KEY,
  nombre VARCHAR2(50),
  apellido VARCHAR2(50),
  email VARCHAR2(100),
  departamento_id NUMBER,
  FOREIGN KEY (departamento_id) REFERENCES departamentos(departamento_id)
);

-- INSERCIÓN DE DATOS EN REGIONES
INSERT INTO regiones VALUES (1, 'Centro');
INSERT INTO regiones VALUES (2, 'Norte');
INSERT INTO regiones VALUES (3, 'Sur');

-- INSERCIÓN DE DATOS EN CIUDADES
INSERT INTO ciudades VALUES (1, 'Cali', 'Calle 10 #20-30, Cali', 3);      -- Sur
INSERT INTO ciudades VALUES (2, 'Bogota', 'Carrera 7 #45-67, Bogotá', 1); -- Centro
INSERT INTO ciudades VALUES (3, 'Medellín', 'Avenida 80 #50-60, Medellín', 2); -- Norte

-- INSERCIÓN DE DATOS EN DEPARTAMENTOS
INSERT INTO departamentos VALUES (1, 'Ventas', 1);           -- Cali
INSERT INTO departamentos VALUES (2, 'Marketing', 2);        -- Bogotá
INSERT INTO departamentos VALUES (3, 'Soporte', 3);          -- Medellín
INSERT INTO departamentos VALUES (4, 'Recursos Humanos', 2); -- Bogotá
INSERT INTO departamentos VALUES (5, 'Administrativo', 2);   -- Bogotá
INSERT INTO departamentos VALUES (6, 'Financiero', 1);       -- Cali

-- INSERCIÓN DE DATOS EN EMPLEADOS
INSERT INTO empleados VALUES (1, 'Carlos', 'Ramírez', 'carlos.ramirez@jamp.com', 1);
INSERT INTO empleados VALUES (2, 'Laura', 'Gómez', 'laura.gomez@jamp.com', 2);
INSERT INTO empleados VALUES (3, 'Andrés', 'Martínez', 'andres.martinez@jamp.com', 3);
INSERT INTO empleados VALUES (4, 'Sofía', 'Hernández', 'sofia.hernandez@jamp.com', 4);
INSERT INTO empleados VALUES (5, 'Daniel', 'Pérez', 'daniel.perez@jamp.com', 5);
INSERT INTO empleados VALUES (6, 'Janneth', 'Corredor', 'janneth.corredor@jamp.com', 6);

-- Consultas SELECT (para visualizar datos)
SELECT * FROM regiones;
SELECT * FROM ciudades;
SELECT * FROM departamentos;
SELECT * FROM empleados;