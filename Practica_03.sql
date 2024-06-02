create database Empresa;

use Empresa;

create table Cliente(
Num_Cliente int,
Empresa Varchar(20),
Rep_Clie int,
Lim_credito decimal(10,0),

Constraint Pk_cliente primary key (Num_Cliente),

);

-- insertar un valor

insert into Cliente values (2101,'Jones Mfg', 106, 65000);

-- insertar varios valores

insert into Cliente values (2102,'First Corp',101,65000),

(2103,'Acme Mfg',105,50000),
(2105,'AAA Investments',101,45000);

-- insertar varios valores

insert into Cliente values

(2106,'Fred Lewis Corp',102,65000),
(2108,'Holm Landis',109,55000),
(2109,'Chen Associates',103,25000),
(2111,'JCP Inc',103,50000),
(2112,'Zetacorp',108,50000),
(2113,'Ian Schmidt',104,20000),
(2114,'Orion Corp',102,20000),
(2115,'Smithson Corp',101,20000),
(2117,'J.P. Sinclair',106,35000),
(2118,'Midwest Systems',108,60000),
(2119,'Solomon Inc',109,25000),
(2120,'Rico Enterprises',102,50000),
(2121,'QMA Assoc',103,45000),
(2122,'Three-Way Lines',105,30000),
(2123,'Carter Sons',102,40000),
(2124,'Peter Brothres',107,4000);

create table RepVentas(
Numempl int not null,
Nombre varchar(30) not null,
Edad int,
Oficinarep int not null,
Titulo varchar(10),
Contrato date not null,
Director int not null,
Couta numeric (10,0),
Ventas numeric (10,0) not null,

constraint PK_repventas primary key (Numempl),

);

insert into RepVentas

values (101,'Dan Roberts',45,12,'Rep Ventas','1986-10-20',104,300000,305673);

insert into RepVentas

values(102,'Sue Smith',48,21,'Rep Ventas','1986-12-12',108,350000,474050),
(103,'Paul Cruz',29,12,'Rep Ventas','1987-03-01',104,275000,286775),
(104,'Bob Smith',33,12,'Dir Ventas','1987-05-19',106,200000,142594),
(105,'Bill Adams',37,13,'Rep Ventas','1988-02-12',104,350000,367911),
(107,'Nancy Angelli',49,22,'Rep Ventas','1988-11-14',108,300000,186042),
(108,'Larry Fitch',62,21,'Dir Ventas','1989-10-12',106,350000,361865),
(109,'Mary Jones',31,11,'Rep Ventas','1999-10-12',106,300000,392725);

create table Oficinas(

Oficina int not null,
Ciudad varchar(30) not null,
Region varchar(20) not null,
Numempl int not null,
#Dir int not null,
Objetivo numeric (10,0),
Ventas numeric not null,

constraint PK_oficinas primary key (Oficina),

constraint FK_rep_ventas foreign key (Numempl) references RepVentas (Numempl),

);

insert into Oficinas values

(12,'Chicago','Este',104,800000,735042,51),
(13,'Atlanta','Este',105,350000,367911,12),
(21,'Los Ageles','Oeste',108,725000,835915,35),
(22,'Denver','Oeste',108,300000,186042,45);

create table Productos(

Idfab varchar(3) not null,
Idproducto varchar(8) not null,
Descripcion varchar(20) not null,
Precio numeric (10,0) not null,
Existencia int not null,
constraint PK_productos primary key (Idproducto),

);

insert into Productos

values

('ACI','41001','Articulo Tipo 1',55,277),
('ACI','41002','Articulo Tipo 2',76,167),
('ACI','41003','Articulo Tipo 3',107,207),
('ACI','41004','Articulo Tipo 4',117,139),
('ACI','4100X','Ajustador',25,37),
('ACI','4100Y','Extractor',2750,25),
('ACI','4100Z','Mostrador',2500,28),
('BIC','41008','Manivela',652,3),
('BIC','41089','Rent',255,78),
('BIC','41679','Plate',180,0),
('FEA','112','Cubirta',148,115),
('FEA','114','Banda Motor',243,15),
('IMM','773C','Riostra 1/2 Tm',975,28),
('IMM','775C','Riostra 1-Tm',1425,5),
('IMM','779C','Riostra 2-Tm',1875,9),
('IMM','878H','Soporte Riostra',54,223),
('IMM','887P','Perno Riostra',250,24),
('IMM','887X','Retenedor Riostra',475,32),
('QSA','XK47','Reductor',355,38),
('QSA','XK48','Reductor',134,203),
('QSA','XK48A','Reductor',117,37),
('REI','2A44G','Pasador Bisagra',350,14),
('REI','2A44L','Bisagra Izqda',4500,12),
('REI','2A44R','Bisagra Dcha',4500,12),
('REI','2A45C','V stago Trinquete',79,210);

create table Pedidos (
Numpedido int not null,
Num_Cliente int not null,
Idproducto varchar(8) not null,
Fechapedido date not null,
Cant int not null,
Importante numeric (10,0) not null,
constraint PK_pedido primary key (Numpedido),
constraint FK_Num_Cliente foreign key (Num_Cliente) references Cliente (Num_Cliente),
constraint FK_Idproducto foreign key (Idproducto) references Productos (Idproducto),
);

insert into Pedidos
values
(1,2101,'41001','2024-03-06',10,550),
(2,2102,'41002','2024-03-06',5,380),
(3,2103,'41003','2024-03-06',8,856),
(4,2105,'41004','2024-03-06',3,351),
(5,2106,'4100X','2024-03-06',2,50);

select Nombre, Ventas from RepVentas;
select Empresa from Cliente where Num_Cliente<2120;
select IDfab, Descripcion from Productos where Existencia<=15;
select distinct Director from RepVentas;
select * from Pedidos;