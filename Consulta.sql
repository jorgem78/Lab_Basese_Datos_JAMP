SELECT
  XMLELEMENT("EmpleadosDepartamentos",
    XMLAGG(
      XMLELEMENT("EmpleadoDepartamento",
        XMLELEMENT("EmpleadoID", e.empleado_id),
        XMLELEMENT("Nombre", e.nombre),
        XMLELEMENT("Apellido", e.apellido),
        XMLELEMENT("Email", e.email),
        XMLELEMENT("Departamento",
          XMLELEMENT("DepartamentoID", d.departamento_id),
          XMLELEMENT("NombreDepartamento", d.nombre_departamento),
          XMLELEMENT("Ciudad", d.ciudad_id)
        )
      )
    )
  ) AS resultado_xml
FROM empleados e
JOIN departamentos d ON e.departamento_id = d.departamento_id;



