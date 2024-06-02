create database GESTION_ALMACEN;
use GESTION_ALMACEN;

create table USUARIO(
    ID_USUARIO smallint primary key not null,
    Nombre_USUARIO varchar(255) not null unique,
    Apellidos_USUARIO varchar(255) not null unique,
    CURP_USUARIO varchar(255) not null unique,
    Nvl_Academico varchar(255) constraint Nvl_Academico check (Nvl_Academico in ('Licenciatura','Maestría','Doctorado')) not null,
    Area_USUARIO varchar(255) constraint Area_USUARIO check (Area_USUARIO in ('Administrativo','Academia')) not null,
    Contacto_USUARIO varchar(15) not null unique,
    Edad_USUARIO smallint not null,
    Tipo_USUARIO varchar(255) constraint Tipo_USUARIO check (Tipo_USUARIO in ('Docente','Estudiante')) not null unique,
    Tutor_USUARIO varchar(255)
);

--Prueba
insert into USUARIO values(1, 'Luis Angel', 'Rojas Hernández', 'LUAN040612HMSTL8', 'Licenciatura', 'Administrativo', '7351288359', 30, 'Docente', NULL);
insert into USUARIO values(2, 'Elisa', 'Morales Tizcareño', 'ELMT16012024', 'Licenciatura', 'Academia', '8331601324', 25, 'Estudiante', 'Miguel Angel');
select * from USUARIO;

create table MATERIAL(
    ID_MATERIAL smallint primary key not null,
    Nombre_MATERIAL varchar(255) not null unique,
    Descripcion_MATERIAL varchar(255) not null,
    Estado_MATERIAL varchar(255) constraint Estado_MATERIAL check (Estado_MATERIAL in ('INHABILITADO','MANTENIMIENTO','OPTIMO')) not null unique
);

--Prueba
insert into MATERIAL values(100,'Laptop DELL RTX','Procesador Intel i5','MANTENIMIENTO');
select * from MATERIAL;

create table PRESTAMISTA(
    ID_PRESTAMISTA smallint primary key not null,
    Nombre_PRESTAMISTA varchar(255) unique,
    Contacto_PRESTAMISTA varchar(15),
    foreign key (ID_PRESTAMISTA) references USUARIO(ID_USUARIO),
    foreign key (Nombre_PRESTAMISTA) references USUARIO(Nombre_USUARIO),
    foreign key (Contacto_PRESTAMISTA) references USUARIO(Contacto_USUARIO)
);

--Prueba
insert into PRESTAMISTA values(1,'Luis Angel','7351288359');
select * from PRESTAMISTA;

create table PRESTATARIO(
    ID_PRESTATARIO smallint primary key not null,
    Nombre_PRESTATARIO varchar(255) not null unique,
    Tipo_PRESTATARIO varchar(255) not null,
    foreign key (ID_PRESTATARIO) references USUARIO(ID_USUARIO),
    foreign key (Nombre_PRESTATARIO) references USUARIO(Nombre_USUARIO),
	foreign key (Tipo_PRESTATARIO) references USUARIO(Tipo_USUARIO)
);

--Prueba
insert into PRESTATARIO values(2,'Elisa', 'Estudiante');
select * from PRESTATARIO;

create table UBICACION(
    ID_UBICACION smallint primary key not null,
    Nombre_UBICACION varchar(255) not null unique,
    Descripcion_UBICACION varchar(255) not null
);

--Prueba
insert into UBICACION values(500,'Edificio A','Sala 03');
select * from UBICACION;

create table INVENTARIO(
    ID_INVENTARIO smallint primary key not null,
    Nombre_INVENTARIO varchar(255) not null,
    Resguardante_INVENTARIO varchar(255) not null,
    Ubicacion_INVENTARIO smallint not null,
    Estado_INVENTARIO varchar(255) not null,
    Prest_INVENTARIO varchar(255) not null,
    Periodo date,
    foreign key (ID_INVENTARIO) references MATERIAL(ID_MATERIAL),
    foreign key (Nombre_INVENTARIO) references MATERIAL(Nombre_MATERIAL),
    foreign key (Resguardante_INVENTARIO) references PRESTAMISTA(Nombre_PRESTAMISTA),
    foreign key (Ubicacion_INVENTARIO) references UBICACION(ID_UBICACION),
    foreign key (Estado_INVENTARIO) references MATERIAL(Estado_MATERIAL),
    foreign key (Prest_INVENTARIO) references PRESTATARIO(Nombre_PRESTATARIO)
);

--Prueba
--insert into INVENTARIO values();
select * from INVENTARIO;

--Sección para visualizar tablas.
select * from UBICACION;
select * from USUARIO;
select * from MATERIAL;
select * from INVENTARIO;
select * from PRESTAMISTA;--
select * from PRESTATARIO;--

--Sección por si la cague... Horriblemente...
drop table if exists USUARIO;
drop table if exists INVENTARIO;
drop table if exists MATERIAL;
drop table if exists PRESTAMISTA;
drop table if exists PRESTATARIO;
drop table if exists UBICACION;