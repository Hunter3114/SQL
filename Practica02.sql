create database Practica02;
use Practica02;

create table Empleado(
EMP_ID int not null primary key,
EMP_RFC varchar (30),
EMP_Nombre varchar (30),
EMP_Apellido varchar (40),
EMP_Edad smallint,
EMP_Telefono int,
);


insert into Empleado values(2020090345,'QQCV071018MCCXAY77','Diego','Hernandez',24,55267423);
insert into Empleado values(2018090423,'HSBI160812HCCYBK22','Fernando','Piña',25,55289334);
insert into Empleado values(2019090667,'MQWK150715MBCLGL17','Eddie','Zapata',18,55458714);
insert into Empleado values(2021090378,'QWUN130711HMNRCW58','Antonio','Reyes',26,55368965);
insert into Empleado values(2016090594,'JHVE380619MSLLHC92','Eduardo','Perez',28,55467828);

select * from Empleado;

create table Cursos(
CUR_ID int not null primary key,
CUR_Nombre varchar(30),
CUR_Descripcion varchar(70),
);

drop table Cursos;

insert into Cursos values(134,'Creatividad','Te ofrecemos ayuda para liberar tu creatividad');
insert into Cursos values(367,'Orientación al cliente','Te ayudamos a orientar a tus clienetes');
insert into Cursos values(221,'Toma de decisiones','Te ayudamos a mejorar tu liderazgo');
insert into Cursos values(456,'Solución de problemas','Te ayudamos a ampliar tus horizontes para solucionar problemas');
insert into Cursos values(587,'Competencias conversacionales','Aprende a comunicarte de manera efectiva');

select * from Cursos;

create table Tienda(
TND_ID int not null primary key,
TND_Nombre varchar(20),
TND_Dirección varchar(30),
TND_Telefono int,
);

insert into Tienda values(3456,'Nike','Av. Juan de Dios Batiz',66783456);
insert into Tienda values(3566,'American Eagle','Av. Juan de Dios Batiz',55067734);
insert into Tienda values(3786,'Asus','Av. Juan de Dios Batiz',77213265);
insert into Tienda values(3936,'Samsung','Av. Juan de Dios Batiz',77343265);
insert into Tienda values(3026,'Huawei','Av. Juan de Dios Batiz',88233265);

drop table Tienda;

select * from Empleado;
select * from Cursos;
select * from Tienda;