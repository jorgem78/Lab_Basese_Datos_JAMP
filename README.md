# Laboratorio #1: Almacenamiento y Validación de ficheros XML en Oracle

## Descripción

Este laboratorio se enfoca en practicar la recuperación de información de una base de datos Oracle en formato XML, así como su inserción y validación utilizando esquemas XML (XSD).

## Objetivos

* Practicar la recuperación de información de una base de datos Oracle en formato XML.
* Insertar y validar información XML en Oracle.
* Utilizar esquemas XML (XSD) para la validación.
* Diseñar y aplicar consultas SQL/XML.

## Requisitos Software

* Editor de texto multi-lenguajes (e.g., Notepad++).
* Sistema operativo Microsoft Windows (mínimo Windows XP).
    * Se recomienda el uso de una máquina virtual (e.g., Virtual Box) para otros sistemas operativos.
* Sistema Gestor de Base de Datos Oracle 11g.
* SQL Developer. web para validación XML (e.g., XML ValidatorBuddy, XMLValidation.com).

## Actividades Realizadas

1.  **Creación de un Esquema XML (XSD)**: Se diseñó un esquema XSD para representar los datos recuperados de una consulta contra el esquema hr.
2.  **Recuperación de Datos con SQL/XML**: Se utilizó SQL/XML para recuperar información de la base de datos, empleando funciones como `xmlelement`, `xmlattributes`, `xmllag` y `xmlforest`. 
3.  **Validación del Fichero XML**: El archivo XML generado se validó utilizando la herramienta web XMLValidation.com.
4.  **Registro del Esquema XML en Oracle**: Se intentó registrar el esquema XML en la base de datos Oracle. 
5.  **Inserción de Datos Validados**: Se intentó insertar datos que se ajustaran y no se ajustaran al esquema XML en una tabla XMLTYPE en Oracle. 

## Resultados y Análisis

* Se logró la generación exitosa de XML desde SQL y la validación manual del mismo.
* Se encontraron dificultades al intentar configurar la validación automática en Oracle XML DB, con errores persistentes a pesar de seguir la documentación oficial.

## Conclusiones

* La generación de XML desde SQL y su validación manual fueron exitosas. 
* La configuración de Oracle XML DB para la validación automática presentó desafíos significativos. 

## Recomendaciones

* Estudiar la guía Oracle XML DB Developers Guide. 
* Verificar los permisos y espacios de nombres en el XSD. 

## Anexos

* **Código SQL**:
    * registro\_esquema.sql 
    * consulta\_xml.sql
    * esquema\_empresa.sql 
    * labor1\_script\_JAMP.sql 
    * mbb.sql
    * Recuperar Datos en Formato XML.sql 
* **Archivos XSD/XML**:
    * empleados\_departamentos.xsd 
    * consulta\_resultado.xml 
    * datos\_empleados\_JAMP.xml 
    * esquema\_empleados\_JAMP.xsd