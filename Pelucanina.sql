create database Pelucanina;

use Pelucanina;

-- Tabla sin claves foráneas 
create table DUENO(
DNI int not null unique,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Telefono bigint(50) not null,
Direccion varchar(50) not null,
constraint pk_dni primary key(DNI)
);

-- Tablas con claves foráneas
create table PERRO(
ID_Perro int not null unique,
Nombre varchar(50) not null,
Fecha_nac date not null,
Sexo varchar(6) not null,
DNI_dueno int not null,
constraint pk_idp primary key(ID_Perro),
foreign key(DNI_dueno) references DUENO(DNI)
);

create table HISTORIAL(
ID_Historial int not null unique,
Fecha date not null,
Perro int not null,
Descripcion varchar(200) not null,
Monto float not null,
constraint pk_idh primary key(ID_Historial),
foreign key(Perro) references PERRO(ID_Perro)
);
-- Puntos 1 y 2 
insert into DUENO values (37550904, 'Alfonsina', 'Storni', '2804026694', 'Los Pinos 64');

insert into PERRO values (24, 'Nelly', '2017-01-03', 'Hembra', 37550904);

-- Punto 8 (Creación de nuevo registro y agregado de consulta para verificar)
insert into HISTORIAL values (007, "2022-08-12", 10, "Blanco y negro con orejas marrones. Pelo largo", 850);
select Perro from HISTORIAL;
