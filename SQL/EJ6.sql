CREATE DATABASE IF NOT exists EJ6;

USE EJ6;

CREATE TABLE socio (
  dni VARCHAR(255) PRIMARY KEY,
  codigo_socio VARCHAR(255) NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  nombre VARCHAR(255) NOT NULL,
  apellido VARCHAR(255) NOT NULL,
  telefono INT,
  UNIQUE (nombre, codigo_socio, apellido) # Evitamos la duplicidad en caso de introducir el DNI mal

);


CREATE TABLE autor (
  nombre VARCHAR(255) PRIMARY KEY,
  pais VARCHAR(255)
);


CREATE TABLE deterioro (
  id INT PRIMARY KEY ,
  comentario VARCHAR(255),
  estado INT NOT NULL default 10, # Rango de 1 a 10
  CHECK (estado >= 1 AND estado <= 10)
);


CREATE TABLE articulo (
  id INT ,
  nombre VARCHAR(255) UNIQUE NOT NULL,
  sipnosis VARCHAR(255),
  anio INT  NOT NULL,
  estado INT NOT NULL,
  creador VARCHAR(255)  NOT NULL,
  FOREIGN KEY (estado) REFERENCES deterioro (id) on delete cascade on update cascade ,  
  FOREIGN KEY (creador) REFERENCES autor (nombre) on delete cascade on update cascade ,  
  PRIMARY KEY (id)

);

CREATE TABLE libro (
  id INT auto_increment,
  num_paginas INT NOT NULL,
  FOREIGN KEY (id) REFERENCES articulo (id) on delete cascade on update cascade ,  
  PRIMARY KEY (id)
);


CREATE TABLE cd (
  id INT auto_increment,
  num_canciones INT NOT NULL,
  FOREIGN KEY (id) REFERENCES articulo (id) on delete cascade on update cascade ,  
  PRIMARY KEY (id)
);

CREATE TABLE pelicula (
  id INT auto_increment,
  duracion INT  NOT NULL,
  FOREIGN KEY (id) REFERENCES articulo (id) on delete cascade on update cascade ,  
  PRIMARY KEY (id)

);


CREATE TABLE prestamo (
  id INT auto_increment PRIMARY KEY,
  fecha_devolucion date,
  fecha_devolucion_real date,
  fecha_prestamo date  NOT NULL,
  prestado VARCHAR(255) NOT NULL,
  id_articulo INT NOT NULL,
  FOREIGN KEY (id_articulo) REFERENCES articulo (id) on delete cascade on update cascade ,
  FOREIGN KEY (prestado) REFERENCES socio (dni) on delete cascade on update cascade ,
  CHECK (fecha_prestamo  <= fecha_devolucion )
);