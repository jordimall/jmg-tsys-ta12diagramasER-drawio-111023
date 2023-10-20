INSERT INTO comunidad_autonoma (nombre, superficie, poblacion) VALUES
('Andalucía', 87599, 8414240),
('Cataluña', 32114, 7661357),
('Madrid', 8027, 6685471),
('Valencia', 23255, 5003769),
('Castilla y León', 94222, 2399548),
('Galicia', 29575, 2700330),
('Canarias', 7447, 2130503),
('Aragón', 47720, 1319291),
('Extremadura', 41634, 1065371),
('Navarra', 10391, 649966);

INSERT INTO provincia (nombre, superficie, poblacion, comunidad) VALUES
('Sevilla', 14036, 1942389, 'Andalucía'),
('Barcelona', 7729, 5657438, 'Cataluña'),
('Madrid', 8027, 6685471, 'Madrid'),
('Valencia', 10807, 2565124, 'Valencia'),
('Valladolid', 8133, 523679, 'Castilla y León'),
('A Coruña', 7955, 1122796, 'Galicia'),
('Santa Cruz de Tenerife', 3381, 1003123, 'Canarias'),
('Zaragoza', 9762, 976344, 'Aragón'),
('Badajoz', 21766, 691717, 'Extremadura'),
('Navarra', 10391, 649966, 'Navarra');

INSERT INTO localidad (id_localidad, nombre, poblacion, provincia) VALUES
('41091', 'Sevilla', 689434, 1),
('08019', 'Barcelona', 1620343, 2),
('28079', 'Madrid', 3348536, 3),
('46035', 'Valencia', 790201, 4),
('47186', 'Valladolid', 298412, 5),
('15030', 'A Coruña', 215938, 6),
('38038', 'Santa Cruz de Tenerife', 205552, 7),
('50297', 'Zaragoza', 674997, 8),
('06015', 'Badajoz', 149946, 9),
('31001', 'Pamplona', 196166, 10);


INSERT INTO capital_provincia (CA, PV) VALUES
('Andalucía', 1),
('Cataluña', 2),
('Madrid', 3),
('Valencia', 4),
('Castilla y León', 5),
('Galicia', 6),
('Canarias', 7),
('Aragón', 8),
('Extremadura', 9),
('Navarra', 10);

INSERT INTO capital_ciudad (CC, PV) VALUES
('41091', 1),
('08019', 2),
('28079', 3),
('46035', 4),
('47186', 5),
('15030', 6),
('38038', 7),
('50297', 8),
('06015', 9),
('31001', 10);

UPDATE comunidad_autonoma
SET poblacion = 8500000
WHERE nombre = 'Andalucía';

UPDATE comunidad_autonoma
SET poblacion = 7000000
WHERE nombre = 'Madrid';

DELETE FROM capital_provincia
WHERE CA = 'Cataluña';

DELETE FROM localidad
WHERE id_localidad = '31001';

SELECT * FROM comunidad_autonoma
WHERE nombre = 'Galicia';

SELECT * FROM capital_ciudad
WHERE PV = (SELECT codigo_provincial FROM provincia WHERE nombre = 'Cataluña');



