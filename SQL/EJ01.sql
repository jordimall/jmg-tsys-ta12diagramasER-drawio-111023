-- drop database EJ1;

CREATE DATABASE IF NOT EXISTS EJ1;
USE EJ1;

CREATE TABLE persona (
  dni VARCHAR(9),
  codigo_socio VARCHAR(8) UNIQUE NOT NULL,
  direccion VARCHAR(255)  NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  telefono INT,
  PRIMARY KEY (dni),
  UNIQUE (nombre, codigo_socio, telefono) # Evitamos la duplicidad en caso de introducir el DNI mal
);

CREATE TABLE volumen (
  id VARCHAR(36),
  estado INT NOT NULL default 10, # Rango de 1 a 10
  PRIMARY KEY (id),
  CHECK (estado >= 1 AND estado <= 10)
);

CREATE TABLE libro (
  isbn VARCHAR(100),
  editorial VARCHAR(120) NOT NULL,
  any_escritura INT NOT NULL,
  autor VARCHAR(120) NOT NULL,
  titulo VARCHAR(120) NOT NULL,
  any_edicion INT NOT NULL,
  ref_volumen VARCHAR(36) NOT NULL,
  FOREIGN KEY (ref_volumen) REFERENCES volumen (id)  on delete cascade on update cascade,
  PRIMARY KEY (isbn),
  CHECK (any_escritura >= -2100), 
  CHECK (any_edicion <= 2100),
  CHECK (any_escritura  <= any_edicion ), 
  UNIQUE (editorial, any_escritura, autor , titulo ,any_edicion , ref_volumen ) # Evitamos la duplicidad en caso de introducir el isbn mal
);

CREATE TABLE prestamo (
  id VARCHAR(9),
  fecha_inicio date NOT NULL,
  fecha_final_prestamo date,
  fecha_real_entrega date ,
  ref_persona VARCHAR(9) NOT NULL,
  isbn VARCHAR(100) NOT NULL,
  FOREIGN KEY (ref_persona) REFERENCES persona (dni) on delete cascade on update cascade,
  FOREIGN KEY (isbn) REFERENCES libro (isbn) on delete cascade on update cascade,
  PRIMARY KEY (id),
  CHECK (fecha_final_prestamo >= fecha_inicio )
);
