REGIONES
-----------
region_id (PK)
nombre_region
    |
    |
    v
CIUDADES
-----------
ciudad_id (PK)
nombre_ciudad
direccion
region_id (FK) ----> REGIONES
    |
    |
    v
DEPARTAMENTOS
-----------
departamento_id (PK)
nombre_departamento
ciudad_id (FK) ----> CIUDADES
    |
    |
    v
EMPLEADOS
-----------
empleado_id (PK)
nombre
apellido
email
departamento_id (FK) ----> DEPARTAMENTOS
