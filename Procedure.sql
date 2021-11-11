CREATE OR REPLACE PROCEDURE diferencia_sueldos_sexos(vsexo1 IN 
medico.sexo%TYPE,vsexo2 IN medico.sexo%TYPE, vdiferencia IN OUT NUMBER)AS 
  CURSOR sueldos1(csexo1 IN medico.sexo%TYPE)IS SELECT
  sueldo FROM medico WHERE sexo=csexo1;
  csueldo1 medico.sueldo%TYPE;
  CURSOR sueldos2(csexo2 IN medico.sexo%TYPE)IS SELECT
  sueldo FROM medico WHERE sexo=csexo2;
  csueldo2 medico.sueldo%TYPE;
  suma1 NUMBER;
  suma2 NUMBER;
BEGIN
  OPEN sueldos1(vsexo1);
  OPEN sueldos2(vsexo2);
  suma1:=0;
  suma2:=0;
  LOOP
    FETCH sueldos1 INTO csueldo1; EXIT WHEN sueldos1%NOTFOUND;
   suma1:=suma1+csueldo1;
  
    FETCH sueldos2 INTO csueldo1; EXIT WHEN sueldos2%NOTFOUND;
   suma2:=suma2+csueldo2;
 
  END LOOP;

  vdiferencia:=suma1-suma2;
END;
/*
DECLARE diferencia NUMBER;
BEGIN diferencia_sueldos_sexos('M','H',diferencia);
END;
*/