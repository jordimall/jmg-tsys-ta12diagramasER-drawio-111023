-- drop database EJ2;
CREATE DATABASE IF NOT EXISTS EJ2;

USE EJ2;

CREATE TABLE empresa (
  cif VARCHAR(9),
  nombre VARCHAR(120) NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  telefono INT NOT NULL,
  PRIMARY KEY (cif)
);


CREATE TABLE alumno (
  dni VARCHAR(9),
  nombre VARCHAR(120),
  direccion VARCHAR(255),
  edad INT NOT NULL,
  telefono INT NOT NULL,
  trabaja VARCHAR(9),
  FOREIGN KEY (trabaja) REFERENCES empresa (cif),
  PRIMARY KEY (dni)
);


CREATE TABLE profesor (
  din VARCHAR(9),
  nombre VARCHAR(120) NOT NULL,
  apellido VARCHAR(120) NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  telefono INT,
  PRIMARY KEY (din)
);


CREATE TABLE curso (
  codigo_curso VARCHAR(32),
  fecha_inicio date NOT NULL,
  fecha_final date NOT NULL,
  duracion INT NOT NULL,
  programa VARCHAR(120) NOT NULL,
  titulo VARCHAR(120) NOT NULL,
  profesor_curso VARCHAR(9) NOT NULL,
  FOREIGN KEY (profesor_curso) REFERENCES profesor (din) on delete cascade on update cascade,
  PRIMARY KEY (codigo_curso)
);

CREATE TABLE asistir (
  alumno VARCHAR(9),
  curso VARCHAR(32),
  nota DOUBLE DEFAULT 0,
  FOREIGN KEY (alumno) REFERENCES alumno (dni) on delete cascade on update cascade,
  FOREIGN KEY (curso) REFERENCES curso (codigo_curso) on delete cascade on update cascade,
  PRIMARY KEY (alumno, curso)
);
