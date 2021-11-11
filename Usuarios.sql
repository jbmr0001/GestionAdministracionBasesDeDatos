/*---------------------------------USUARIO 1-------------------------------------*/
DROP USER propietario;
CREATE USER propietario IDENTIFIED BY propietario;
GRANT CONNECT TO propietario;
GRANT CREATE SESSION TO propietario;
ALTER USER propietario QUOTA 4M ON USERS;

/*PERMISOS EXTRA*/
GRANT CREATE TABLE TO propietario;
GRANT CREATE CLUSTER TO propietario;
GRANT CREATE VIEW TO propietario;
GRANT CREATE DATABASE LINK TO propietario;
GRANT CREATE PROCEDURE TO propietario;
GRANT CREATE TRIGGER TO propietario;
GRANT CREATE MATERIALIZED VIEW TO propietario;



/*--------------------------------USUARIO 2-----------------------------------------*/
DROP USER guest;
CREATE USER guest IDENTIFIED BY guest;
GRANT CONNECT TO guest;
GRANT CREATE SESSION TO guest;
GRANT SELECT ON propietario.medico TO guest;
GRANT SELECT ON propietario.consulta TO guest;
GRANT SELECT ON propietario.departamento TO guest;
GRANT SELECT ON propietario.localidad TO guest;
GRANT SELECT ON propietario.visita TO guest;
GRANT SELECT ON propietario.consulta TO guest;

/*select * from session privs*/


