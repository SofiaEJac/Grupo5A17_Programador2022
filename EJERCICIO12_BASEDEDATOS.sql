CREATE DATABASE PELUQUERIA_CANINA;
USE PELUQUERIA_CANINA;

CREATE TABLE DUENO( 
DNI INT NOT NULL,
NOMBRE VARCHAR(25) NOT NULL,
APELLIDO VARCHAR(25) NOT NULL,
TELEFONO INT DEFAULT NULL,
DIRECCION VARCHAR(50) DEFAULT NULL,
PRIMARY KEY(DNI)
);

CREATE TABLE PERRO(
ID_PERRO INT NOT NULL auto_increment PRIMARY KEY,
NOMBRE VARCHAR(25) DEFAULT NULL,
FECHA_NAC date,
SEXO VARCHAR(30) default NULL,
DNI_DUENO INT NOT NULL,
FOREIGN KEY(DNI_DUENO) REFERENCES DUENO(DNI),
INDEX IDX_NOMPERRO(NOMBRE)
);

CREATE TABLE HISTORIAL(
ID_HISTORIAL INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
FECHA date,
PERRO VARCHAR(25) DEFAULT NULL,
DESCRIPCION VARCHAR(500) DEFAULT NULL,
MONTO INT DEFAULT NULL,
FOREIGN KEY (PERRO) REFERENCES PERRO(NOMBRE)
);


INSERT INTO DUENO (DNI, NOMBRE, APELLIDO, TELEFONO, DIRECCION)
VALUES
('26590986', 'JAVIER', 'MILEI', '1158447123', 'LIBERTAD 25, CABA'),
('25456584', 'ROSA', 'LUCCHETI', '1156547885', 'BELGRANO 456'),
('33698215', 'LORENZO', 'ALVAREZ', '1144778459', 'BALVANERA 458'),
('15987456', 'LUISA', 'CARLOTO', '1146557821', 'PUAN 758');

INSERT INTO PERRO (NOMBRE, FECHA_NAC, SEXO, DNI_DUENO)
VALUES
('LIBERTAD', '2021-05-12', 'HEMBRA', '26590986'),
('NIEVE', '2020-06-23', 'MACHO', '25456584'),
('FRANJITA', '2016-10-23', 'MACHO', '33698215'),
('MECHI', '2020-04-17', 'HEMBRA', '15987456');

INSERT INTO HISTORIAL (FECHA, PERRO, DESCRIPCION, MONTO)
VALUES
('2020-10-06', 'LIBERTAD', 'PITBULL,LIMPIEZA DE OIDOS Y BAÑO', 5000),
('2021-12-12', 'NIEVE', 'CANICHE, PELAJE COLOR BLANCO Y NEGRO, CORTE DE PELO Y BAÑO', 6000),
('2022-06-16', 'FRANJITA', 'MESTIZO, PELAJE CORTO COLOR NEGRO, BAÑO, CORTE PELO Y UÑAS', 8250),
('2020-02-26', 'MECHI', 'CHIHUAHUA, PELAJE CORTO COLOR BEIGE, BAÑO Y LIMPIEZA DE OIDOS', 7890);

#EJERCICIO 12#
SELECT NOMBRE FROM PERRO
where SEXO = "MACHO" AND date(FECHA_NAC) >= '2020-01-01'
and date(FECHA_NAC) <='2022-01-01';