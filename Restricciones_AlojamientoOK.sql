CREATE DATABASE AlojamientoOK;
use AlojamientoOK;

CREATE TABLE ALOJAMIENTOS (
    ALO_nombre VARCHAR(25) NOT NULL,
    ALO_direccion VARCHAR(30),
    ALO_telefono VARCHAR(10),
    ALO_contacto CHAR(3),
    ALO_num_hab INTEGER NOT NULL,
    CONSTRAINT pk_ALOJAMIENTOS PRIMARY KEY (ALO_nombre),
    CONSTRAINT uk_ALOJAMIENTOS1 UNIQUE (ALO_contacto),
    CONSTRAINT uk_ALOJAMIENTOS2 UNIQUE (ALO_telefono)
);


create table PERSONAL(
PER_codigo char(3),
PER_nombre varchar(25) not null,
PER_direccion char(25) not null,
PER_NIF char(10) not null,
PER_NombreAloja varchar(25) not null,
constraint pk_PERSONAL primary key (PER_codigo), 
constraint uk_PERSONAL1 unique (PER_NIF), 
constraint fk_PERSONAL_ALOJAMIENTOS FOREIGN key (PER_NombreAloja) references ALOJAMIENTOS (ALO_nombre) on update CASCADE);


create table HABITACIONES(
HAB_alojamiento varchar(25),
HAB_numhabita integer not null,
HAB_tipo char(10) CONSTRAINT HAB_tipo check (HAB_tipo in ('individual', 'doble', 'triple')),  -- REVISAR
HAB_baNo char(2) not null,
HAB_precio integer not null,
constraint pk_HABITACIONES primary key (HAB_alojamiento, HAB_numhabita),
constraint fk_HABITACIONES_ALOJAMIENTOS foreign key (HAB_alojamiento) references ALOJAMIENTOS(ALO_nombre) ON update cascade on delete cascade);



create table ACTIVIDADES(
ACT_codigo char(3),
ACT_nombre varchar(30),
ACT_descripcion char(50) not null,
ACT_nivel integer CHECK (ACT_nivel>= 1 and ACT_nivel<=10), 
constraint pk_ACTIVIDADES primary key (ACT_codigo));

create table REALIZA_ACTIVIDAD(
REA_codigo char(3),
REA_nombreAloja varchar(25),
REA_diaSemana char(9) not null CONSTRAINT REA_diasemana check (REA_diasemana in ('lunes', 'martes', 'miercoles','jueves',
'viernes','sabado','domingo')),
constraint pk_REALIZA_ACTIVIDAD primary key (REA_codigo, REA_nombreAloja,REA_diaSemana),
constraint fk_REALIZA_ACTIVIDAD_ACTIVIDADES foreign key (REA_codigo) references ACTIVIDADES (ACT_codigo) on update cascade,
constraint fk_REALIZA_ACTIVIDAD_ALOJAMIENTOS foreign key (REA_nombreAloja)references ALOJAMIENTOS (ALO_nombre) on update cascade ); 

insert into ALOJAMIENTOS values ('La Esmeralda','Avenida siempre viva 48', '4586970392','010',10);
insert into ALOJAMIENTOS values('Factor X','Carretera el peñon 56','4833197602','011',7),
			 ('Hacienda Monilledo','Autopista a juriquilla 568','6789054321','012',7),
			 ('El potrero','Avenida cuernavaca 345','1775634902','013',5),
			 ('La Escondida','Autopista San Luis km 378','5567894324','014',8),
			('Natural Adventure','Avenida central 98 Toluca','5534278902','015',5),
			('El meson de Luis','Salida Quiroga km 34','1178654329','016',6);

insert into PERSONAL values ('010','Mario Benitez','calle zaragoza 23','bema234567','La Esmeralda');
insert into PERSONAL values ('011','Carola Sanchez','Ejido f307','saca456789','Factor X'),
            ('012','Juan Luis Rodriguez','Progreso nacional 45','roju456789','Hacienda Monilledo'),
	('013','Ana Maria Marin','Rio colorado 21','mana365784','El potrero'),
		('014','Luis Gonzalez','Hidalgo c-56','golu145673','La Escondida'),
			('015','Martha Higo','Allende num 7','hima587356','Natural Adventure'),
		('016','Joaquin Duarte','Hornos insurgentes 34','dujo345679','El meson de Luis');


insert into HABITACIONES values ('La Esmeralda', 10,'doble', 'si',567);
insert into HABITACIONES values('Factor x',3,'individual','si',200),
				('Factor x',4,'doble','si',400),
				('El potrero',3,'individual','si',150),
				('El potrero',2,'triple','si',450),
				('Hacienda Monilledo',7,'doble','si',750),
				('La Escondida',2,'individual','no',100),
				('La Escondida',1,'doble','si',200),
				('La Escondida',3,'triple','si',400),
				('El meson de Luis',2,'individual','no',220),
				('El meson de Luis',4,'triple','si',600),
				('Natural Adventure',2,'individual','si',180),
				('Natural Adventure',3,'triple','si',500);


insert into ACTIVIDADES values ('100','Montañismo','Deporte de bajo riesgo',4);
insert into ACTIVIDADES values ('200','Paracaidismo','Deporte certificado por la empresa Skydive',7),
			('300','Bungee jumping','Salto al vacio por empresa ibo bungee',10),
			('400','Alpinismo','Deporte practicado por empresa iztaccihualt',10),
			('500','Rafting','Deporte para practicar en grupo de personas',9),
			('600','Surf','Deporte en donde se ofrecen clases muestra',8),
			('700','Ciclismo','Actividad para disfrutar y relajarse en paseo',2),
			('800','Caminata','Actividad para mejorar la circulación',1);


insert into REALIZA_ACTIVIDAD values ('100','La Esmeralda','martes');
insert into REALIZA_ACTIVIDAD values ('100','Factor X','jueves'),
			('100','Natural Adventure','sabado'),
			('200', 'El potrero','domingo'),
			('200','La Escondida','sabado'),
			('300','Natural Adventure','sabado'),
			('400','El meson de Luis','lunes'),
			('400','La Esmeralda','jueves'),
			('500','Hacienda Monilledo','viernes'),
			('600','Hacienda Monilledo','sabado'),
			('700','Factor X','domingo'),
			('700','El potrero','viernes'),
			('800','La Escondida','viernes'),
			('800','La Esmeralda','viernes'),
			('800','Factor X','sabado'),
			('800','Natural Adventure','sabado');

select * from ALOJAMIENTOS;
select * from PERSONAL;
select * from HABITACIONES;
select * from ACTIVIDADES;
select * from REALIZA_ACTIVIDAD;

--Revisar la actualización
update ALOJAMIENTOS set ALO_nombre = 'Factor Y' where ALO_nombre = 'Factor X';
--Revisar las restricciones
insert ACTIVIDADES values ('901','Yoga','Deporte de impacto moderado',15);-- No corresponde a los datos solicitados
--Revisar la acualización del código de una actividad
update ACTIVIDADES set ACT_codigo = '080' where Act_codigo = '800';

--Practica 03.
--1.- Identifica a los empleados que trabajan en Natural Adventure.
SELECT per_nombre FROM PERSONAL WHERE PER_NombreAloja = 'Natural Adventure';
-- 2.- Muestre la(s) actividad(es) que se realiza los viernes
SELECT * FROM ACTIVIDADES WHERE ACT_codigo IN (SELECT REA_codigo FROM REALIZA_ACTIVIDAD WHERE REA_diaSemana = 'viernes');
-- 3.- Determine el costo promedio de las habitaciones individuales de todos los alojamientos.
SELECT AVG(HAB_precio) AS Costo_Promedio_Individual FROM HABITACIONES WHERE HAB_tipo = 'individual';
-- 4.- Identifique las actividades deportivas que tengan un riesgo mayor a 4, imprima el nombre.
select * from ACTIVIDADES WHERE act_nivel > '4';
-- 5.- Identifique qué día(s) de la semana NO se realiza ninguna actividad deportiva en ningún alojamiento.***--Revisar
SELECT DISTINCT diaSemana FROM (
    SELECT 'lunes' AS diaSemana UNION
    SELECT 'martes' UNION
    SELECT 'miércoles' UNION
    SELECT 'jueves' UNION
    SELECT 'viernes' UNION
    SELECT 'sabado' UNION
    SELECT 'domingo') AS dias WHERE diaSemana NOT IN (SELECT DISTINCT REA_diaSemana FROM REALIZA_ACTIVIDAD);
-- 6.- Imprima el NIF y el nombre de la persona de contacto que trabaja en el alojamiento Hacienda Mollinedo.
SELECT per_nif, per_nombre from PERSONAL WHERE per_nombrealoja = 'Hacienda Monilledo';

--Práctica 04.
--1. Creee una vista "Info_Alojamiento" que muestre: el nombre del alojamiento, la dirección
--y la cantidad de habitaciones.
CREATE VIEW Info_Alojamiento AS
SELECT ALO_nombre AS Nombre_Alojamiento, ALO_direccion AS Direccion, ALO_num_hab AS Cantidad_Habitaciones
FROM ALOJAMIENTOS;
select * from Info_Alojamiento;

--2. Cree una vista "Info_HGabitaciones" que muestre la cantidad de habitaciones por tipo
--(individual, doble, triple) que tiene cada alojamiento. Haga uso de alias(as) para mostrar
--información.
CREATE VIEW Info_Habitaciones AS
SELECT HAB_alojamiento AS Alojamiento, 
       SUM(CASE WHEN HAB_tipo = 'individual' THEN 1 ELSE 0 END) AS Individuales,
       SUM(CASE WHEN HAB_tipo = 'doble' THEN 1 ELSE 0 END) AS Dobles,
       SUM(CASE WHEN HAB_tipo = 'triple' THEN 1 ELSE 0 END) AS Triples
FROM HABITACIONES
GROUP BY HAB_alojamiento;
select * from Info_Habitaciones;

--3. Cree un procedimiento almacenado que reciba como parámetro el código del personal
-- y muestre el alojamiento en donde trabaja.
CREATE PROCEDURE Buscar_Alojamiento_Personal
    @p_codigo CHAR(3)
AS
BEGIN
    SELECT PER_NombreAloja AS Alojamiento
    FROM PERSONAL
    WHERE PER_codigo = @p_codigo;
END;
EXEC Buscar_Alojamiento_Personal @p_codigo = '010';

--4. Cree un procedimiento almacenado que reciba como parámetro el día de la semana y muestre las
-- las actividades que se realizan ese día.
CREATE PROCEDURE Actividades_Por_Dia
    @p_dia_semana CHAR(9) -- Cambiar IN a @
AS
BEGIN
    SELECT ACT_nombre AS Nombre_Actividad, REA_nombreAloja AS Alojamiento
    FROM REALIZA_ACTIVIDAD
    JOIN ACTIVIDADES ON REALIZA_ACTIVIDAD.REA_codigo = ACTIVIDADES.ACT_codigo
    WHERE REA_diaSemana = @p_dia_semana;
END;
EXEC Actividades_Por_Dia @p_dia_semana = 'viernes';

--5. Crea un procemiento almacenado que ingrese un registro a la tabla Personal(todos los datos
-- del registro son obtenidos a través parámetros).
CREATE PROCEDURE Insertar_Personal
    @p_codigo CHAR(3),
    @p_nombre VARCHAR(25),
    @p_direccion VARCHAR(25),
    @p_NIF CHAR(10),
    @p_NombreAloja VARCHAR(25)
AS
BEGIN
    INSERT INTO PERSONAL (PER_codigo, PER_nombre, PER_direccion, PER_NIF, PER_NombreAloja)
    VALUES (@p_codigo, @p_nombre, @p_direccion, @p_NIF, @p_NombreAloja);
END;

EXEC Insertar_Personal 
    @p_codigo = '017', 
    @p_nombre = 'Nuevo Empleado', 
    @p_direccion = 'Calle Nueva 123', 
    @p_NIF = 'ABC1234567', 
    @p_NombreAloja = 'La Esmeralda'; -- Asegúrate de ajustar los valores según corresponda

--INVOCACIONES
--1
select * from Info_Alojamiento;
--2
select * from Info_Habitaciones;
--3
EXEC Buscar_Alojamiento_Personal @p_codigo = '010';
--4
EXEC Actividades_Por_Dia @p_dia_semana = 'jueves';
--5
EXEC Insertar_Personal 
    @p_codigo = '017', 
    @p_nombre = 'Nuevo Empleado', 
    @p_direccion = 'Calle Nueva 123', 
    @p_NIF = 'ABC1234567', 
    @p_NombreAloja = 'La Esmeralda';