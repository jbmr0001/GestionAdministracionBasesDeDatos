/*INSERCION EN LOCALIDAD*/
INSERT INTO localidad(cod_loc,nombre,habitantes,km_cuadrados)
VALUES('23001','JAEN',150000,500);
INSERT INTO localidad(cod_loc,nombre,habitantes,km_cuadrados)
VALUES('20000','LINARES',40000,500);
INSERT INTO localidad(cod_loc,nombre,habitantes,km_cuadrados)
VALUES('30000','ANDUJAR',25000,340);
INSERT INTO localidad(cod_loc,nombre,habitantes,km_cuadrados)
VALUES('40000','SEGURA',10000,400);
INSERT INTO localidad(cod_loc,nombre,habitantes,km_cuadrados)
VALUES('50000','UBEDA',34000,400);




/*INSERCION CONSULTA*/
INSERT INTO consulta(num_consulta,ala,planta)
VALUES(1,'N',1);
INSERT INTO consulta(num_consulta,ala,planta)
VALUES(2,'S',1);
INSERT INTO consulta(num_consulta,ala,planta)
VALUES(3,'E',1);
INSERT INTO consulta(num_consulta,ala,planta)
VALUES(4,'O',1);



/*INSERCION DEPARTAMENTO*/
INSERT INTO departamento(nombre, cod_jefe)
VALUES('CARDIOLOGIA', '2000');
INSERT INTO departamento(nombre, cod_jefe)
VALUES('NEUROLOGIA', '1900');
INSERT INTO departamento(nombre, cod_jefe)
VALUES('UROLOGIA', '1600');  

/*INSERCION PACIENTES*/
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('100000000', 'WILLIAM', 'SMITH', '20000', 192, 'C/ RAMON Y CAJAL NUM7', 'A+', 90, 'M', '1', 'willS@hotmail.com', '111111117', '01/01/1991', 'TIENE OBESIDAD Y DIABETES','0');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('110000000', 'FRANCISCO', 'CARMONA', '40000', 155, 'C/ ESPANA NUM3', '0-', 48.3, 'M', '0', '', '222222226', '02/02/1965', 'PROBLEMAS CARDIOVASCULARES SEVEROS','0');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('120000000','ANDRES', 'MORAL', '20000', 174, 'C/ TORREDELCAMPO NUM2', 'AB-', 75, 'M', '0', 'xX_killer_Xx@gmail.com', '333333335', '03/03/1974', 'SUFRE DE MIOPIA Y ARTROSIS','1');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('130000000','MANOLO', 'CAMPOS', '30000', 186, 'C/ FEDERICO GARCIA LORCA NUM1 Bloque 2 Piso 2K', 'A-', 120, 'M', '1', 'manolito777@gmail.com', '444444442', '04/04/1999', 'ALCOHOLICO','1');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('140000000', 'JESUS', 'DUQUE', '40000', 158, 'C/ LOPE DE VEGA NUM6 Piso 1', 'B+', 50, 'M', '1', 'perez_martin@gmail.com', '555555555', '05/05/2005', 'SUFRE PROBLEMAS CARDIORESPIRATORIO','1');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('150000000','ANA', 'MARTINEZ', '40000', 176, 'C/ PAU CASASL NUM9', 'B+', 64, 'F', '1', 'av_duermo@gmail.com', '666666666', '06/06/1955', 'NARCOLEPSIA','0');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('160000000','FRANCISCA', 'LOPEZ', '23001', 190, 'C/ ANTONIO MACHADO NUM 20 PISO 3A', 'AB+', 98, 'F', '0', '', '777777777', '07/07/1945', 'SUFRE AUTISMO','1');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('170000000',	'ANTONIO',	'DEL BOSQUE',	'23001',	166,	'C/ CLARA CAMPOAMOR NUM1',	'0+',	150.5,	'M',	'0',	'OnlyJungle@gmail.com',	'888888888',	'08/08/1958',	'TIENE PROBLEMAS PSIQUICOS','1');										 
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('180000000',	'MARIA CRISTINA',	'JIMENEZ',	'20000',	178,	'C/ CRISTOBAL COLON NUM102 BLOQUE 7 PISO 7H', '0-', 70,	'F', '0',	'', '661916591', '09/09/1974',	'FALTA DE AZUCAR EN SANGRE','1');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('190000000','PEDRO',	'GARCIA',	'23001',	175, 'PLAZA DE LAS BATALLAS NUM8 PISO 3',	'A+',	55,	'M',	'0', '', '999999999',	'10/10/1936',	'TIENE UN MARCAPASOS','1');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('200000000','MARIANO',	'JIMENEZ',	'20000',	170,	'PASEO DE MUNOZ GRANDES NUM34 BLOQUE 9 PISO 8D',	'A+',	90,	'M',	'0',	'Maria_no_jim@gmail.es',	'123123123',	'11/11/1979',	'SUFRE ACONDROPLASIA','1');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('230000000','JOSEFINA',	'JIMENEZ',	'40000',	159,	'C/  GUILLERMO ROVIROSA NUM16',	'B-',	56,	'F',	'0',	'SingedMVP@gmail.com',	'789789789',	'13/01/1966',	'TIENE SINDROME DE DOWN','0');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('240000000','CRISTIANO',	'RONALDO',	'40000',	149,	'C/  ARQUITECTO SANCHEZ ARCAS NUM69',	'A-',	100,	'M',	'1',	'elver_gaga@yahoo.es',	'147147147',	'14/02/1998',	'SUFRE DE COJERA','0');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('250000000','MARIA TERESA',	'CAMPOS',	'40000',	156,	'C/ AVENIDA DE ANDALUCIA NUM28 PISO 3Y',	'0+',	80,	'F',	'0',	'TereCamp@hotmail.es',	'258258258',	'15/03/2010',	'INTOLERANTE A LA MORFINA','1');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('270000000',	'ERWIN',	'SMITH',	'20000',	177,	'C/ POETA JOAN MARAGAL NUM 9',	'B+',	60,	'M',	'1', '', '951951951',	'18/05/1976',	'ALCOHOLICO','0');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('280000000',	'DULCE',	'ACEITUNO',	'50000',	164,	'C/ JULIAN BESTEIRO NUM1',	'AB+',	54,	'F',	'1',	'OV2002@gmail.com',	'847847847',	'19/06/1988',	'HIPEREACCION AL POLEN','1');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('290000000',	'ANASTASIA',	'FERNANDEZ',	'30000',	182,	'C/  MELCHOR RODRIGUEZ NUM72 PISO 3L',	'B-',	99,	'F',	'0',	'diab_etic@gmail.com',	'623623623',	'20/07/1954',	'DIABETICO','0');
INSERT INTO paciente(n_tarjeta, nombre, apellidos, cod_loc, altura, direccion, c_sangre, peso, sexo, fumador, c_elec, telefono, f_nac, descrip_pa,seguro)
VALUES('300000000','PABLO LUCAS',	'ROMERO',	'50000',	156,	'C/ FILOSOFA SIMONE WEIL NUM19 PISO 6D',	'A+',	45.6,	'M',	'0', 'p_lucas_romero@red.ujaen.es',	'492513484',	'21/08/1977',	'LUDOPATIA SEVERA','1');


/*INSERCION MEDICO*/
INSERT INTO medico(cod_medico,num_consulta,turno,nom_dep,dni,nombre,apellidos,cod_loc,sexo,telefono,f_nac,sueldo)
VALUES('2000','1','M','CARDIOLOGIA','23456781B','PACO','MOLA','20000','M','53221221',DATE'1999-06-02',1800);
INSERT INTO medico(cod_medico,num_consulta,turno,nom_dep,dni,nombre,apellidos,cod_loc,sexo,telefono,f_nac,sueldo)
VALUES('3000','2','M','NEUROLOGIA','34567812C','ANTONIO','GOMEZ','50000','M','45112121',DATE'1990-08-06',1500);
INSERT INTO medico(cod_medico,num_consulta,turno,nom_dep,dni,nombre,apellidos,cod_loc,sexo,telefono,f_nac,sueldo)
VALUES('1600','3','M','UROLOGIA','78884541G','ANTONIO','LENDINEZ','40000','F','424142775',DATE'1988-05-04',1900);
INSERT INTO medico(cod_medico,num_consulta,turno,nom_dep,dni,nombre,apellidos,cod_loc,sexo,telefono,f_nac,sueldo)
VALUES('1800','4','T','CARDIOLOGIA','44844217V','ISABEL','MADURO','50000','F','257465227',DATE'1999-09-22',1800);
INSERT INTO medico(cod_medico,num_consulta,turno,nom_dep,dni,nombre,apellidos,cod_loc,sexo,telefono,f_nac,sueldo)
VALUES('1900','2','N','NEUROLOGIA','65544555A','JULIO','FERNANDEZ','40000','M','63725454',DATE'1983-07-10',1700);


ALTER TABLE departamento 
ADD (CONSTRAINT fk_cod_jefe FOREIGN KEY (cod_jefe) REFERENCES medico);


/*INSERCION VISITA*/
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('100','DOLOR DE CABEZA Y RESFRIADO',DATE'2020-04-07',10.00,'140000000','2000','PARACETAMOL CADA 8 HORAS');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('200','SINTOMAS DE CORONAVIRUS',DATE'2020-03-21',11.00,'100000000','1800','TEST Y CUARENTENA');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('300','HERIDA EN LA PIERNA',DATE'2020-04-06'	,12.00,'200000000','2000','BETADINE CADA DÍA');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('400','SINTOMAS DE GRIPE A',DATE'2020-02-28',13.00,'250000000','1600','INGRESO');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('500','ANALITICA DE SANGRE',DATE'2020-01-27',8.00,'130000000','1900','LEXOTIROXINA SÓDICA');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('600','VOMITOS Y GASTROENTERITIS',DATE'2020-04-01',9.00,'270000000','1800','BENDROFLUMETIAZIDA CADA 8 HORAS');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('800','TENDINITIS',DATE'2020-03-11',9.00,'280000000','2000','SELEGILINE DIARIO');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('110','POSIBLE FRACTURA TIBIA',DATE'2020-02-19',12.00,'130000000','1800','OPERACIÓN');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('130','PERDIDA DE CONOCIMIENTO',DATE'2020-01-25',11.3,'110000000','1900','LORAZEPAM CADA 6 HORAS');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('140','POSIBLE FRACTURA EN LA RODILLA',DATE'2020-01-26',10.00,'150000000','2000','SIMVASTATINA DIARIA');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('160','ANALITICA DE SANGRE',DATE'2020-02-01',9.00,'300000000','1800','ATORVASTATINA');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('170','SINTOMAS DE RESFRIADO COMUN',DATE'2020-02-02',10.00,'170000000','1900','SECOBARBITAL CADA DOS DIAS');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('180','ESGUINCE DE TOBILLO',DATE'2020-02-03',23.00,'270000000','2000','CALCETÍN PROTECTOR Y REPOSO');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('190','ANALITICA DE SANGRE',DATE'2020-02-04',11.00,'230000000','1600','PITAVASTATIN');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('210','SINTOMAS DE RESFRIADO COMUN',DATE'2020-02-05',10.15,'110000000','1600','PARACETAMOL CADA 8 HORAS');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('230','ESGUINCE DE TOBILLO',DATE'2020-02-07',9.00,'230000000','2000','REPOSO');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('240','SINTOMAS DE RESFRIADO COMUN',DATE'2020-02-04',11.00,'160000000','1600','PARACETAMOL CADA 8 HORAS');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('250','CITA MENSUAL CONTROL COLESTEROL',DATE'2020-02-05',10.15,'250000000','1600','PITAVASTATIN');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('270','POSIBLE FRACTURA EN LA RODILLA',DATE'2020-02-07',9.00,'300000000','2000','RADIOGRAFIA');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('280','HERIDA EN LA PIERNA',DATE'2020-02-04',11.00,'120000000','1600','ALBUTEROL');
INSERT INTO visita(cod_visita,descrip,fecha,hora,num_tarjeta,cod_medico,receta)
VALUES('290','SINTOMAS DE CORONAVIRUS',DATE'2020-02-05',10.15,'190000000','1600','CUARENTENA Y PARACETAMOL');


