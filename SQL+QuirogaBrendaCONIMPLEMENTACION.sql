
CREATE SCHEMA if not exists  NEGOCIO;
USE NEGOCIO;
    /* //////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////CREACION DE TABLAS/////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////*/
CREATE TABLE if not exists EMPLEADAS
( 
DNI int not null,
nom_em varchar (30) not null,
edad_em int not null,
direc_em varchar (100) not null,
tel_em int not null,
 constraint pk_empleadas primary key (DNI)
);


CREATE TABLE if not exists CLIENTES
( 
id_cliente int auto_increment,
nom_cli varchar (30) not null,
edad_cli int not null,
direc_cli varchar (100) not null,
tel_cli int not null,
constraint pk_cliente primary key (id_cliente)
);

CREATE TABLE if not exists  PROVEEDORES 
( 
id_proveedores int auto_increment,
nom_prov varchar (30) not null,
tel_prov int not null,
constraint pk_proveedores primary key (id_proveedores)
);


CREATE TABLE if not exists PRODUCTOS 
( 
id_productos int auto_increment,
descripcion_producto varchar (40),
precio_compra float not null,
precio_venta float DEFAULT null,
id_proveedores int,
constraint pk_productos primary key (id_productos),
foreign key FK_PROVEEDORES_PROVEEDORES (id_proveedores)
REFERENCES PROVEEDORES (ID_PROVEEDORES) 
);


CREATE TABLE if not exists COMPRAS
 (
ID_COMPRAS_PEDIDO INT AUTO_INCREMENT,
ID_PRODUCTOS int,
CANTIDAD INT DEFAULT NULL,
id_proveedores int,
CONSTRAINT PK_COMPRAS_PEDIDO PRIMARY key (ID_COMPRAS_PEDIDO),
foreign key FK_COMPAS_PROVEEDORES (id_proveedores)
REFERENCES PROVEEDORES (ID_PROVEEDORES),
foreign key FK_COMPAS_PRODUCTOS (id_productos)
REFERENCES productos (id_productos) 
 
);


CREATE TABLE if not exists VENTAS 
( 
id_ventas int auto_increment,
id_cliente int,
id_productos int,
cantidad int not null,
total_venta float default null,
constraint pk_ventas primary key (id_ventas),
foreign key FK_ventas_productos ( id_productos)
REFERENCES PRODUCTOS ( id_productos) ,
foreign key FK_ventas_cliente (id_cliente)
REFERENCES clientes (id_cliente) 

);

    /* //////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////// INSERCION DE DATOS ///////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////*/
INSERT INTO CLIENTES VALUES (1,'GERMAN', 24 ,'ARGERICH 235',1156473818);
INSERT INTO CLIENTES VALUES (2,'ANTONIO', 50 ,'MERLO 2134', 1567899431);
INSERT INTO CLIENTES VALUES (3,'JUANA', 18, 'ANTONINA 256' , 1127364838);
INSERT INTO CLIENTES VALUES (4,'CAMILA', 27, 'CAMINITO 1992' , 1162846839);
INSERT INTO CLIENTES VALUES (5,'GASTON', 34, 'CURIE 1834' , 1156764957);
INSERT INTO CLIENTES VALUES (6,'MARTINA', 19, 'BERTOLE 2056' , 1572947930);
INSERT INTO CLIENTES VALUES (7,'LUCIANO', 22, 'FLORES 345' , 1127390456);
INSERT INTO CLIENTES VALUES (8,'LISA', 22, 'BRASIL 1109' ,1158930490);
INSERT INTO CLIENTES VALUES (9,'AGUSTIN', 32, 'SULLIVAN 1400' ,1134469863);
INSERT INTO CLIENTES VALUES (10,'MONICA', 46, 'YRIGOYEN 622' ,1523456933);
INSERT INTO CLIENTES VALUES (11,'NOELIA', 67, 'TEL AVIV 245', 1145987098);
INSERT INTO CLIENTES VALUES (12,'MAURO', 25, 'JUNCAL 1324', 1135761196);
INSERT INTO CLIENTES VALUES (13,'IVANA', 38, 'RIOBAMBA 654', 1553466570);
INSERT INTO CLIENTES VALUES (14,'FABIAN', 41, 'CHACARITA 1992', 1167779850);
INSERT INTO CLIENTES VALUES (15,'LARA', 22, 'AVELLANEDA 304', 1142356709);


INSERT INTO VENTAS VALUES (1,2,15,1,0);
INSERT INTO VENTAS VALUES (2,1,13,2,0);
INSERT INTO VENTAS VALUES (3,3,11,4,0);
INSERT INTO VENTAS VALUES (4,4,5,5,0);
INSERT INTO VENTAS VALUES (5,5,15,6,0);
INSERT INTO VENTAS VALUES (6,7,10,2,0);
INSERT INTO VENTAS VALUES (7,6,9,3,0);
INSERT INTO VENTAS VALUES (8,8,4,1,0);
INSERT INTO VENTAS VALUES (9,9,6,1,0);
INSERT INTO VENTAS VALUES (10,11,1,2,0);
INSERT INTO VENTAS VALUES (11,10,2,3,0);
INSERT INTO VENTAS VALUES (12,12,3,1,0);
INSERT INTO VENTAS VALUES (13,13,10,2,0);
INSERT INTO VENTAS VALUES (14,15,12,3,0);
INSERT INTO VENTAS VALUES (15,14,1,4,0);

INSERT INTO PRODUCTOS VALUES (1,2,15,1,0);
INSERT INTO PRODUCTOS VALUES (2,1,13,2,0);
INSERT INTO PRODUCTOS VALUES (3,3,11,4,0);
INSERT INTO PRODUCTOS VALUES (4,4,5,5,0);
INSERT INTO PRODUCTOS VALUES (5,5,15,6,0);
INSERT INTO PRODUCTOS VALUES (6,7,10,2,0);
INSERT INTO PRODUCTOS VALUES (7,6,9,3,0);
INSERT INTO PRODUCTOS VALUES (8,8,4,1,0);
INSERT INTO PRODUCTOS VALUES (9,9,6,1,0);
INSERT INTO PRODUCTOS VALUES (10,11,1,2,0);
INSERT INTO PRODUCTOS VALUES (11,10,2,3,0);
INSERT INTO PRODUCTOS VALUES (12,12,3,1,0);
INSERT INTO PRODUCTOS VALUES (13,13,10,2,0);
INSERT INTO PRODUCTOS VALUES (14,15,12,3,0);
INSERT INTO PRODUCTOS VALUES (15,14,1,4,0);


INSERT INTO COMPRAS VALUES (1,6,2,10);
INSERT INTO COMPRAS VALUES (2,8,1,9);
INSERT INTO COMPRAS VALUES (3,1,1,4);
INSERT INTO COMPRAS VALUES (4,7,3,6);
INSERT INTO COMPRAS VALUES (5,3,1,1);
INSERT INTO COMPRAS VALUES (6,9,2,2);
INSERT INTO COMPRAS VALUES (7,2,1,3);
INSERT INTO COMPRAS VALUES (8,10,3,10);
INSERT INTO COMPRAS VALUES (9,12,1,15);
INSERT INTO COMPRAS VALUES (10,4,1,13);
INSERT INTO COMPRAS VALUES (11,11,2,11);
INSERT INTO COMPRAS VALUES (12,14,1,12);
INSERT INTO COMPRAS VALUES (13,15,2,1);
INSERT INTO COMPRAS VALUES (14,5,1,5);
INSERT INTO COMPRAS VALUES (15,13,4,15);


INSERT INTO PROOVEDORES VALUES ( 1, 'ARCOR' , 1134567456);
INSERT INTO PROOVEDORES VALUES (2, 'UNILEVER' , 42356785	);
INSERT INTO PROOVEDORES VALUES (3, 'SIFT' , 1527348596	);
INSERT INTO PROOVEDORES VALUES (4, 'SIX SRL' , 1165273485	);
INSERT INTO PROOVEDORES VALUES (5, 'TRES ARROLLOS' ,4847563	);
INSERT INTO PROOVEDORES VALUES (6, 'CRACKS' , 1156738456	);
INSERT INTO PROOVEDORES VALUES (7, 'SERLY' , 1528649369	);
INSERT INTO PROOVEDORES VALUES (8, 'FACTORY' , 1566345009	);
INSERT INTO PROOVEDORES VALUES (9, 'CRAFTS' , 4481564	);
INSERT INTO PROOVEDORES VALUES (10, 'YAGUAR' , 1156478950	);
INSERT INTO PROOVEDORES VALUES (11, 'NINI' , 1567443567	);
INSERT INTO PROOVEDORES VALUES (12, 'MAXICONSUMO' , 1109845678 );	
INSERT INTO PROOVEDORES VALUES (13, 'BERIS', 1122304868	);
INSERT INTO PROOVEDORES VALUES (14, 'LA ANONIMA' , 1583764963	);
INSERT INTO PROOVEDORES VALUES (15, 'RECORDS' , 1168863583 );


INSERT INTO EMPLEADAS VALUES (40567898, 'LORENA' , 24 , 'ALAMGRO 1867' , 1567283456 );
INSERT INTO EMPLEADAS VALUES (42685498, 'JUANA' , 22 , 'PERDRIEL 1234' , 1162673544 );
INSERT INTO EMPLEADAS VALUES (35890678, 'MAILEN' , 27 , 'LAVALLOL 243' , 1159872380 );

SELECT * FROM CLIENTES;
SELECT * FROM PROVEEDORES ;
SELECT * FROM PRODUCTOS;
SELECT * FROM  COMPRAS;
SELECT * FROM  VENTAS;
SELECT * FROM  empleadas;

SELECT  ID_CLIENTE ,  ID_COMPRAS_PEDIDO
FROM CLIENTES JOIN COMPRAS
ORDER BY id_compras_pedido desc;
 
     /* //////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////CREACION DE VIEWS//////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////*/
   create or replace view vw_productos
 as (select id_productos , descripcion_producto  from productos);

  create or replace view vw_proveedores
 as (select id_proveedores, nom_prov , tel_prov from proveedores);

  create or replace view vw_proveedores
 as (select id_proveedores, nom_prov , tel_prov from proveedores);
 
     /* //////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////CREACION DE FUNCIOON PARA CALCULAR EL PRECIO DE VENTA DE UN PRODUCTO.TRAYENDO EL 
    PRECIO_COMPRA (PRECIO DE COMPRA A PROVEEDORES) Y PONIENDO COMO PARAMETRO UNA VARIABLE QUE ALACENARA EL PORCENTAJE
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////*/
 drop function if exists fn_calcula_precio_venta;
  delimiter $$ 
 create function fn_calcula_precio_venta (p_porcentaje_venta decimal(4,2) ,
					                      P_precio_compra int
							                )
 returns int 
 deterministic 
 begin   
 
 declare v_precio_venta int;
 set v_precio_venta =  
     p_precio_compra * p_porcentaje_venta
		 
       ;
   return  v_precio_venta;   
 end$$ 
 delimiter ;
 
 SELECT negocio.fn_calcula_precio_venta ( 1.4, 100)
 AS v_precio_venta;
 
 
     /* //////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////CREACION DE FUNCION EN LA CFUAL MULTIPLICAMOS EL PRECIO DE COMPRA Y LA CANTIDAD PARA PODER 
    SABER EL TOTAL DE LA VENTA/////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////*/
 
  drop function if exists fn_VALOR_TOTAL;
  delimiter $$ 
 create function fn_VALOR_TOTAL (P_VALOR_PRODUCTO INT,
					                      P_CANTIDAD int
							                )
 returns int 
 deterministic 
 begin   
 
 declare V_VALOR_TOTAL int;
 set V_VALOR_TOTAL  =  
    P_VALOR_PRODUCTO * P_CANTIDAD
		 
       ;
   return  V_VALOR_TOTAL;   
 end$$ 
 delimiter ;
 
  SELECT negocio.fn_VALOR_TOTAL ( 570 , 4)
 AS V_VALOR_TOTAL;


    /* //////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////CREACION DE PROCESO EL CUAL PASAMOS POR PARAMETRO UNA TABLA Y 'ASC' O 'DESC' Y ORDENARA 
    LA TABLA DE MANERA ASCENDENTE O DESCENDENTE SEGUN LO INDICADO /////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////*/

DROP PROCEDURE SP_ASC_DESC ;
DELIMITER //
CREATE PROCEDURE SP_ASC_DESC (IN P_TABLA_ VARCHAR(32),
							IN P_ASC_DESC VARCHAR (32))
BEGIN
 

SET  @T1 = CONCAT ('SELECT * FROM CLIENTES U ORDER BY ', ' ' , P_TABLA_ , ' ' , P_ASC_DESC);

 PREPARE PARAM FROM @T1;
 EXECUTE PARAM;
 DEALLOCATE PREPARE PARAM;


END//
DELIMITER ;
SET @P_TABLA_ = 'NOM_CLI',
	@P_ASC_DESC = 'ASC' ;

CALL SP_ASC_DESC (@P_TABLA_ , @P_ASC_DESC);

    /* //////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////CREACION DE PROCESO EN BASE A LA FUNCION PARA SACAR EL PRECIO DE VENTA DE UN PRODUCTO/
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////*/


DROP PROCEDURE IF EXISTS SP_PRECIO_VENTA ;
DELIMITER //
CREATE PROCEDURE SP_PRECIO_VENTA (IN p_porcentaje_venta FLOAT (4,2) ,
								  IN P_precio_compra int,
                                  OUT P_PRECIO_VENTAS INT)
BEGIN 
	select distinct 
       precio_compra ,
	   PRECIO_VENTA = P_precio_compra * p_porcentaje_venta  
       into 
       P_precio_compra ,
       p_precio_ventas
       
       from productos
       ;
END//
DELIMITER ;
SET @p_porcentaje_venta = '1.4',
	@P_precio_compra = '500' ;

CALL SP_ASC_DESC (@p_porcentaje_venta , @P_precio_compra);


    /* //////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////CREACION DE TABLA PARA ALMACENAR LOS CAMBIOS EN LAS TABLAS ///////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////*/
    
drop table if  exists LOG_AUDITORIA;
CREATE TABLE IF NOT EXISTS LOG_AUDITORIA 
(
ID_LOG INT AUTO_INCREMENT , 
NOMBRE_DE_ACCION VARCHAR(10) ,
NOMBRE_TABLA VARCHAR(50) ,
FECHA_UPD_INS_DEL DATE ,
PRIMARY KEY (ID_LOG)
)

    /* //////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////CREACION DE DISPARADOS EL CUAL GUARADARA LA ACCION EL LA TABLA DE AUDITORIA/////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////*/
drop TRIGGER if exists TRG_LOG_PRODUCTO
DELIMITER //
CREATE TRIGGER TRG_LOG_PRODUCTO AFTER INSERT ON NEGOCIO.PRODUCTOS
FOR EACH ROW 
BEGIN

INSERT INTO LOG_AUDITORIA (NOMBRE_DE_ACCION , NOMBRE_TABLA , FECHA_UPD_INS_DEL)
VALUES ( 'INSERT' , 'PRODUCTO' , NOW());

END//
DELIMITER ;





INSERT INTO PRODUCTOS ( `precio_compra ` , `descripcion_producto`) VALUES ( 300 , 'DULCE DE LECHE');
INSERT INTO PRODUCTOS ( `precio_compra ` , `descripcion_producto`) VALUES ( 170 ,'HARINA');
INSERT INTO PRODUCTOS (`precio_compra ` , `descripcion_producto`) VALUES ( 280 ,'MAYONESA');

    /* //////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////CREACION DE USUARION Y PERMISOS////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////*/
-- CREACION DE USUARIOS
create user if not exists 'empleado1'@'negocio' identified by 'empleadouno' ; 
create user if not exists 'empleado2'@'negocio' identified by 'empleadodos' ; 

flush privileges; 


--  PERMISOS DE LECTURA 
GRANT SELECT ON clientes TO 'empleado1'@'negocio'  ;
GRANT SELECT ON compras TO 'empleado1'@'negocio'  ;
GRANT SELECT ON productos TO 'empleado1'@'negocio'  ;
GRANT SELECT ON proveedores TO 'empleado1'@'negocio'  ;
GRANT SELECT ON ventas TO 'empleado1'@'negocio'  ;

-- PERMISO DE LECTURA , INSERCION Y MODIFICACION 
GRANT SELECT , INSERT , ALTER ON clientes TO 'empleado2'@'negocio'  ;

    /* //////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////TRANSACCIONES ////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////////*/


SELECT @@autocommit;
SET @@autocommit = 1;
SET @@autocommit = 0;

-- ELIMINACION DE REGISTROS TABLA CLIENTES
START TRANSACTION;
DELETE FROM clientes WHERE ID_CLIENTE = 1;
DELETE FROM clientes WHERE ID_CLIENTE = 3;
DELETE FROM clientes WHERE ID_CLIENTE = 7;
DELETE FROM clientes WHERE ID_CLIENTE = 11;
-- ROLLBACK ; 
COMMIT ;

-- INSERCION DE REGISTROS EN LA TABLA PROVEEDORES
START TRANSACTION; 
INSERT INTO PROVEEDORES VALUES (20, 'REXONA' , 1124356278);
INSERT INTO PROVEEDORES VALUES (22, 'SYS' , 11576345668);
INSERT INTO PROVEEDORES VALUES (23, 'MAGLIOLAC' , 1567988767);
INSERT INTO PROVEEDORES VALUES (25, 'CRAZYPOP' , 1130997658);
SAVEPOINT P1;
INSERT INTO PROVEEDORES VALUES (26, 'ESTANCIA LOS NARANJOS' , 1526347589);
INSERT INTO PROVEEDORES VALUES (27, 'UWEL' , 11578739668);
INSERT INTO PROVEEDORES VALUES (28, 'SANCOR' , 1123558767);
INSERT INTO PROVEEDORES VALUES (29, 'LA COMARCA' , 1130802558);
SAVEPOINT P2;
 
-- release SAVEPOINT P1; -- ELIMINACION DEL SAVEPOINT
