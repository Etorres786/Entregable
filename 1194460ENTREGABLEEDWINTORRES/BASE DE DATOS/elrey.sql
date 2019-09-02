CREATE DATABASE PANADERIA;
USE PANADERIA;

CREATE TABLE ROLES(ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,NOMBRE VARCHAR(20),HABILITADO BOOLEAN NOT NULL);
INSERT INTO ROLES(NOMBRE,HABILITADO)VALUES('ADMIN',1),('ADMINS',1),('EMPLEADO',1),('CLIENTE',1);


CREATE TABLE PERSONAS(CEDULA INT PRIMARY KEY  NOT NULL,NOMBRE VARCHAR(20) NOT NULL,APELLIDOS VARCHAR(30) NOT NULL,TELEFONO VARCHAR(15) NOT NULL,EMAIL VARCHAR(30),DIRECCION VARCHAR(30),HABILITADO BOOLEAN NOT NULL);
INSERT INTO PERSONAS(CEDULA,NOMBRE,APELLIDOS,TELEFONO,EMAIL,DIRECCION,HABILITADO)VALUES(1036668687,'Edwin','Torres','3103770033','etorres786','Cra 58#48-11',1);


CREATE TABLE USUARIOS(CEDULA INT PRIMARY KEY  NOT NULL,NOMBRE VARCHAR(20) NOT NULL,CLAVE CHAR(32) NOT NULL,ROL_ID INT NOT NULL,HABILITADO BOOLEAN NOT NULL,
CONSTRAINT FK_ROLES FOREIGN KEY(ROL_ID) REFERENCES ROLES(ID));


INSERT INTO USUARIOS(CEDULA,NOMBRE,CLAVE,ROL_ID,HABILITADO)VALUES(1036668687,'ADMINS','202cb962ac59075b964b07152d234b70',2,1);

CREATE TABLE EMPLEADOS(CEDULA INT PRIMARY KEY NOT NULL,FECHA_INGRESO DATE NOT NULL,
FECHA_RETIRO DATE,ROL_ID INT NOT NULL,HABILITADO BOOLEAN NOT NULL,CONSTRAINT FK_EMPLEADO FOREIGN KEY(CEDULA) REFERENCES PERSONAS(CEDULA),
CONSTRAINT FK_ROL_EMPLEADO FOREIGN KEY(ROL_ID) REFERENCES ROLES(ID));


CREATE TABLE CLIENTES(CEDULA INT PRIMARY KEY  NOT NULL,HABILITADO BOOLEAN NOT NULL,
CONSTRAINT FK_CLIENTE FOREIGN KEY(CEDULA)REFERENCES PERSONAS(CEDULA));





CREATE TABLE TIPOS(ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,NOMBRE VARCHAR(20),HABILITADO BOOLEAN NOT NULL);
INSERT INTO TIPOS(NOMBRE,HABILITADO)VALUES('PANADERIA',1),('TORTAS',1),('REPOSTERIA',1);

CREATE TABLE PRODUCTOS(ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,NOMBRE VARCHAR(25),VALOR FLOAT NOT NULL,TIPO_ID INT NOT NULL,HABILITADO BOOLEAN NOT NULL,
CONSTRAINT FK_TIPO FOREIGN KEY(TIPO_ID)REFERENCES TIPOS(ID));

CREATE TABLE VENTAS(ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,CEDULA_CLIENTE INT NOT NULL,CEDULA_EMPLEADO INT NOT NULL,FECHA DATE NOT NULL,TOTAL FLOAT NOT NULL,OBSERVACIONES TEXT,HABILITADO BOOLEAN NOT NULL,
CONSTRAINT FK_EM_VENTA FOREIGN KEY(CEDULA_EMPLEADO) REFERENCES EMPLEADOS(CEDULA),
CONSTRAINT FK_CL_VENTA FOREIGN KEY(CEDULA_CLIENTE) REFERENCES CLIENTES(CEDULA));

CREATE TABLE DETALLES_VENTA(ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,VENTA_ID INT NOT NULL,PRODUCTO_ID INT NOT NULL,CANTIDAD INT NOT NULL,VALOR FLOAT NOT NULL,SUBTOTAL FLOAT NOT NULL,HABILITADO BOOLEAN NOT NULL,
CONSTRAINT FK_VEN FOREIGN KEY(VENTA_ID) REFERENCES VENTAS(ID),
CONSTRAINT FK_PRO FOREIGN KEY(PRODUCTO_ID) REFERENCES PRODUCTOS(ID));


CREATE TABLE PEDIDOS(ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,CEDULA_CLIENTE INT NOT NULL,CEDULA_EMPLEADO INT NOT NULL,FECHA DATE NOT NULL,TOTAL FLOAT NOT NULL,HABILITADO BOOLEAN NOT NULL,
CONSTRAINT FK_CL_PEDIDO FOREIGN KEY(CEDULA_CLIENTE) REFERENCES CLIENTES(CEDULA),
CONSTRAINT FK_EM_PEDIDO FOREIGN KEY(CEDULA_EMPLEADO) REFERENCES EMPLEADOS(CEDULA));

CREATE TABLE DETALLES_PEDIDO(ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,PEDIDO_ID INT NOT NULL,PRODUCTO_ID INT NOT NULL,CANTIDAD INT NOT NULL,VALOR FLOAT NOT NULL,SUBTOTAL FLOAT NOT NULL,HABILITADO BOOLEAN NOT NULL);


CREATE TABLE LOGS(ID INT PRIMARY KEY AUTO_INCREMENT,FECHA DATETIME NOT NULL,ROL VARCHAR(25) NOT NULL,USUARIO VARCHAR(25) NOT NULL,ACCION TEXT NOT NULL);

CREATE TABLE PROVEEDORES(ID INT PRIMARY KEY AUTO_INCREMENT,NIT INT NOT NULL,RAZON_SOCIAL VARCHAR(25) NOT NULL,NOMBRE_CONTACTO VARCHAR(25) NOT NULL,TELEFONO VARCHAR(15) NOT NULL,EMAIL VARCHAR(25) NOT NULL,DIRECCION VARCHAR(30) NOT NULL,HABILITADO BOOLEAN NOT NULL);

CREATE TABLE INVENTARIOS(ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,PRODUCTO VARCHAR(25) NOT NULL,FECHA_INGRESO DATE NOT NULL,CANTIDAD INT NOT NULL,VALOR_UNITARIO INT NOT NULL,VALOR_TOTAL INT NOT NULL,HABILITADO BOOLEAN NOT NULL);
