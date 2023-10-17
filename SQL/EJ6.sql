CREATE DATABASE IF NOT EJ6;

USE EJ6;

CREATE TABLE socio (
  dni VARCHAR(255),
  codigo_socio VARCHAR(255) NOT NULL,
  direccion VARCHAR(255) NOT NULL,,
  nombre VARCHAR(255) NOT NULL,,
  apellido VARCHAR(255) NOT NULL,,
  telefono INT,
  PRIMARY KEY (dni)
);


CREATE TABLE autor (
  nombre VARCHAR(255) NOT NULL,
  pais VARCHAR(255),
  PRIMARY KEY (nombre)
);


CREATE TABLE deterioro (
  id INT,
  comentario VARCHAR(255),
  mal_estado BOOLEAN DEFAULT false,
  PRIMARY KEY (id)
);


CREATE TABLE articulo (
  id INT ,
  nombre VARCHAR(255) NOT NULL,
  sipnosis VARCHAR(255),
  anio INT  NOT NULL,
  estado INT NOT NULL,
  creador VARCHAR(255)  NOT NULL,
  FOREIGN KEY (estado) REFERENCES deterioro (id) on delete cascade on update cascade ,  
  FOREIGN KEY (creador) REFERENCES autor (nombre) on delete cascade on update cascade ,  
  PRIMARY KEY (id)

);

CREATE TABLE libro (
  id INT ,
  num_paginas INT NOT NULL,
  FOREIGN KEY (id) REFERENCES articulo (id) on delete cascade on update cascade ,  
  PRIMARY KEY (id)
);


CREATE TABLE cd (
  id INT,
  num_canciones INT NOT NULL,
  FOREIGN KEY (id) REFERENCES articulo (id) on delete cascade on update cascade ,  
  PRIMARY KEY (id)
);

CREATE TABLE pelicula (
  id INT,
  duracion INT  NOT NULL,
  FOREIGN KEY (id) REFERENCES articulo (id) on delete cascade on update cascade ,  
  PRIMARY KEY (id)

);


CREATE TABLE prestamo (
  id INT,
  fecha_devolucion date,
  fecha_devolucion_real date,
  fecha_prestamo date  NOT NULL,
  prestado VARCHAR(255) NOT NULL,
  id_articulo INT NOT NULL,
  FOREIGN KEY (id_articulo) REFERENCES articulo (id) on delete cascade on update cascade ,
  FOREIGN KEY (prestado) REFERENCES socio (dni) on delete cascade on update cascade ,
  PRIMARY KEY (id)
);
