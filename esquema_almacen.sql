
--GENERACIÓN DE LA PRIMER TABLA
CREATE TABLE ALMACEN
(
NUMERO_ALMACEN INTEGER, 
UBICACION_ALMACEN VARCHAR2(50),
CONSTRAINT PK_NUM_ALM PRIMARY KEY (NUMERO_ALMACEN)
);
-- Declaración de procedimiento
CREATE OR REPLACE PROCEDURE guardar_almacen(my_num_alm IN integer, my_ub_alm IN varchar2)
AS
-- Variables locales si se requieren
BEGIN
--Cuerpo o lógica del procedimiento
INSERT INTO ALMACEN VALUES(my_num_alm,my_ub_alm);
END;
/


--Usaremos un bloque PL-SQL para probar que esta bien nuestro procedimiento
BEGIN 
guardar_almacen (321,'ECATEPEC');
END;
/

SELECT * FROM ALMACEN

-- Probar el procedimiento con Netbeans
