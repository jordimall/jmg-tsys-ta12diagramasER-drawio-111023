-- drop database EJ2;
CREATE DATABASE IF NOT EXISTS EJ2;

USE EJ2;

CREATE TABLE empresa (
  cif VARCHAR(9),
  nombre VARCHAR(120) NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  telefono INT NOT NULL,
  PRIMARY KEY (cif),
  UNIQUE (nombre, telefono) # Evitamos la duplicidad en caso de introducir el CIF MAL
);


CREATE TABLE alumno (
  dni VARCHAR(9) PRIMARY KEY,
  nombre VARCHAR(120),
  direccion VARCHAR(255),
  edad INT NOT NULL, # edad minima 14 años
  telefono INT NOT NULL,
  trabaja VARCHAR(9),
  FOREIGN KEY (trabaja) REFERENCES empresa (cif),
  CHECK (edad >= 14), 
  UNIQUE (nombre, telefono) # Evitamos la duplicidad en caso de introducir el DNI MAL
);


CREATE TABLE profesor (
  din VARCHAR(9) PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL,
  apellido VARCHAR(120) NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  telefono INT  NOT NULL,
  UNIQUE (nombre, apellido , telefono) # Evitamos la duplicidad en caso de introducir el DNI MAL
);


CREATE TABLE curso (
  codigo_curso VARCHAR(32) PRIMARY KEY, 
  fecha_inicio date NOT NULL, 
  fecha_final date NOT NULL,
  duracion INT NOT NULL,
  programa VARCHAR(120) NOT NULL,
  titulo VARCHAR(120) NOT NULL,
  profesor_curso VARCHAR(9) NOT NULL,
  FOREIGN KEY (profesor_curso) REFERENCES profesor (din) on delete cascade on update cascade,
  CHECK (fecha_inicio  <= fecha_final )
);

CREATE TABLE asistir (
  alumno VARCHAR(9),
  curso VARCHAR(32),
  nota DECIMAL(2,2) DEFAULT 0, # rango del 0 al 10 con dos decimal
  FOREIGN KEY (alumno) REFERENCES alumno (dni) on delete cascade on update cascade,
  FOREIGN KEY (curso) REFERENCES curso (codigo_curso) on delete cascade on update cascade,
  PRIMARY KEY (alumno, curso),
  CHECK (nota BETWEEN 0 AND 10)
);