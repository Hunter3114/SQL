create database Academica_1;
use Academica_1;

create table Academia (
    ACA_Id tinyint not null identity(1,1),
    ACA_Nombre varchar(20) primary key
);
drop database Academia_1;
create table UnidadAprendizaje (
    UAP_Id smallint not null primary key identity,
    UAP_Nombre varchar(50),
    UAP_PlanEstudios varchar(20),
    UAP_Creditos smallint,
    UAP_Academia varchar(20),
    constraint fk_Academia_UAP FOREIGN key (UAP_Academia) references Academia (ACA_Nombre)
);

create table Alumno (
    ALU_Boleta int not null primary key,
    ALU_Nombres varchar(30),
    ALU_Apellidos varchar(40),
    ALU_PlanEstudios varchar(20),
    ALU_FechaNacimiento date,
    ALU_AnioIngreso smallint
);

CREATE INDEX ind_Apellidos ON Alumno (ALU_Apellidos);

create table CursarUAP (
    Cur_ALU_Boleta int NOT NULL,
    Cur_UAP_Id smallint NOT NULL,
    Cur_Promedio tinyint CONSTRAINT Cur_Promedio CHECK (Cur_Promedio BETWEEN 0 AND 10),
    CONSTRAINT fk_CursarUAP_UAP FOREIGN KEY (Cur_UAP_Id) REFERENCES UnidadAprendizaje (UAP_Id),
    CONSTRAINT fk_CursarUAP_Alumno FOREIGN KEY (Cur_ALU_Boleta) REFERENCES Alumno (ALU_Boleta)
);

insert into UnidadAprendizaje values('Diseño Digital','Telematica',6,'Informática');
insert into UnidadAprendizaje values('Electronica','Telematica',8,'Electrónica');
insert into UnidadAprendizaje values('Electromagnetismo','Telematica',9,'Física');
insert into UnidadAprendizaje values('Biomecanica', 'Bionica', 6, 'Química');
insert into UnidadAprendizaje values('Bioelectronica', 'Bionica', 6, 'Electrónica');
insert into UnidadAprendizaje values('Normatividad y gestion tecnologica', 'Bionica', 4, 'Administración');
insert into UnidadAprendizaje values ('Termodinámica', 'Mecatrónica', 9, 'Física');
insert into UnidadAprendizaje values ('Probabilidad y estadística para Ingeniería', 'Mecatrónica', 9, 'Matemáticas');
insert into UnidadAprendizaje values ('Programación Avanzada', 'Mecatrónica', 3, 'Informática');
insert into UnidadAprendizaje values('Bioquimica','Bionica',6,'Bionica');
insert into UnidadAprendizaje values('Bioestadistica','Bionica',9,'Ciencias Basicas');
insert into UnidadAprendizaje values('Dispositivos Electronicos','Bionica',6,'Electrónica');--
insert into UnidadAprendizaje values('Biomateriales','Ing. Biónica',7.5,'Bionica');
insert into UnidadAprendizaje values('Teoría del Control','Ing. Biónica',7.5,'Sistemas');
insert into UnidadAprendizaje values('Procesamiento de Imagenes','Ing. Biónica',6,'Bionica');
INSERT INTO UnidadAprendizaje VALUES('Sistemas Neurodifusos','Mecatronica',5,'Informática');
INSERT INTO UnidadAprendizaje VALUES('Liderazgo y Emprendedores','Mecatronica',4,'Humanidades');
INSERT INTO UnidadAprendizaje VALUES('Proyecto Integrador','Mecatronica',4,'Administración');
insert into UnidadAprendizaje values('Seguridad en Redes','Telematica',6,'Telematica');
insert into UnidadAprendizaje values('Metodologia de la Investigacion','Telematica',5,'Humanidades');
insert into UnidadAprendizaje values('Aplicaciones Distribuidas','Telematica',4,'Telematica');
insert into UnidadAprendizaje values('Sistemas celulares','Telematica',7.5,'Sistemas');
insert into UnidadAprendizaje values('Liderazgo y emprendedores','Telematica',4.5,'Humanidades');
insert into UnidadAprendizaje values('Multimedia','Telematica',6,'Informática');
insert into UnidadAprendizaje values('Biognosis','Bionica',7.5,'Bionica');
insert into UnidadAprendizaje values('Fisica moderna y optica','Bionica',7.5,'Ciencias basicas');
insert into UnidadAprendizaje values('Sensores y actuadores','Bionica',6,'Electrónica');
insert into UnidadAprendizaje values('Logica difusa','Telematica',7.5,'Telematica');
insert into UnidadAprendizaje values('Microondas','Telematica',7.5,'Telematica');
insert into UnidadAprendizaje values('Redes neuronales','Telematica',7.5,'Sistemas');
insert into UnidadAprendizaje values( 'Arquitectura de computadoras', 'Telematica', 8, 'Informática');
insert into UnidadAprendizaje values('Maquinas electricas', 'Mecatronica',3, 'Electrónica');
insert into UnidadAprendizaje values('Neumatica e hidraulica', 'Mecatronica',3, 'Mecanica');
insert into UnidadAprendizaje values('Instrumentacion Virtual Aplicada', 'Mecatronica',4, 'Electrónica');
insert into UnidadAprendizaje values('Control Neurodifuso','Ing. Biónica',6.0,'Bionica');
insert into UnidadAprendizaje values('Procesamiento de Señales Biologicas','Ing. Biónica',6.0,'Bionica');
insert into UnidadAprendizaje values('Bioinstrumentación','Ing. Biónica',7.5,'Bionica');
insert into UnidadAprendizaje values('Automatizacion industrial', 'Mecatronica', 4.5, 'Mecatronica');
insert into UnidadAprendizaje values('Ingenieria ambiental', 'Mecatronica', 4.5, 'Mecatronica');
insert into UnidadAprendizaje values('Metodologia de la investigacion', 'Mecatronica', 6, 'Humanidades');
insert into UnidadAprendizaje values('Calculo Vectorial','Mecatronica', 9,'Ciencias basicas');
insert into UnidadAprendizaje values('Circuitos Eléctricos','Mecatronica', 4.5,'Electrónica');
insert into UnidadAprendizaje values('Procesos de manufactura','Mecatronica', 6,'Mecanica');
insert into UnidadAprendizaje values('Métodos Numéricos','Telematica',7.5,'Ciencias Basicas');
insert into UnidadAprendizaje values('Variable Compleja','Telematica',6.0,'Ciencias Basicas');
insert into UnidadAprendizaje values('Estructura de Datos','Telematica',6.0,'Informática');
insert into UnidadAprendizaje values('Teoria Electromagnetica','Mecatronica', 9,'Ciencias Basicas'); --
insert into UnidadAprendizaje values('Circuitos logicos','Mecatronica', 6,'Electrónica');
insert into UnidadAprendizaje values('Ética para el Ejercicio Profesional','Mecatronica', 4.5,'Humanidades');
insert into UnidadAprendizaje values('Electricidad y Magnetismo','Mecatronica', 9,'Ciencias basicas');
insert into UnidadAprendizaje values('Circuitos Eléctricos Avanzados','Mecatronica', 7.5,'Electrónica');
insert into UnidadAprendizaje values('Fundamentos de Electronica','Mecatronica', 6,'Mecanica');
insert into UnidadAprendizaje values('Alejandro Lineal','Telematica', 10,'Matemáticas');
insert into UnidadAprendizaje values('Calculo Dif. e Integral','Telematica', 10,'Matemáticas');
insert into UnidadAprendizaje values('Analisis y Diseño de Sistemas','Telematica', 9,'Informática');
insert into UnidadAprendizaje values('Seguridad en redes','Telematica', 6,'Telematica');
insert into UnidadAprendizaje values('Protocoles de Internet','Telematica', 7.5,'Telematica');
insert into UnidadAprendizaje values('Electromagnetismo','Telematica', 9,'Ciencias Basicas');
insert into UnidadAprendizaje values('Desarrollo Sustentable','Telematica', 4.5,'Administración');
insert into UnidadAprendizaje values('SociedadCienciaTecnologia','Telematica', 4.5,'Humanidades');
insert into UnidadAprendizaje values('MetodosNumericos','Telematica', 7.5,'Ciencias Basicas');
insert into UnidadAprendizaje values ('Trabajo Terminal I', 'Telematica', 7.5, 'Telematica');
insert into UnidadAprendizaje values ('Criptografia','Telematica', 7.5, 'Telematica');
insert into UnidadAprendizaje values ( 'Television Digital', 'Telematica', 7.5, 'Telematica');
insert into UnidadAprendizaje values('Sistemas biomecanicos','Bionica',6,'Bionica');
insert into UnidadAprendizaje values('Imagenologia','Bionica',6,'Bionica');
insert into UnidadAprendizaje values('Biosensores y biochips','Bionica',6,'Bionica');
insert into UnidadAprendizaje values ('Trabajo Terminal I', 'Mecatronica', 7.5, 'Mecatronica');
insert into UnidadAprendizaje values('Trabajo Terminal II','Mecatronica',7.5,'Mecatronica')
insert into UnidadAprendizaje values('Servicio Social','Mecatronica',0.0,'Mecatronica')
insert into UnidadAprendizaje values ('Biologia Celular', 'Bionica',7.5,'Bionica');
insert into UnidadAprendizaje values ('Quimica Organica', 'Bionica',7.5,'Bionica');
insert into UnidadAprendizaje values ('Metrologia', 'Bionica', 6.0,'Bionica');
insert into UnidadAprendizaje values('Herramientas Computacionales', 'Bionica', 6, 'Mecanica');
insert into UnidadAprendizaje values('Calculo Vectorial', 'Bionica', 9, 'Ciencias Basicas');
insert into UnidadAprendizaje values('Anatomia', 'Bionica', 7.5, 'Bionica');
insert into UnidadAprendizaje values ( 'Teoría Electromagnetica','Bionica',9,'Ciencias Basicas');
insert into UnidadAprendizaje values ('Fisicoquimica', 'Bionica', 6, 'Química');
insert into UnidadAprendizaje values ('Fisilogia', 'Bionica', 4.5, 'Bionica');
insert into UnidadAprendizaje values('Protocolos de internet','Telematica', 8,'Sistemas');
insert into UnidadAprendizaje values('Dispositivos Programables','Telematica', 8,'Informática');
insert into UnidadAprendizaje values('Lineas de Transmision y Antenas','Telematica', 8,'Electrónica');
insert into UnidadAprendizaje values('Ecuaciones Diferenciales', 'Telematica', 9, 'Matemáticas');
insert into UnidadAprendizaje values('Programacion', 'Telematica', 6, 'Informática');
insert into UnidadAprendizaje values('Fundamentos de Fisica', 'Telematica', 4.5, 'Física');
insert into UnidadAprendizaje values('Algebra lineal y números complejos','Mecatronica',9,'Matemáticas');
insert into UnidadAprendizaje values('Analisis y diseño de programas','Mecatronica',3,'Informática');
insert into UnidadAprendizaje values('Calculo diferencial e integral','Mecatronica',9,'Matemáticas');


select ALU_Boleta, ALU_PlanEstudios from Alumno where ALU_PlanEstudios='Bionica';
insert into Alumno values(20200804,'Carlos','Hernandez Flores','Telematica','1998-07-11',2020);
insert into Alumno values(20220810,'Jorge','Aguilera Pavon','Mecatronica','2004-06-05',2022);
insert into Alumno values(20211806,'Ariel','Escoboza Perez','Bionica','2002-02-26',2021);
insert into Alumno values (20236402, 'Edric', 'Marquez Fernandez', 'Mecatronica', '2004-12-01', 2020);
insert into Alumno values (20236498, 'Juan', 'Aguilar Peña', 'Telemática', '2003-04-16', 2023);
insert into Alumno values (20236414, 'Gustavo', 'Hernández Gonzales', 'Bionica', '2002-07-19', 2021);
insert into Alumno values(20226497,'Matias','Guerrero','Bionica','2004-12-15',2022);
insert into Alumno values(20196402,'Sofia','Carrera','Mecatronica','2002-03-20',2019);
insert into Alumno values(20216409,'Arturo','Cruz','Telematica','2003-05-19',2021);
insert into Alumno values (20565485,'Mari','Parra Acosta','Mecatronica','2000-11-11',2000);
insert into Alumno values (23568974,'Francisca', 'Hernandez', 'Mecatronica','2000-10-10',2000);
insert into Alumno values (20125485,'Madelin','Lopez Gonzalez','Mecatronica','2000-09-09',2000);
insert into Alumno values(20236300,' Olivia','Elizalde Bautista', 'Telematica', '2003-05-26', 2022);
insert into Alumno values(20216400,'Samuel','Flores Fuentes', 'Mecatronica', '1999-01-17', 2020);
insert into Alumno values(20226300,'Victoria','Torres Zamora', 'Bionica', '2000-02-12', 2021);
insert into Alumno values(20236409,'Pedro','Perez','Mecatronica','2000-06-18',2019);
insert into Alumno values(20236490,'Tomas','Montes','Telematica','2002-08-15',2020);
insert into Alumno values(20236406,'Tony','Ochoa','Bionoca','2001-12-02',2018);
insert into Alumno values(20236450,'Julio','Cisneros','Telematica','2004-08-27',2022);
insert into Alumno values(20236436,'Cesar','Rios','Telematica','2004-11-19',2022);
insert into Alumno values(20228475,'Luis','Hernandez','Telematica','2001-03-19',2023);
insert into Alumno values(202237700, 'Cesar Nahomi', 'Lopez Hernandez', 'Mecatronica', '2000-05-25', 2018);
insert into Alumno values(20231100, 'Aranza Johaly', 'Ruiz Lara', 'Bionica', '2002-07-02', 2020);
insert into Alumno values(20235600, 'Luis', 'Maqueda Nava', 'Telematica', '2004-01-20', 2019);
insert into Alumno values(20207089,'Sebastian','Sanchez Mora','Bionica','2000-09-08',2020);
insert into Alumno values(20215502,'Abigail','Vega Anaya','Mecatronica','2001-01-23',2021);
insert into Alumno values(20236014,'Camila','Lopez Martinez','Telematica','2004-08-08',2023);
insert into Alumno values (20206402,'Amaury', 'Salazar Figueroa', 'Energia','2000-02-27',2020);
insert into Alumno values (20180245,'Mariana', 'Castañeda Ortega', 'Mecatronica','2000-09-05',2018);
insert into Alumno values (20210215,'Jennifer', 'Arriaga Vazquez', 'ISISA','2001-06-30',2021);
insert into Alumno values(20206408,'Daniel','Hernandez','Biónica','2002-10-20',2020);
insert into Alumno values(20204528,'Fernando','Rojas','Biónica','2002-08-24',2020);
insert into Alumno values(20208951,'Diego','Huerta','Biónica','2002-11-15',2020);
insert into Alumno values(20226408,'Ulises','','Biónica','2003-08-20',2022);
insert into Alumno values(20224528,'Dariel','Rojas','Biónica','2002-07-16',2022);
insert into Alumno values(20228951,'Luis','Huerta','Biónica','2004-06-18',2022);
insert into Alumno values(20210100,'Hector','Robles Ortiz','Mecatronica', '2001-11-05', 2001);
insert into Alumno values(20220108,'Isis','Cordova Estudillo','Mecatronica', '2002-11-11', 2002);
insert into Alumno values(20230100,'Eduardo','Lopez Lopez','Mecatronica', '2003-08-31', 2003);
insert into Alumno values(20200890,'Alex','Godinez Herrera','Telematica','2000-05-11',2022);
insert into Alumno values(20201890,'Efren','Marquez Avila','Telematica','2002-07-12',2021);
insert into Alumno values(20220891,'Alberto','Jimenez Hernandez','Telematica','2001-05-07',2023); --
insert into Alumno values(20206576,'Julio','Tellez Sanchez','Telematica','2000-10-22',2020);
insert into Alumno values(20218976,'Andres','Hernandez Perez','Mecatronica','2002-04-13',2021);
insert into Alumno values(20192123,'Patricia','Jimenez Ortega','Bionica','2000-02-15',2019);
insert into Alumno values(20226400,'Cesar Arturo','Capiz Caztro','Mecatronica','2002-02-01',2022);
insert into Alumno values(20223500,'Jose Alfredo','Torres Hinojosa','Mecatronica','2000-12-15',2022);
insert into Alumno values(20224500,'Eduardo','Guerrero Palma','Mecatronica','2001-03-01',2022);
insert into Alumno values(20216432, 'Karla', 'Lopez', 'Bionica', '2000-04-23', 2020);
insert into Alumno values(30202918, 'Marco', 'Gonzalez', 'Bionica', '1999-03-03', 2019);
insert into Alumno values(10236400, 'Luis', 'Hernandez', 'Bionica', '2004-01-04', 2022);
insert into Alumno values (20141234,'Gustavo','Hernandez Lopez','Telematica','2000-09-12',2014);
insert into Alumno values (20157845,'Hugo','Hernandez Lopez','Telematica','2000-09-12',2015);
insert into Alumno values (20111656,'Rosa','Hernandez Lopez','Telematica','2000-09-12',2011);
insert into Alumno values(20236430,'Emiliano','Perez Cianca','Telematica','2004-03-21',2023);
insert into Alumno values(20206497,'Diego','Hernandez Vargas','Telematica','2002-07-02',2021);
insert into Alumno values(20226491,'Rafael','Hurtado Jimenez','Telematica','2001-05-11',2023);
insert into Alumno values(20237831, 'Carlos', 'Hernandez Martinez', 'Telematica', '2003-05-15', 2022);
insert into Alumno values(20235021, 'Valentina', 'Ramirez Vargas', 'Bionica', '2002-09-28', 2022);
insert into Alumno values(20231857, 'Fatima', 'Villegas Zarate', 'ISISA', '2003-11-19', 2022);
insert into Alumno values(20236451,'Jaime','Rodriguez Amezcua','Mecatronica','2005-11-25',2023);
insert into Alumno values(20226423,'Karen','Alcala Medina','Bionica','2004-05-03',2022);
insert into Alumno values(20216434,'Mariana','Sanchez Islas','Telematica','2003-11-27',2021);
insert into Alumno values(20196405,'Sandra',' Ramírez Flores', 'Bionica', '2001-05-18',2018);
insert into Alumno values(20236801,'Daniel','Gómez Rodríguez','Telematica','2003-10-31',2022);
insert into Alumno values(20226402,'Patricia',' Sánchez López','Mecatronica','2004-11-23',2022);
INSERT INTO Alumno values(20204803,'Fernando','Cerecedo Hernandez','Bionica','2000-12-15',2019);
INSERT INTO Alumno values(20215405,'Monserat','Mendoza Romero','ISISA','2000-12-15',2021);
INSERT INTO Alumno values(20198909,'Enrique','Figueroa Mata','Mecatronica','2000-12-15',2020);
insert into Alumno values(20230712,'Cristian','Arenas Perez','Telematica','2004-02-27',2023);
insert into Alumno values(20190986,'Fernando','Medina Paredes','Mecatronica','2001-04-27',2019);
insert into Alumno values(20238712,'Adrian','Rodriguez Mancera','Energia','2000-07-07',2023);
insert into Alumno values(20234327,'Chompy','Hernandez Gutierrez','Telematica','2004-01-10',2022);
insert into Alumno values(20218293,'Armando','Esteban Quito','Mecatronica','2002-12-05',2021);
insert into Alumno values(20209412,'Juan','Mecanico','Mecatronica','1993-02-09',2024);
insert into Alumno values(20218707,'Carlos','Campos Sanchez','Mecatronica','2002-04-11',2021);
insert into Alumno values(20218809,'Ximena','Sariñana España','Mecatronica','2002-09-27',2021);
insert into Alumno values(20218301,'Efrain','Filio Perez','Mecatronica','2002-08-20',2021);
insert into Alumno values (20789466,'Kylian','Mbappe Lottin','Telematica','2005-01-12',200);
insert into Alumno values (20224654,'Emilio','Gonzales Morales','Mecatronica','2001-05-16',2010);
insert into Alumno values (20111666,'Mario','Hernandez Lopez','Mecatronica','2000-09-12',2011);


insert into Academia values ('Química');
insert into Academia values ('Física');
insert into Academia values ('Matemáticas');
insert into Academia values ('Ciencias Basicas'),
		('Humanidades'),
		('Administración'),
		('Inglés'),
		('Informática'),
		( 'Señales y sistemas'),
		( 'Electrónica'),
		( 'Mecanica'),
		( 'Mecatronica'),
		( 'Bionica'),
		( 'Telematica');

SELECT UAP_Id FROM UnidadAprendizaje;

INSERT INTO CursarUAP VALUES (20226491, 46, 10),
(20789466, 82, 7),
(20789466, 3, 10),
(20789466, 85, 4),
(20789466, 62, 8),
(20236300, 55, 7),
(20228475, 45, 5),
(20218301, 16, 10),
(20220810, 34, 9),
(20230100, 42, 5),
(20223500, 51, 7),
(20190986, 47, 8),
(20190986, 48, 7),
(20190986, 50, 9),
(20220810, 33, 8),
(20190986, 52, 9),
(20125485, 39, 8),
(20200804, 68, 10),
(20200804, 69, 4),
(20192123, 5, 9),
(20204803, 12, 9),
(20211806, 27, 8),
(20226300, 11, 8),
(20226497, 26, 7),
(20235021, 75, 6),
(20236414, 77, 6),
(20236414, 13, 7),
(20192123, 4, 6),
(20204803, 78, 10),
(20211806, 74, 10),
(20200804, 71, 9),
(20200804, 79, 7);

select * from Academia;
select * FROM CursarUAP;
select * from UnidadAprendizaje;
select * from Alumno;

--Parte 3. Realice las siguientes consultas:

--1. Indique la cantidad de unidades de aprendizaje por academia, de tal forma que obtenga el siguiente resultado:
select distinct UAP_Academia, count(*) AS Cantidad_Unidades from UnidadAprendizaje group by UAP_Academia;

--2. Encuentra la boleta, nombre, apellido del alumno y el promedio del curso de los estudiantes que están inscritos
--en el Plan de Estudios 'Bionica'.
select A.ALU_Boleta, A.ALU_Nombres, A.ALU_Apellidos, CU.Cur_Promedio from Alumno A INNER JOIN CursarUAP CU on A.ALU_Boleta = CU.Cur_ALU_Boleta where A.ALU_PlanEstudios = 'Bionica';

--3. De la tabla CursarUAP encuentre el nombre de las unidades de aprendizaje que pertenecen a la acemia de 'Electrónica'.
select UAP_Nombre from UnidadAprendizaje where UAP_Academia = 'Electrónica';

--4. Identifique la boleta, nombre, apellidodel alumno, promedio del curso y el nombre de la unidad de aprendizaje de los
--estudiantes que tengan por nombre 'Fernando'.
select A.ALU_Boleta, A.ALU_Nombres, A.ALU_Apellidos, CU.Cur_Promedio, UA.UAP_Nombre from Alumno A INNER JOIN CursarUAP CU on A.ALU_Boleta = CU.Cur_ALU_Boleta INNER JOIN UnidadAprendizaje UA on CU.Cur_UAP_Id = UA.UAP_Id where A.ALU_Nombres = 'Fernando';

--5. Obtén el promedio general obtenido en la tabla CursarUAP.
select AVG(Cur_Promedio) as Promedio_General from CursarUAP;

--6. Convierte el atributo ALU_Apellidos de la tabla Alumno en un indice. Revisar instrucciones CREATE INDEX.
create index ind_Apellidos on Alumno (ALU_Apellidos);
--el error se debe a que ya esta presente...