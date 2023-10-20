drop database EJ2;
CREATE DATABASE IF NOT EXISTS EJ2;

USE EJ2;

CREATE TABLE empresa (
  cif VARCHAR(9),
  nombre VARCHAR(120) NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  telefono BIGINT NOT NULL,
  PRIMARY KEY (cif),
  UNIQUE (nombre, telefono) 
);


CREATE TABLE alumno (
  dni VARCHAR(10) PRIMARY KEY,
  nombre VARCHAR(120),
  direccion VARCHAR(255),
  edad INT NOT NULL,
  telefono BIGINT NOT NULL,
  trabaja VARCHAR(9),
  FOREIGN KEY (trabaja) REFERENCES empresa (cif),
  CHECK (edad >= 14), 
  UNIQUE (nombre, telefono)
);


CREATE TABLE profesor (
  dni VARCHAR(10) PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL,
  apellido VARCHAR(120) NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  telefono BIGINT  NOT NULL,
  UNIQUE (nombre, apellido , telefono)
  );


CREATE TABLE curso (
  codigo_curso VARCHAR(32) PRIMARY KEY, 
  fecha_inicio date NOT NULL, 
  fecha_final date NOT NULL,
  duracion INT NOT NULL,
  programa VARCHAR(120) NOT NULL,
  titulo VARCHAR(120) NOT NULL,
  profesor_curso VARCHAR(10) NOT NULL,
  FOREIGN KEY (profesor_curso) REFERENCES profesor (dni) on delete cascade on update cascade,
  CHECK (fecha_inicio  <= fecha_final )
);

CREATE TABLE asistir (
  alumno VARCHAR(10),
  curso VARCHAR(32),
  nota DOUBLE DEFAULT 0, 
  FOREIGN KEY (alumno) REFERENCES alumno (dni) on delete cascade on update cascade,
  FOREIGN KEY (curso) REFERENCES curso (codigo_curso) on delete cascade on update cascade,
  PRIMARY KEY (alumno, curso)
);