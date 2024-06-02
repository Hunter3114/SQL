create database EjemploClaseJoin;
use EjemploClaseJoin;

create table Cliente(
Cli_Id int identity,
Cli_Nombre varchar(10) not null,
Cli_Apellidos varchar(20) not null,
Cli_Ciudad varchar(18) not null,
CONSTRAINT pk_Cliente PRIMARY KEY(Cli_Id),
);

create table Venta(
Ven_Id int identity,
Ven_IdCli int,
Ven_IdCarro int,
Ven_Color varchar(15) not null,
CONSTRAINT pk_Venta PRIMARY KEY(Ven_Id),
CONSTRAINT pk_ventaCli FOREIGN KEY(Ven_IdCli) REFERENCES Cliente(Cli_Id),
);

insert into Cliente values ('Ana','Lopez','Zacatecas'),
('Veronica','Martinez','San Luis'),
('Ignacio','Benitez','CDMX'),
('Camilo','Grijalbo','CDMX'),
('Alejandro','Lavalle','Queretaro'),
('Andres','Chavez','Yucatan'),
('Oscar','Huerta','Guerrero'),
('Ofelia','Llanos','Celaya'),
('Victor','Dalmau','Torreon'),
('Roser','Vega','CDMX'),
('Daniel','Gomez','Queretaro'),
('Camila','Cabello','Colima');

insert into Venta values (1,1,'Gris');
insert into Venta values(2,5,'Rojo'),
(3,8,'Blanco'),
(1,6,'Rojo'),
(4,11,'Rojo'),
(5,14,'Verde'),
(7,6,'Gris'),
(10,3,'Aqua'),
(12,2,'Negro');

create table Pedido(
Ped_Id int identity,
Ped_IdCli int,
Ped_IdVenta int,
Ped_Fecha date not null,
CONSTRAINT pk_Pedido PRIMARY KEY(Ped_Id),
CONSTRAINT pk_PedidoCli1 FOREIGN KEY(Ped_IdCli) REFERENCES Cliente(Cli_Id),
CONSTRAINT pk_PedidoCli2 FOREIGN KEY(Ped_IdVenta) REFERENCES Venta(Ven_Id),
);

insert into Pedido values (1,1,'2018-11-28'),
(2,2,'2018-04-10'),
(5,6,'2018-10-06'),
(4,5,'2018-08-05'),
(10,3,'2019-05-30'),
(8,7,'2018-12-31');

select * from Pedido;
select * from Venta;
select * from Cliente;
--new comand's

select Cli_nombre, Cli_apellidos, Ped_Fecha from Pedido, Cliente where Ped_IdCli = Cli_id;
select * from Pedido;
select * from Cliente;

--Se declara solamente la condicion
select Cli_nombre as NombreCliente, Cli_apellidos as ApellidoCliente, Ven_Color as ColorProducto from Venta, Cliente where Cli_id = Ven_IdCli;
select * from Venta;
select * from Cliente;

--
select Cli_nombre as NombreCliente, Cli_apellidos as ApellidoCliente, Ven_Color as ColorProducto from Venta inner join Cliente on Cli_id = Ven_IdCli;

--
select Cli_nombre as NombreCliente, Cli_apellidos as ApellidoCliente, Ven_Color as ColorProducto from Venta inner join Cliente on Cli_id = Ven_IdCli where Cli_nombre = 'Ana';

--Producto Cartesiano
select Cli_nombre, Cli_apellidos, Ped_fecha from Pedido, Cliente;

--Cross join
select Cli_nombre, Cli_apellidos, Ped_fecha from Pedido cross join Cliente;

--
