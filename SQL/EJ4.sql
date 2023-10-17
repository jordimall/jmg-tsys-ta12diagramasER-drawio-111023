-- DROP DATABASE  EJ4;
CREATE DATABASE IF NOT EXISTS EJ4;

USE EJ4;

CREATE TABLE guerra (
  id_guerra VARCHAR(32) ,
  nombre VARCHAR(120) NOT NULL,
  any_inicio INT NOT NULL,
  any_finalización INT,
  PRIMARY KEY (id_guerra)
);

CREATE TABLE bando (
  id_bando VARCHAR(32),
  ganador VARCHAR(120),
  PRIMARY KEY (id_bando)
);


CREATE TABLE pais (
  nombre VARCHAR(120),
  PRIMARY KEY (nombre)
);


CREATE TABLE independencia (
  id VARCHAR(32),
  any_inicio INT NOT NULL,,
  any_finalizacion INT,
  ref_pais VARCHAR(120) NOT NULL,
  FOREIGN KEY (ref_pais) REFERENCES pais (nombre) on delete cascade on update cascade,
  PRIMARY KEY (id)
);

CREATE TABLE pertenece (
  ref_pais VARCHAR(120),
  ref_id_bando VARCHAR(32),
  abandona DATE,
  se_incorpora DATE NOT NULL,
  FOREIGN KEY (ref_pais) REFERENCES pais (nombre) on delete cascade on update cascade,
  FOREIGN KEY (ref_id_bando) REFERENCES bando (id_bando) on delete cascade on update cascade,
  PRIMARY KEY (ref_pais, ref_id_bando)
);


CREATE TABLE formada (
  ref_guerra VARCHAR(255) NOT NULL,
  ref_id_bando VARCHAR(255) NOT NULL,
  FOREIGN KEY (ref_guerra) REFERENCES guerra (id_guerra) on delete cascade on update cascade,
  FOREIGN KEY (ref_id_bando) REFERENCES bando (id_bando) on delete cascade on update cascade,
  PRIMARY KEY (ref_guerra, ref_id_bando)
);
