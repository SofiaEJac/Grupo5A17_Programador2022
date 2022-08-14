create database Pelucan;

use Pelucan;

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

-- Consulta número 2

insert into Dueno values (23678656, 'Gustavo', 'Fernandez', '54356786654', 'Azcuenaga 654');

insert into Perro values (1, 'Pupi', '2019-03-20', 'Macho', 23678656);