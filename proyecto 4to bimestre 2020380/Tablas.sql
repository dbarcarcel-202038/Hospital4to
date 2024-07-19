create database am_proyecto_barcel;
use am_proyecto_barcel;

create table if not exists tbl_mascota(
id_mascota int not null auto_increment,
primary key(id_mascota),
Unique(id_mascota),
nombre varchar(30),
raza varchar(30),
edad varchar(10),
sexo varchar(10)
);

create table if not exists tbl_cita(
id_cita int not null auto_increment,
primary key (id_cita),
Unique(id_cita),
fecha date,
hora varchar (30),
id_mascota int not null,
id_cliente int not null,
costo float,
foreign key(id_mascota) references tbl_mascota(id_mascota),
foreign key(id_cliente) references tbl_cliente(id_cliente)
);


create table if not exists tbl_cliente(
id_cliente int not null auto_increment,
primary key(id_cliente),
Unique(id_cliente),
nombre varchar(40),
apellido varchar(30),
telefono varchar(12),
email varchar(30)
);

create table if not exists tbl_direccion(
id_direccion int not null auto_increment,
primary key(id_direccion),
unique(id_direccion),
direccion varchar(40)
);


create table if not exists tbl_doctor(
id_doctor int not null auto_increment,
primary key(id_doctor),
unique(id_doctor),
nombre varchar (40),
apellido varchar (40),
telefono varchar (40),
especialidad varchar(40),
Colegiado  varchar (20),
estado boolean,
id_direccion int not null,
foreign key(id_direccion) references tbl_direccion(id_direccion)
);


create table if not exists tbl_detalle_cita_doctor(
id_detalle_cita_doctor int not null auto_increment,
primary key(id_detalle_cita_doctor),
unique(id_detalle_cita_doctor),
id_cita int not null,
id_doctor int not null,
servicio varchar(35),
costo float,
foreign key(id_cita) references tbl_cita(id_cita),
foreign key(id_doctor) references tbl_doctor(id_doctor)
);

show tables;