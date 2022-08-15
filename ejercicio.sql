create database pelu_canina;

use pelu_canina;

-- tabla Dueño

create table dueno(
dni int not null unique,
nombre varchar(100) not null,
apellido varchar(100) not null,
telefono bigint (100) not null,
direccion varchar (150) not null,
constraint pk_dni primary key(dni));

-- tabla perro con clave foránea
create table perro(
id_perro int not null unique,
nombre varchar (50) not null,
fecha_nac datetime not null,
sexo varchar (10) not null,
dni_dueno int not null,
constraint pk_idp primary key(id_perro),
foreign key(dni_dueno) references dueno(dni));

-- tabla historial
CREATE TABLE historial (
    id_historial INT NOT NULL UNIQUE,
    fecha DATETIME NOT NULL,
    perro INT NOT NULL,
    descripcion VARCHAR(250) NOT NULL,
    monto FLOAT NOT NULL,
    CONSTRAINT pk_idh PRIMARY KEY (id_historial),
    FOREIGN KEY (perro)
        REFERENCES perro (id_perro)
);

-- punto 2
insert into dueno values(29707430, 'Jorge', 'Carrizo', 5492645201448 , '25 de Mayo 2552');
insert into perro values(6, 'Zuma', '2018-08-20' , 'Hembra' , '28707430');
insert into perro values(5, 'Morena' , '2013-05-10', 'Hembra' , '30805170');
select * from dueno;
select * from perro;
-- punto 3 (Borrar un animal que ya no va a ser atendido.)
insert into historial values (4, '2020-07-10', 5 ,'Control Mensual, vacunas', '1200');
insert into historial values (5, '2018-05-20', 6 , 'vacunas' , '750');
select * from historial;
delete from historial where perro = 5;
select*from historial;


