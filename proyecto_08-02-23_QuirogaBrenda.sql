CREATE SCHEMA if not exists  NEGOCIO;

USE NEGOCIO;


CREATE TABLE if not exists COMPRAS
 (
id_COMPRAS INT AUTO_INCREMENT,
PRODUCTO VARCHAR (30) not null,
CANTIDAD INT NOT NULL,
PRECIO INT NOT NULL,
PRECIO_TOTAL int NOT NULL,
id_proveedores int,
CONSTRAINT PK_COMPRAS PRIMARY key (id_COMPRAS),
foreign key FK_COMPAS_PROVEEDORES (id_proveedores)
REFERENCES PROVEEDORES (ID_PROVEEDORES) 
);



CREATE TABLE if not exists VENTAS 
( 
id_ventas int auto_increment,
producto varchar (30) not null,
cantidad int not null,
precio int not null,
precio_total float not null,
id_cliente int,
id_productos int,
constraint pk_ventas primary key (id_ventas),
foreign key FK_ventas_productos ( id_productos)
REFERENCES PRODUCTOS ( id_productos) ,
foreign key FK_ventas_cliente (id_cliente)
REFERENCES clientes (id_cliente) 

);

CREATE TABLE if not exists PRODUCTOS 
( 
id_productos int auto_increment,
vencimiento date not null,
cantidad int not null,
precio_compra float not null,
precio_venta float not null,
stock int not null,
id_proveedores int,
constraint pk_productos primary key (id_productos),
foreign key FK_PROVEEDORES_PROVEEDORES (id_proveedores)
REFERENCES PROVEEDORES (ID_PROVEEDORES) 
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
producto varchar (30) not null,
id_producto int,
nom_prov varchar (30) not null,
tel_prov int not null,
precio int not null,
constraint pk_proveedores primary key (id_proveedores),
foreign key FK_PRODUCTO(id_PRODUCTO)
 REFERENCES PRODUCTOS (ID_PRODUCTOS) 
);


create or replace view vw_id_producto_producto
 as (select id_producto , producto from proveedores);
 
 create or replace view vw_cantidad_ventas 
 as (select cantidad from ventas);
 
  create or replace view vw_cantidad_compras
 as (select cantidad from compras);
 
 select * from  vw_cantidad_compras join vw_cantidad_ventas ;
 
create or replace view vw_ticket
as (select cantidad , precio , precio total from compras);

 select * from vw_ticket;
 
  create or replace view vw_proveedores
 as (select id_proveedores, nom_prov , tel_prov from proveedores);
 
 select * from vw_proveedores;
 
 