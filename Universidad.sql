create table Estudiante
(
	estudianteId INT not null primary key auto_increment,
	nombre VARCHAR(50) not null,
	password VARCHAR(50) not null,
	edad VARCHAR(50),
	sexo VARCHAR(1),
	semestre INT,
	facultad VARCHAR(50),
	foto VARCHAR(255)
);
create table Materia
(
	idMateria INT not null primary key auto_increment,
	nombre VARCHAR(50) not null,
	nombreProfesor VARCHAR(50) not null,
	creditos INT not null
);
create table Matricula
(
	idMatricula INT not null primary key auto_increment,
	estudianteMatricula INT,
	materiaMatricula INT
);
