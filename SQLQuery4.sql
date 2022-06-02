create database dbPrueba
use dbPrueba

create table estado(
id int identity(1,1) primary key,
titulo varchar(100)
)
create table rol(
id int identity(1,1) primary key,
titulo varchar(100)
)
create table usuario(
id int identity(1,1) primary key,
correo varchar(100),
clave varchar(max),
estado int,
rol int,
FOREIGN KEY (rol) REFERENCES rol(id),
FOREIGN KEY (estado) REFERENCES estado(id)
)

create table productoSlide(
id int identity(1,1) primary key,
titulo varchar(100),
descripcion varchar(max),
imagenes varchar(max),
estado int,
FOREIGN KEY (estado) REFERENCES estado(id),
)

create table commentUser(
id int identity(1,1) primary key,
comentario varchar(max),
idUsuario int,
FOREIGN KEY (idUsuario) REFERENCES usuario(id),
)
