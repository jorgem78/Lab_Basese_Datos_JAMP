CREATE TABLE empleados_xml (
  id NUMBER PRIMARY KEY,
  documento XMLTYPE
)
XMLTYPE COLUMN documento
STORE AS BINARY XML
XMLSCHEMA "empleados_departamentos.xsd"
ELEMENT "EmpleadosDepartamentos";