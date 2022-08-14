create database Peluco;

use Peluco;

create table Dueno(
DNI int not null unique,
Nombre varchar(150) not null,
Apellido varchar(150) not null,
Telefono varchar(50) not null,
Direccion varchar(150) not null,
primary key(DNI)
);

create table Perro(
ID_Perro int not null unique,
Nombre varchar(150) not null,
Fecha_nac date not null,
Sexo varchar(150) not null,
DNI_dueno int not null,
primary key(ID_Perro),
foreign key(DNI_dueno) references Dueno(DNI)
);

create table Historial(
ID_Historial int not null unique,
Fecha datetime not null,
Perro int not null,
Descripcion varchar(150) not null,
Monto float not null,
primary key(ID_Historial),
foreign key(Perro) references Perro(ID_Perro)
);

-- Ejercicio Nº 1 y 2 
insert into Perro values (1, 'Toto', '2019-02-19', 'Macho', 24567845); 
insert into Dueno values (45678976, 'Pedro', 'González', '23345332', 'Córdoba');
insert into Dueno values (3456789, 'Jorge', 'Ramirez', '26145678', 'Lavalle'); 

-- Ejercicio Nº 9 
select * From Dueno;
SET SQL_SAFE_UPDATES = 0;
update Dueno set Direccion = 'Libertad 123' where Direccion = 'Lavalle';
select * From Dueno;


