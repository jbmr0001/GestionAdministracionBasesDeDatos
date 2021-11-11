/*--------------------------------CREACION USUARIO(se ejecuta en la conexion de administración)-----------------------------------------*/
DROP USER guest2;
CREATE USER guest2 IDENTIFIED BY guest2;
GRANT CONNECT TO guest2;
GRANT CREATE SESSION TO guest2;
GRANT CREATE DATABASE LINK TO guest2;
GRANT CREATE TABLE TO guest2;
ALTER USER guest2 QUOTA 4M ON USERS;

/*---------------------------------A partir de aquí se ejecuta en la conexion de guest2*------------------------------------------*/
select * from session_privs;
DROP DATABASE LINK link_propietario;
CREATE DATABASE LINK link_propietario CONNECT TO propietario IDENTIFIED BY propietario USING 'gabbdd';
SELECT * FROM localidad@link_propietario;


DROP TABLE ciudades_mas_10_ambulancias;
/*Tabla con las ciudades que tienen mas de 10 ambulacias*/
CREATE TABLE ciudades_mas_10_ambulancias( 
  cod_loc			    VARCHAR(5)         
);
INSERT INTO ciudades_mas_10_ambulancias(cod_loc) VALUES('23001');
INSERT INTO ciudades_mas_10_ambulancias(cod_loc) VALUES('20000');
INSERT INTO ciudades_mas_10_ambulancias(cod_loc) VALUES('50000');

/*Medicos de las ciudades con mas de 10 ambulancias*/
SELECT m.nombre,m.apellidos,l.nombre"Nombre Ciudad",ci.cod_loc
FROM medico@link_propietario m, localidad@link_propietario l, ciudades_mas_10_ambulancias ci 
WHERE ci.cod_loc=m.cod_loc AND m.cod_loc=l.cod_loc;
