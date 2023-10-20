
INSERT INTO guerra (id_guerra, nombre, any_inicio, any_finalizacion) VALUES
('1', 'Primera Guerra Mundial', 1914, 1918),
('2', 'Segunda Guerra Mundial', 1939, 1945),
('3', 'Guerra Civil Española', 1936, 1939),
('4', 'Guerra de Vietnam', 1955, 1975),
('5', 'Guerra del Golfo', 1990, 1991),
('6', 'Guerra de Corea', 1950, 1953),
('7', 'Guerra de las Malvinas', 1982, 1982),
('8', 'Guerra de la Independencia de Estados Unidos', 1775, 1783),
('9', 'Guerra de la Triple Alianza', 1864, 1870),
('10', 'Guerra de la Independencia de México', 1810, 1821);


INSERT INTO bando (id_bando, ganador) VALUES
('A', 'Aliados'),
('E', 'Eje'),
('R', 'Rebeldes'),
('G', 'Gobierno'),
('N', 'Norte'),
('S', 'Sur'),
('B', 'Británicos'),
('I', 'Independencia'),
('T', 'Triple Alianza'),
('M', 'Mexicanos');


INSERT INTO pais (nombre) VALUES
('Estados Unidos'),
('Alemania'),
('España'),
('Vietnam'),
('Irak'),
('Corea del Norte'),
('Reino Unido'),
('Argentina'),
('Francia'),
('México'),
('Perú'),
('Chile'),
('Venezuela'),
('Ecuador'),
('Bolivia'),
('Texas'),
('California');

INSERT INTO independencia (id, any_inicio, any_finalizacion, ref_pais) VALUES
('IND1', 1775, 1783, 'Estados Unidos'),
('IND2', 1810, 1821, 'México'),
('IND3', 1816, 1818, 'Argentina'),
('IND4', 1820, 1823, 'Perú'),
('IND5', 1821, 1823, 'Chile'),
('IND6', 1811, 1821, 'Venezuela'),
('IND7', 1822, 1824, 'Ecuador'),
('IND8', 1824, 1833, 'Bolivia'),
('IND9', 1836, 1844, 'Texas'),
('IND10', 1836, 1844, 'California');


INSERT INTO pertenece (ref_pais, ref_id_bando, abandona, se_incorpora) VALUES
('Estados Unidos', 'A', NULL, '1945-05-08'),
('Alemania', 'E', NULL, '1945-05-08'),
('España', 'G', '1939-04-01', '1939-04-01'),
('Vietnam', 'N', NULL, '1976-07-02'),
('Irak', 'G', NULL, '1991-02-28'),
('Corea del Norte', 'N', NULL, '1953-07-27'),
('Reino Unido', 'B', NULL, '1982-06-14'),
('Argentina', 'R', NULL, '1982-06-14'),
('Francia', 'A', '1940-06-25', '1944-08-25'),
('México', 'I', NULL, '1821-09-27');


INSERT INTO formada (ref_guerra, ref_id_bando) VALUES
('1', 'A'),
('2', 'A'),
('3', 'R'),
('4', 'N'),
('5', 'G'),
('6', 'N'),
('7', 'R'),
('8', 'A'),
('9', 'T'),
('10', 'M');


UPDATE guerra
SET nombre = 'Guerra de Indochina'
WHERE id_guerra = '4';

UPDATE independencia
SET any_finalizacion = 1845
WHERE id = 'IND9';

DELETE FROM bando
WHERE id_bando = 'M';

DELETE FROM pais
WHERE nombre = 'Ecuador';

SELECT * FROM guerra
WHERE nombre = 'Guerra de Corea';

SELECT * FROM independencia
WHERE ref_pais = 'Argentina';

