/*-------------------------------EJECUTAR POR SEPARADO LOS TRIGGERS---------------------------------*/
/*Actualiza el atributo derivado.(para que no de error de la columna virtual en la creacion de la tabla imc se tendria que haber inicializado como NUMBER*/
CREATE OR REPLACE TRIGGER trigger1
BEFORE UPDATE OR INSERT ON paciente
FOR EACH ROW
BEGIN
    :new.peso:=:new.peso/(:new.altura*:new.altura);
  
END;



/*-----------------------------------------------------------------------------------*/
/*Lanza error si se actualiza de forma excesiva el atributo peso*/
CREATE OR REPLACE TRIGGER trigger2
BEFORE UPDATE ON paciente
FOR EACH ROW
  DECLARE diferencia NUMBER;
BEGIN
  diferencia:=:new.peso-:old.peso;
  IF(diferencia>:old.peso*1.2)THEN
  RAISE_APPLICATION_ERROR(-20000,'Subida excesiva');
  END IF;
  
END;


