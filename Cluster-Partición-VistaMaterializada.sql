DROP TABLE medico CASCADE CONSTRAINTS;
DROP TABLE localidad CASCADE CONSTRAINTS;
DROP TABLE consulta CASCADE CONSTRAINTS;
DROP TABLE departamento CASCADE CONSTRAINTS;
DROP TABLE paciente CASCADE CONSTRAINTS;
DROP TABLE visita CASCADE CONSTRAINTS;
DROP MATERIALIZED VIEW vista_materializada;
DROP CLUSTER dpmt INCLUDING TABLES;


/* Se ha elegido un cluters en las tablas médico y departamento ya que comparten la columna común nom_dep y
 a menudo se utilizan juntas. Por lo que si que las filas relacionadas son almacenadas
físicamente juntas mediante el cluster, mejora el tiempo de acceso a disco*/
CREATE CLUSTER dpmt (dpm VARCHAR(30))
SIZE 1024;

CREATE INDEX idx_dpmt ON CLUSTER dpmt; 

CREATE TABLE localidad(
  cod_loc			    VARCHAR(5)          CONSTRAINT pk_cod_loc PRIMARY KEY,
  nombre			    VARCHAR(10)	        CONSTRAINT nn_nombre_localidad NOT NULL,
  habitantes      NUMBER(7)           CONSTRAINT ck_habitantes CHECK(habitantes >0),
  km_cuadrados    NUMBER(7)         CONSTRAINT ck_km_cuadrados CHECK(km_cuadrados>0),
  CONSTRAINT ck_densidad CHECK(habitantes/km_cuadrados<1000000),/*RESTRICCIÓN A NIVEL DE TABLA DENSIDAD DE POBLACIÓN IMPOSIBLE*/
  CONSTRAINT ck_inv_densidad CHECK(km_cuadrados/habitantes>0.0001)/*RESTRICCIÓN A NIVEL DE TABLA INVERSA DE DENSIDAD DE POBLACIÓN IMPOSIBLE*/
);

CREATE TABLE consulta(
    num_consulta		VARCHAR(2)          CONSTRAINT pk_num_consulta PRIMARY KEY,
    ala				    VARCHAR(5),
    planta			    NUMBER(1)           CONSTRAINT nn_planta_consulta NOT NULL,
    CONSTRAINT ck_mantenimiento CHECK (ala IN ('N','S','E','O'))/*RESCTRICCIÓN A NIVEL DE TABLA*/
    
);
CREATE TABLE departamento(
   nombre			    VARCHAR(30)         CONSTRAINT pk_nombre_departamento PRIMARY KEY,
   cod_jefe       VARCHAR(4)      /*EN LAS INSERCIONES SE AÑADE LA CLAVE FORÁNEA PARA EVITAR ERROR*/   
) CLUSTER dpmt (nombre);

CREATE TABLE medico(
    cod_medico        VARCHAR(4)          CONSTRAINT pk_cod_medico PRIMARY KEY,
    num_consulta        VARCHAR(2)          CONSTRAINT fk_num_cosulta  REFERENCES consulta,
    turno               VARCHAR(1)          CONSTRAINT ck_turno CHECK (turno IN ('M','T','N')),
    nom_dep             VARCHAR(30)         CONSTRAINT fk_nom_dep      REFERENCES  departamento,
    dni     	        VARCHAR(9)          CONSTRAINT nn_dni_empleado NOT NULL,
    nombre              VARCHAR(10)	        CONSTRAINT nn_nombre_empleado NOT NULL,  
    apellidos	        VARCHAR(20)	        CONSTRAINT nn_apellidos_em NOT NULL,
    cod_loc			    VARCHAR(5)	        CONSTRAINT fk_cod_loc_empleado REFERENCES localidad,
    sexo				VARCHAR(1)	        CONSTRAINT ch_sexo_empleado CHECK (sexo IN ('M','F')),
    telefono			VARCHAR(9),
    f_nac			  	DATE                CONSTRAINT nn_f_nac_n_empleado   NOT NULL,
    sueldo              NUMBER(5)           CONSTRAINT nn_sueldo_empleado NOT NULL
  
) CLUSTER dpmt (nom_dep);


CREATE TABLE paciente(
  n_tarjeta			    VARCHAR(9)          CONSTRAINT pk_n_tarjeta PRIMARY KEY,
  nombre                VARCHAR(20)	        CONSTRAINT nn_nombre_pa NOT NULL,
  apellidos			    VARCHAR(20)	        CONSTRAINT nn_apellidos_pa NOT NULL,
  cod_loc			    VARCHAR(5)	        CONSTRAINT fk_cod_loc_pa REFERENCES localidad,
  altura				NUMBER(4,1)	        CONSTRAINT nn_altura_pa NOT NULL CONSTRAINT ck_altura_pa CHECK (altura>0),
  direccion			    VARCHAR(60) 	    CONSTRAINT nn_direccion_pa NOT NULL,
  c_sangre			    VARCHAR(3)	        CONSTRAINT ck_c_sangre_pa CHECK (c_sangre IN ('0+','0-','A+','A-','B+','B-','AB+','AB-')),
  peso				    NUMBER(4,1)	        CONSTRAINT nn_peso_pa NOT NULL CONSTRAINT ck_peso_pa CHECK (peso>0),
  sexo				    VARCHAR(1)	        CONSTRAINT ck_sexo_pa CHECK (sexo IN ('M','F')),
  fumador		  	    VARCHAR(1)	        CONSTRAINT ck_fumador_pa CHECK (fumador IN ('0','1')),
  c_elec		  	    VARCHAR(30),
  telefono			    VARCHAR(9),
  f_nac			    	DATE	            CONSTRAINT nn_f_nac	NOT NULL,
  descrip_pa            VARCHAR(50),
  seguro                VARCHAR(1)         CONSTRAINT nn_seguro_pa NOT NULL CONSTRAINT ck_seguro_pa CHECK(seguro IN('0','1')),
  imc as (peso/(altura*altura)),/*ATRIBUTO DERIVADO*/
  CONSTRAINT ck_altura_peso CHECK(altura/peso<5),/*RESTRICCIÓN A NIVEL DE TABLA DETECTA DESPROPORCIONALIDAD ENTRE ALTURA Y PESO*/
  CONSTRAINT ck_peso_altura CHECK(peso/altura<4)/*RESTRICCIÓN A NIVEL DE TABLA DETECTA DESPROPORCIONALIDAD ENTRE PESO Y ALTURA*/

);
/* Se ha optado por una partición por rango para distribuir la tabla según la fecha de nacimiento de esta manera
conseguimos mejorar el rendimiento de consultas SQL al reducir bloques de datos necesarios y tener backups más rápidos */
PARTITION BY RANGE (f_nac) ( 
 PARTITION fechas_p1 VALUES LESS THAN (TO_DATE('01-JAN-1920','dd-MON-yyyy'))
    TABLESPACE tsa, PARTITION fechas_p2 VALUES LESS THAN (TO_DATE('01-JAN-1960','dd-MON-yyyy'))
    TABLESPACE tsb, PARTITION fechas_p3 VALUES LESS THAN (TO_DATE('01-JAN-2000','dd-MON-yyyy'))
    TABLESPACE tsc, PARTITION fechas_p4 VALUES LESS THAN (TO_DATE('01-JAN-2010','dd-MON-yyyy'))
    TABLESPACE tsd);
);

    
CREATE TABLE visita(
  cod_visita	        VARCHAR(3)          CONSTRAINT pk_cod_visita PRIMARY KEY,
  descrip			    VARCHAR(50),
  fecha			 	    DATE,
  hora		            NUMBER(4,2)	        CONSTRAINT ck_hora CHECK (hora >=0  AND hora <24),
  num_tarjeta           VARCHAR(9)          CONSTRAINT fk_num_tarjeta  REFERENCES paciente,
  cod_medico          VARCHAR(4)          CONSTRAINT fk_cod_empleado REFERENCES medico,
  receta          VARCHAR (50)            
);

CREATE INDEX index_funcional_1 ON paciente (lower(direccion));
CREATE INDEX index_funcional_2 ON medico (lower(sexo));

CREATE INDEX index_compuesto_1 ON paciente (nombre, apellidos);
CREATE INDEX index_compuesto_2 ON medico (nombre, apellidos);

/*Se ha optado por una vista materializada con los medicos que 
son jefes de cada departamento ya que son tablas que apenas se actualizan. De esta manera evitamos el natural join*/      
CREATE MATERIALIZED VIEW vista_materializada
PARALLEL 4
BUILD IMMEDIATE
REFRESH COMPLETE ON DEMAND
   AS SELECT d.nombre"Departamento",m.nombre,m.apellidos,m.num_consulta
      FROM departamento d,medico m
      WHERE d.cod_jefe=m.cod_medico;
        
      

      