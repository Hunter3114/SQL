create database PrimeraBase2TM1; 
use PrimeraBase2TM1;

create table Unidad_de_Aprendizaje(
UAP_ID smallint not null primary key,
UAP_Nombre varchar(50),
UAP_PlanEstudios varchar(20),
UAP_Creditos smallint,
UAP_Academia varchar(40),
);

select * from Unidad_de_Aprendizaje;

--Insertando Datos
insert into Unidad_de_Aprendizaje values(1,'Base de Datos','Telemática',6,'Informática');

-- Vamos a borrar los registros de la tabla
delete Unidad_de_Aprendizaje;

-- Vamos a hacerle un thanos a labase de datos
drop table Unidad_de_Aprendizaje;

create table Alumno(
ALU_Boleta int not null primary key,
ALU_Nombre varchar(30),
ALU_Apellidos varchar(40),
ALU_PlanEstudios varchar(20),
ALU_FechaNacimiento date,
ALU_AnioIngreso smallint,
);

insert into Alumno values(2023640136,'Andres','Gómez Sánchez','Telemática','2000-09-21',2023);

select * from Alumno;
select * from Unidad_de_Aprendizaje;


delete Alumno;
