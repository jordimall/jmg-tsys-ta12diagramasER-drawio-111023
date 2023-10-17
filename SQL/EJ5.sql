-- drop database EJ5;
CREATE DATABASE IF NOT EXISTS EJ5;

USE EJ5;

CREATE TABLE almacenes (
  numero INT auto_increment,
  descripcion VARCHAR(255) NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  PRIMARY KEY (numero)
);

CREATE TABLE estanteria (
  id INT auto_increment,
  nombre VARCHAR(100) NOT NULL,
  almacen_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (almacen_id) REFERENCES almacenes (numero)
);

CREATE TABLE pieza (
  numero INT auto_increment,
  tipo VARCHAR(10) NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  precio INT NOT NULL,
  estanteria INT,
  foreign key (estanteria) references estanteria (id) on delete cascade on update cascade,
  PRIMARY KEY (numero , tipo)
);

CREATE TABLE compuesta (
  r_num INT NOT NULL,
  r_tipo VARCHAR(10) NOT NULL,
  comp_num INT NOT NULL,
  comp_tipo VARCHAR(10) NOT NULL,
  FOREIGN KEY (comp_num , comp_tipo ) REFERENCES pieza (numero, tipo)  on delete cascade on update cascade,
  FOREIGN KEY (r_num , r_tipo  ) REFERENCES pieza (numero, tipo)  on delete cascade on update cascade,
  PRIMARY KEY (r_num, r_tipo , comp_num , comp_tipo)
);