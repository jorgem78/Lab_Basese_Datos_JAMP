DECLARE
  v_xsd_content CLOB := '<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema"
           xmlns:xdb="http://xmlns.oracle.com/xdb">
  <xs:element name="EmpleadosDepartamentos" xdb:SQLType="XMLTYPE">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="EmpleadoDepartamento" xdb:SQLType="EMPLEADODEPARTAMENTO_OBJ_T" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="EmpleadoID" type="xs:integer"/>
              <xs:element name="Nombre" type="xs:string"/>
              <xs:element name="Apellido" type="xs:string"/>
              <xs:element name="Email" type="xs:string"/>
              <xs:element name="Departamento" xdb:SQLType="DEPARTAMENTO_OBJ_T">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="DepartamentoID" type="xs:integer"/>
                    <xs:element name="NombreDepartamento" type="xs:string"/>
                    <xs:element name="Ciudad" type="xs:integer"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>';
BEGIN
  DBMS_XMLSCHEMA.registerSchema(
    schemaurl => 'empleados_departamentos.xsd',
    schemadoc => v_xsd_content,
    local => TRUE,
    force => TRUE
  );
  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Esquema registrado con las anotaciones SQLType corregidas.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error al registrar el esquema: ' || SQLERRM);
END;
/
