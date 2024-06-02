create database Academica;
use Academica;

create table Academia
(Acad_Id int not null identity,
Acad_Nombre varchar(20) ,
constraint Pk_Academia primary key (Acad_Id));

create table UnidadAprendizaje(
UAP_Id int not null identity,
UAP_Nombre varchar(50),
UAP_PlanEstudios varchar(20),
UAP_Academia int,
constraint Pk_UnidadAprendizaje primary key (UAP_Id),
constraint FK_UnidadAprendizaje foreign key (UAP_Academia) references Academia (Acad_Id)
);

insert into Academia values ('Quimica');
insert into Academia values ('Ciencias Basicas'),
('Humanidades'),
('Administracion'),
('Inglés'),
('Informatica'),
( 'Señales y sistemas'),
( 'Electronica'),
( 'Mecanica'),
( 'Mecatronica'),
( 'Bionica'),
( 'Telematica');

select * from Academia;
select * from UnidadAprendizaje;

--///////////////

insert into UnidadAprendizaje values('Cálculo Diferencial e Integral','Mecatronica',1);
insert into UnidadAprendizaje values('Álgebra Lineal y Números Complejos','Mecatronica',1);
insert into UnidadAprendizaje values('Mecánica de la Partícula','Mecatronica',1);
insert into UnidadAprendizaje values('Mecánica del Cuerpo Rigido','Mecatronica',1);
insert into UnidadAprendizaje values('Ecuaciones Diferenciales','Mecatronica',1);
insert into UnidadAprendizaje values('Cálculo Vectorial','Mecatronica',1);
insert into UnidadAprendizaje values('Electricidad y Magnetismo','Mecatronica',1);
insert into UnidadAprendizaje values('Termodinámica','Mecatronica',1);
insert into UnidadAprendizaje values('Probabilidad y Estadística para Ingeniería','Mecatronica',1);
insert into UnidadAprendizaje values('Oscilaciones y Óptica','Mecatronica',1);
insert into UnidadAprendizaje values('Teoría Electromagnética','Mecatronica',1);
insert into UnidadAprendizaje values('Administración Organizacional','Mecatronica',4);
insert into UnidadAprendizaje values('Finanzas e Ingeniería Económica','Mecatronica',4);
insert into UnidadAprendizaje values('Proyectos de Inversión','Mecatronica',4);
insert into UnidadAprendizaje values('Desarrollo Empresarial','Mecatronica',4);
insert into UnidadAprendizaje values('Economía y logística','Mecatronica',4);
insert into UnidadAprendizaje values('Mercadotecnia','Mecatronica',4);
insert into UnidadAprendizaje values('Circuitos Eléctricos','Mecatronica',8);
insert into UnidadAprendizaje values('Circuitos Eléctricos Avanzados','Mecatronica',8);
insert into UnidadAprendizaje values('Fundamentos de Electrónica','Mecatronica',8);
insert into UnidadAprendizaje values('Electrónica Analógica','Mecatronica',8);
insert into UnidadAprendizaje values('Simulación Electrónica Diseño Circuitos Impresos','Mecatronica',8);
insert into UnidadAprendizaje values('Microprocesadores Microcontroladores e Interfaz','Mecatronica',8);
insert into UnidadAprendizaje values('Electronica de Potencia','Mecatronica',8);
insert into UnidadAprendizaje values('Circuitos Lógicos','Mecatronica',8);
insert into UnidadAprendizaje values('Sensores y Acondicionadores de Señal','Mecatronica',8);
insert into UnidadAprendizaje values('Dispositivos Lógicos Programables','Mecatronica',8);
insert into UnidadAprendizaje values('Tópicos Avanzados de Electrónica','Mecatronica',8);
insert into UnidadAprendizaje values('Comunicación Oral y Escrita','Mecatronica',3);
insert into UnidadAprendizaje values('Ética para el Ejercicio Profesional','Mecatronica',3);
insert into UnidadAprendizaje values('Liderazgo y Emprendedores','Mecatronica',3);
insert into UnidadAprendizaje values('Metodología de la Investigación','Mecatronica',3);
insert into UnidadAprendizaje values('Herramientas Computacionales','Mecatronica',6);
insert into UnidadAprendizaje values('Introducción a la Programación','Mecatronica',6);
insert into UnidadAprendizaje values('Análisis y Diseño de Programas','Mecatronica',6);
insert into UnidadAprendizaje values('Programación Avanzada','Mecatronica',6);
insert into UnidadAprendizaje values('Sistemas Operativos en Tiempo Real','Mecatronica',6);
insert into UnidadAprendizaje values('Ingles I','Mecatronica',5);
insert into UnidadAprendizaje values('Ingles II','Mecatronica',5);
insert into UnidadAprendizaje values('Ingles III','Mecatronica',5);
insert into UnidadAprendizaje values('Estructura y Propiedades de los Materiales','Mecatronica',9);
insert into UnidadAprendizaje values('Dibujo Asistido por Computadora','Mecatronica',9);
insert into UnidadAprendizaje values('Procesos de Manufactura','Mecatronica',9);
insert into UnidadAprendizaje values('Análisis y Síntesis de Mecanismos','Mecatronica',9);
insert into UnidadAprendizaje values('Mantenimiento y Sistemas de Manufactura','Mecatronica',9);
insert into UnidadAprendizaje values('Resistencia de Materiales','Mecatronica',9);
insert into UnidadAprendizaje values('Mecánica de Fluidos','Mecatronica',9);
insert into UnidadAprendizaje values('Diseño Basico de Elementos de Maquinas','Mecatronica',9);
insert into UnidadAprendizaje values('Diseño Avanzado de Elementos de Maquinas','Mecatronica',9);
insert into UnidadAprendizaje values('Seguridad Industrial','Mecatronica',9);
insert into UnidadAprendizaje values('Sistema de Calidad para la Manufactura','Mecatronica',9);
insert into UnidadAprendizaje values('Uso y mantto herramental procesos manufactura','Mecatronica',9);
insert into UnidadAprendizaje values('Diseño de equipo para manejo de materiales','Mecatronica',9);
insert into UnidadAprendizaje values('Procesos avanzados de manufactura','Mecatronica',9);
insert into UnidadAprendizaje values('Tópicos Avanzados de soldadura','Mecatronica',9);
insert into UnidadAprendizaje values('Introducción a la Mecatrónica','Mecatronica',10);
insert into UnidadAprendizaje values('Maquinas Eléctricas','Mecatronica',10);
insert into UnidadAprendizaje values('Neumática e Hidráulica','Mecatronica',10);
insert into UnidadAprendizaje values('Instrumentación Virtual','Mecatronica',10);
insert into UnidadAprendizaje values('Proyecto Integrador','Mecatronica',10);
insert into UnidadAprendizaje values('Ingeniería Asistida por Computadora','Mecatronica',10);
insert into UnidadAprendizaje values('Control de Maquinas Eléctricas','Mecatronica',10);
insert into UnidadAprendizaje values('Procesador Digital de Señales','Mecatronica',10);
insert into UnidadAprendizaje values('Sistemas de Visión Artificial','Mecatronica',10);
insert into UnidadAprendizaje values('Control de Sistemas Mecatrónicos','Mecatronica',10);
insert into UnidadAprendizaje values('Automatización Industrial','Mecatronica',10);
insert into UnidadAprendizaje values('Trabajo terminal I','Mecatronica',10);
insert into UnidadAprendizaje values('Trabajo terminal II','Mecatronica',10);
insert into UnidadAprendizaje values('Autómatas Industriales','Mecatronica',10);
insert into UnidadAprendizaje values('Automatización de Línea de producción','Mecatronica',10);
insert into UnidadAprendizaje values('Control Distribuido','Mecatronica',10);
insert into UnidadAprendizaje values('Protocolos Avanzados de Comunicaciones','Mecatronica',10);
insert into UnidadAprendizaje values('Tópicos avanzados de Sensores','Mecatronica',10);
insert into UnidadAprendizaje values('Diseño avanzado manufactura asistido computadora','Mecatronica',10);
insert into UnidadAprendizaje values('Graficación en 3D','Mecatronica',10);
insert into UnidadAprendizaje values('Procesos Industriales','Mecatronica',10);
insert into UnidadAprendizaje values('Control Inteligente','Mecatronica',10);
insert into UnidadAprendizaje values('Microcontroladores avanzados','Mecatronica',10);
insert into UnidadAprendizaje values('Protocolos de Comunicación Industrial','Mecatronica',10);
insert into UnidadAprendizaje values('Visión Artificial Aplicada','Mecatronica',10);
insert into UnidadAprendizaje values('Control de sistemas robóticos','Mecatronica',10);
insert into UnidadAprendizaje values('Diseño Ergonómico','Mecatronica',10);
insert into UnidadAprendizaje values('Instrumentación virtual aplicada','Mecatronica',10);
insert into UnidadAprendizaje values('Manufactura integrada por computadora','Mecatronica',10);
insert into UnidadAprendizaje values('Sistemas de Procesamiento Digital de Señales','Mecatronica',10);
insert into UnidadAprendizaje values('Control de Procesos Industriales','Mecatronica',10);
insert into UnidadAprendizaje values('Implementación de Sistemas Digitales','Mecatronica',10);
insert into UnidadAprendizaje values('Integración de un Sistema Robótico','Mecatronica',10);
insert into UnidadAprendizaje values('Proyecto de Sistemas Embebidos','Mecatronica',10);
insert into UnidadAprendizaje values('Sistemas avanzados de manufactura','Mecatronica',10);
insert into UnidadAprendizaje values('Tópicos avanzados de automatización','Mecatronica',10);
insert into UnidadAprendizaje values('Ingeniería Ambiental','Mecatronica',1);
insert into UnidadAprendizaje values('Producción más limpia','Mecatronica',1);
insert into UnidadAprendizaje values('Análisis de Señales y Sistemas','Mecatronica',7);
insert into UnidadAprendizaje values('Modelado y Simulación de Sistemas Mecatrónicos','Mecatronica',7);
insert into UnidadAprendizaje values('Control Clásico','Mecatronica',7);
insert into UnidadAprendizaje values('Sistemas Neurodifusos','Mecatronica',7);

select * from UnidadAprendizaje;
select * from UnidadAprendizaje where UAP_Academia IN (4, 5, 6, 7);
select * from UnidadAprendizaje where (UAP_Nombre LIKE '%I%' AND UAP_Nombre LIKE '%II%' OR UAP_Nombre = 'Ingles I' OR UAP_Nombre = 'Trabajo terminal I') AND UAP_Nombre != 'Ingles III';
update UnidadAprendizaje set UAP_Nombre = 'Sistemas' where[UAP_Nombre]='Análisis de Señales y Sistemas';
select count(*) from UnidadAprendizaje;
alter table UnidadAprendizaje add Creditos smallint;
select distinct UAP_Academia from UnidadAprendizaje;
insert into UnidadAprendizaje values('Optativa V','Mecatronica',13);