USE EJ14;

/* Usuario */

INSERT INTO usuario (email, password, tipo) VALUES
('usuario1@example.com', 'clave1', FALSE),
('usuario2@example.com', 'clave2', FALSE),
('usuario3@example.com', 'clave3', FALSE),
('usuario4@example.com', 'clave4', FALSE),
('usuario5@example.com', 'clave5', FALSE),
('admin1@example.com', 'adminclave1', TRUE),
('admin2@example.com', 'adminclave2', TRUE),
('editor1@example.com', 'editorclave1', FALSE),
('editor2@example.com', 'editorclave2', FALSE),
('editor3@example.com', 'editorclave3', FALSE);

/* Bloquear */

INSERT INTO bloquear (EmailUsuario, EmailUsuarioBloqueado) VALUES
  ('usuario1@example.com', 'usuario2@example.com'),
  ('usuario1@example.com', 'usuario3@example.com'),
  ('usuario2@example.com', 'usuario4@example.com'),
  ('usuario3@example.com', 'usuario5@example.com'),
  ('admin1@example.com', 'admin2@example.com'),
  ('admin1@example.com', 'usuario1@example.com'),
  ('admin2@example.com', 'usuario2@example.com'),
  ('editor1@example.com', 'editor2@example.com'),
  ('editor1@example.com', 'editor3@example.com');



/* InfoUsuario */

INSERT INTO infoUsuario (nombre, apellidos, direccion, foto, email) VALUES
('Juan', 'Pérez', '123 Calle Principal', 'foto1.jpg', 'usuario1@example.com'),
('María', 'López', '456 Oak Street', 'foto2.jpg', 'usuario2@example.com'),
('Carlos', 'García', '789 Elm Road', 'foto3.jpg', 'usuario3@example.com'),
('Laura', 'Martínez', '101 Pine Avenue', 'foto4.jpg', 'usuario4@example.com'),
('Pedro', 'Rodríguez', '202 Maple Drive', 'foto5.jpg', 'usuario5@example.com'),
('Ana', 'Fernández', '303 Cedar Lane', 'foto6.jpg', 'admin1@example.com'),
('Miguel', 'Gómez', '404 Birch Court', 'foto7.jpg', 'admin2@example.com'),
('Sofía', 'Torres', '505 Spruce Place', 'foto8.jpg', 'editor1@example.com'),
('David', 'Hernández', '606 Willow Lane', 'foto9.jpg', 'editor2@example.com'),
('Elena', 'Díaz', '707 Redwood Road', 'foto10.jpg', 'editor3@example.com');


/* Numero Telefono */

INSERT INTO numTelefono (telefono, IDUsuario) VALUES
('123456789', 1),
('987654321', 2),
('555555555', 3),
('888888888', 4),
('777777777', 5),
('666666666', 6),
('111111111', 7),
('999999999', 8),
('333333333', 9),
('222222222', 10);

/* Contacto */

INSERT INTO contacto (comentario) VALUES
('Este es un comentario de contacto 1'),
('Este es un comentario de contacto 2'),
('Este es un comentario de contacto 3'),
('Este es un comentario de contacto 4'),
('Este es un comentario de contacto 5'),
('Este es un comentario de contacto 6'),
('Este es un comentario de contacto 7'),
('Este es un comentario de contacto 8'),
('Este es un comentario de contacto 9'),
('Este es un comentario de contacto 10');

/* Agregar */

INSERT INTO agregar (EmailUsuario, IDContacto) VALUES
  ('usuario1@example.com', 1),
  ('usuario1@example.com', 5),
  ('usuario2@example.com', 1),
  ('usuario3@example.com', 2),
  ('admin1@example.com', 2),
  ('admin1@example.com', 4),
  ('admin2@example.com', 4),
  ('editor1@example.com', 1),
  ('editor1@example.com', 5);
  
/* Grupo */

INSERT INTO grupo (nombre, EmailUsuario) VALUES
('Grupo1', 'usuario1@example.com'),
('Grupo2', 'usuario2@example.com'),
('Grupo3', 'usuario3@example.com'),
('Grupo4', 'usuario4@example.com'),
('Grupo5', 'usuario5@example.com'),
('Grupo6', 'admin1@example.com'),
('Grupo7', 'admin2@example.com'),
('Grupo8', 'editor1@example.com'),
('Grupo9', 'editor2@example.com'),
('Grupo10', 'editor3@example.com');

/* Contener */

INSERT INTO contener (IDContacto, IDGrupo) VALUES
(1, 1), 
(1, 2), 
(3, 3), 
(4, 4), 
(4, 5),
(6, 6), 
(7, 7), 
(8, 8), 
(9, 9), 
(10, 10);

/* Comentario */

INSERT INTO comentario (texto, imagen, EmailUsuario) VALUES
('Comentario1', 'imagen1.jpg', 'usuario1@example.com'),
('Comentario2', 'imagen2.jpg', 'usuario2@example.com'),
('Comentario3', 'imagen3.jpg', 'usuario3@example.com'),
('Comentario4', 'imagen4.jpg', 'usuario4@example.com'),
('Comentario5', 'imagen5.jpg', 'usuario5@example.com'),
('Comentario6', 'imagen6.jpg', 'admin1@example.com'),
('Comentario7', 'imagen7.jpg', 'admin2@example.com'),
('Comentario8', 'imagen8.jpg', 'editor1@example.com'),
('Comentario9', 'imagen9.jpg', 'editor2@example.com'),
('Comentario10', 'imagen10.jpg', 'editor3@example.com');

/* Visivilidad */

INSERT INTO tipoVisibilidad (tipo) VALUES
('Global'), 
('Temporal'), 
('Privada'), 
('Grupo'), 
('Contacto'),
('Oculto'), 
('Global'), 
('Global'), 
('Global'), 
('Global');

/* Otorgar */

INSERT INTO otorgar (IDComentario, IDVisibilidad) VALUES
(1, 1),
(2, 2), 
(3, 3), 
(4, 4), 
(5, 5),
(6, 6), 
(7, 7), 
(8, 8), 
(9, 9), 
(10, 10);

/* SELECT */
SELECT * FROM usuario WHERE email = 'usuario1@example.com';
SELECT * FROM bloquear WHERE EmailUsuario = 'usuario1@example.com';
SELECT * FROM infoUsuario WHERE email = 'usuario1@example.com';
SELECT * FROM numTelefono WHERE IDUsuario = 1;
SELECT * FROM contacto WHERE ID = 1;
SELECT * FROM agregar WHERE EmailUsuario = 'usuario1@example.com';
SELECT * FROM grupo WHERE EmailUsuario = 'usuario1@example.com';
SELECT * FROM contener WHERE IDGrupo = 1;
SELECT * FROM comentario WHERE EmailUsuario = 'usuario1@example.com';

/* UPDATE */
UPDATE usuario SET password = 'nuevaclave' WHERE email = 'usuario1@example.com'; 
UPDATE bloquear SET EmailUsuarioBloqueado = 'usuario5@example.com' WHERE EmailUsuario = 'usuario1@example.com' AND EmailUsuarioBloqueado = 'usuario2@example.com';
UPDATE infoUsuario SET direccion = 'Nueva dirección' WHERE email = 'usuario1@example.com';
UPDATE numTelefono SET telefono = '977256545' WHERE IDUsuario = 1;
UPDATE contacto SET comentario = 'Nuevo comentario' WHERE ID = 1;
UPDATE agregar SET IDContacto = 2 WHERE EmailUsuario = 'usuario1@example.com' AND IDContacto = 1;
UPDATE grupo SET nombre = 'NuevoNombre' WHERE EmailUsuario = 'usuario1@example.com' AND nombre = 'Grupo1';
UPDATE contener SET IDGrupo = 10 WHERE IDContacto = 1 AND IDGrupo = 1;
UPDATE comentario SET texto = 'Nuevo comentario', imagen='nuevaimagen.jpg' WHERE EmailUsuario='usuario1@example.com';

/* DELETE */
DELETE FROM usuario WHERE email='usuario1@example.com';
DELETE FROM bloquear WHERE EmailUsuario='usuario1@example.com';
DELETE FROM infoUsuario WHERE email='usuario1@example.com';
DELETE FROM numTelefono WHERE IDUsuario=1;
DELETE FROM contacto WHERE ID=1;
DELETE FROM agregar WHERE EmailUsuario='usuario1@example.com';
DELETE FROM grupo WHERE EmailUsuario='usuario1@example.com';
DELETE FROM contener WHERE IDGrupo=1;
DELETE FROM comentario WHERE EmailUsuario='usuario1@example.com';
