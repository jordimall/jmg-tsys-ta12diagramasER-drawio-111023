-- drop database EJ3;

CREATE DATABASE IF NOT EXISTS EJ3;

USE EJ3;

CREATE TABLE comunidad_autonoma (
  nombre VARCHAR(120) ,
  superficie INT NOT NULL,
  poblacion INT NOT NULL,
  PRIMARY KEY (nombre)
);

CREATE TABLE provincia (
  codigo_provincial VARCHAR(32) NOT NULL,
  nombre VARCHAR(120) NOT NULL,
  superficie INT NOT NULL,
  poblacion INT NOT NULL,
  comunidad VARCHAR(120) NOT NULL,
  FOREIGN KEY (comunidad) REFERENCES comunidad_autonoma (nombre)  on delete cascade on update cascade,
  PRIMARY KEY (codigo_provincial)
);


CREATE TABLE localidad (
  id_localidad VARCHAR(32),
  nombre VARCHAR(120) NOT NULL,
  poblacion INT NOT NULL,
  provincia VARCHAR(32) NOT NULL,
  FOREIGN KEY (provincia) REFERENCES provincia (codigo_provincial)  on delete cascade on update cascade,
  PRIMARY KEY (id_localidad)
);


CREATE TABLE capital_provincia (
  CA VARCHAR(120),
  PV VARCHAR(32),
  FOREIGN KEY (CA) REFERENCES comunidad_autonoma (nombre) on delete cascade on update cascade,
  FOREIGN KEY (PV) REFERENCES provincia (codigo_provincial)  on delete cascade on update cascade,
  PRIMARY KEY (CA, PV)
);


CREATE TABLE capital_ciudad (
  CC VARCHAR(32) ,
  PV VARCHAR(32) ,
  FOREIGN KEY (CC) REFERENCES localidad (id_localidad)  on delete cascade on update cascade,
  FOREIGN KEY (PV) REFERENCES provincia (codigo_provincial) on delete cascade on update cascade,
  PRIMARY KEY (CC, PV)
);