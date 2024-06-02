create database Practica2;
use Practica2;

create table Empleado(
Emp_ID smallint not null primary key,
Emp_RFC varchar (30),
Emp_Nombre varchar (30),
Emp_Apellido varchar(30),
Emp_Edad smallint,
Emp_Telefono int,
);


--Insertar Datos--
insert into Empleado values(2023158854,'GOSA800211HTCULT70','Mayra','Hernadez',41,7351285984);
insert into Empleado values(2020560956,'ROHU800211HTCULT68','Ulises','Rojas',20,8331608569);
insert into Empleado values(2021450777,'JUQX800211HTCULT67','Luis','Huerta',42,7775601285);
insert into Empleado values(2019565123,'QQCV071018MCCXAY77','Miguel','Castillo',36,7771601324);
insert into Empleado values(2018640823,'HSBI1660812HCCYBK22','Elisa','Tizcareño',26,8231501223);

create table Curso(
Curso_ID int not null primary key,
Curso_Nombre varchar (30),
Curso_Descripcion varchar (100),
);

--Insertar datos
insert into Curso values(156,'Toma de decisiones','Te damos pastillas para tus nervios');
insert into Curso values(201,'Orientación al cliente','Te damos consejor para no matar al cliente');
insert into Curso values(223,'Pensamiento sistémico','Orientación para evaluar situaciones de manera ordenada');
insert into Curso values(152,'Salución de problemas','Apoyo para la resolución de problemas');
insert into Curso values(323,'Creatividad','Te ayudamos para poder liberar tu creatividad en diversos campos laborales');

create table Tienda(
Tienda_ID int not null primary key,
Tienda_Nombre varchar (30),
Tienda_Direccion varchar (100),
Tienda_Telefono int,
);
--Insertar datos
insert into Tienda values(500,'SEEYKOT','Av. Juan de Dios Bátiz',8331501324);
insert into Tienda values(400,'Tu Aliado','Av. Miguel de la More',73512858459);
insert into Tienda values(300,'KÄCHER','Av. Politecnico',7771501325);
insert into Tienda values(200,'Deuchland','Av. Genereal Anaya',7449564858);
insert into Tienda values(100,'England','Plz. Señor del Pueblo',8335601325);

select * from Empleado;
select * from Curso;
select * from Tienda;