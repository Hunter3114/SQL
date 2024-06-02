create database PROYECTOSINVESTIGACION;
use PROYECTOSINVESTIGACION;

CREATE TABLE Profesores (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellidos VARCHAR(50) NOT NULL,
    Teléfono VARCHAR(15),
    EsDoctor BIT NOT NULL
);

CREATE TABLE ProyectosInvestigacion (
    ID INT PRIMARY KEY,
    CodigoReferencia VARCHAR(20) UNIQUE,
    NombreProyecto VARCHAR(100) NOT NULL,
    PresupuestoTotal DECIMAL(10,2) NOT NULL,
    FechaInicio DATE NOT NULL,
    FechaFinalizacion DATE NOT NULL,
    DescripcionObjetivos TEXT
);

CREATE TABLE ParticipacionProyectos (
    ID_Profesor INT NOT NULL,
    ID_Proyecto INT NOT NULL,
    FechaInicioParticipacion DATE NOT NULL,
    FechaFinParticipacion DATE NOT NULL,
    PRIMARY KEY (ID_Profesor, ID_Proyecto),
    FOREIGN KEY (ID_Profesor) REFERENCES Profesores(ID) ON DELETE CASCADE,
    FOREIGN KEY (ID_Proyecto) REFERENCES ProyectosInvestigacion(ID) ON DELETE CASCADE
);

CREATE TABLE Supervision (
    ID_Profesor_NoDoctor INT,
    ID_Profesor_Supervisor INT,
    FechaInicioSupervision DATE NOT NULL,
    FechaFinSupervision DATE NOT NULL,
    PRIMARY KEY (ID_Profesor_NoDoctor, ID_Profesor_Supervisor),
    FOREIGN KEY (ID_Profesor_NoDoctor) REFERENCES Profesores(ID) ON DELETE SET NULL,
    FOREIGN KEY (ID_Profesor_Supervisor) REFERENCES Profesores(ID) ON DELETE SET NULL
);

INSERT INTO Profesores (ID, Nombre, Apellidos, Teléfono, EsDoctor) VALUES
(1, 'Juan', 'Pérez', '123456789', 1),
(2, 'María', 'Gómez', '987654321', 0),
(3, 'Pedro', 'Martínez', '555111222', 1),
(4, 'Ana', 'López', '666333999', 0),
(5, 'Luis', 'Rodríguez', '444000777', 1);

INSERT INTO ProyectosInvestigacion (ID, CodigoReferencia, NombreProyecto, PresupuestoTotal, FechaInicio, FechaFinalizacion, DescripcionObjetivos) VALUES
(1, 'PROJ001', 'Desarrollo de vacuna contra el COVID-19', 1000000.00, '2024-01-01', '2025-01-01', 'Desarrollar una vacuna efectiva y segura contra el virus COVID-19.'),
(2, 'PROJ002', 'Estudio de impacto ambiental de la deforestación', 500000.00, '2023-06-01', '2024-06-01', 'Evaluar los efectos de la deforestación en el medio ambiente y la biodiversidad.'),
(3, 'PROJ003', 'Investigación en inteligencia artificial', 750000.00, '2023-09-01', '2025-09-01', 'Desarrollar algoritmos avanzados de inteligencia artificial para aplicaciones en diversas áreas.'),
(4, 'PROJ004', 'Estudio sociológico sobre migración', 300000.00, '2024-03-01', '2025-03-01', 'Analizar los patrones y causas de la migración en la sociedad contemporánea.'),
(5, 'PROJ005', 'Investigación en medicina regenerativa', 900000.00, '2023-12-01', '2025-12-01', 'Desarrollar terapias regenerativas para tratar diversas enfermedades.');

INSERT INTO ParticipacionProyectos (ID_Profesor, ID_Proyecto, FechaInicioParticipacion, FechaFinParticipacion) VALUES
(1, 1, '2024-01-01', '2024-12-31'),
(2, 2, '2023-06-01', '2024-06-01'),
(3, 3, '2023-09-01', '2025-09-01'),
(4, 4, '2024-03-01', '2025-03-01'),
(5, 5, '2023-12-01', '2025-12-01');

INSERT INTO Supervision (ID_Profesor_NoDoctor, ID_Profesor_Supervisor, FechaInicioSupervision, FechaFinSupervision) VALUES
(2, 1, '2023-06-01', '2024-06-01'),
(4, 3, '2024-03-01', '2025-03-01'),
(5, 3, '2023-12-01', '2025-12-01'),
(1, 3, '2024-01-01', '2024-12-31'),
(3, 1, '2023-09-01', '2025-09-01');

select * from Profesores;
select * from Supervision;
select * from ParticipacionProyectos;
select * from ProyectosInvestigacion;