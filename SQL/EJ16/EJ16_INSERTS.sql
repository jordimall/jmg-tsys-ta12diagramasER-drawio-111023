use EJ16;

/* usuario */

INSERT INTO usuario (nombreUsuario, nombre, password, email, fechaCreacion) VALUES
('usuario1', 'Nombre1', 'password1', 'email1@example.com', '2023-10-20'),
('usuario2', 'Nombre2', 'password2', 'email2@example.com', '2023-10-20'),
('usuario3', 'Nombre3', 'password3', 'email3@example.com', '2023-10-20'),
('usuario4', 'Nombre4', 'password4', 'email4@example.com', '2023-10-20'),
('usuario5', 'Nombre5', 'password5', 'email5@example.com', '2023-10-20'),
('usuario6', 'Nombre6', 'password6', 'email6@example.com', '2023-10-20'),
('usuario7', 'Nombre7', 'password7', 'email7@example.com', '2023-10-20'),
('usuario8', 'Nombre8', 'password8', 'email8@example.com', '2023-10-20'),
('usuario9', 'Nombre9', 'password9', 'email9@example.com', '2023-10-20'),
('usuario10','Nombre10','password10','email10@example.com','2023-10-20');

/* seguir */

INSERT INTO seguir (IDUsuario, IDUsuarioSeguir) VALUES
('usuario1','usuario2'),
('usuario2','usuario3'),
('usuario3','usuario4'),
('usuario4','usuario5'),
('usuario5','usuario6'),
('usuario6','usuario7'),
('usuario7','usuario8'),
('usuario8','usuario9'),
('usuario9','usuario10'),
('usuario10','usuario1');

/* tweet */

INSERT INTO tweet (texto, foto, vecesCompartido, numLike, fechaCreacion, IDUsuario) VALUES
('Texto del tweet 1','foto1.jpg',0,0,'2023-10-20','usuario1'),
('Texto del tweet 2','foto2.jpg',0,0,'2023-10-20','usuario2'),
('Texto del tweet 3','foto3.jpg',0,0,'2023-10-20','usuario3'),
('Texto del tweet 4','foto4.jpg',0,0,'2023-10-20','usuario4'),
('Texto del tweet 5','foto5.jpg',0,0,'2023-10-20','usuario5'),
('Texto del tweet 6','foto6.jpg',0,0,'2023-10-20','usuario6'),
('Texto del tweet 7','foto7.jpg',0,0,'2023-10-20','usuario7'),
('Texto del tweet 8','foto8.jpg',0,0,'2023-10-20','usuario8'),
('Texto del tweet 9','foto9.jpg',0,0,'2023-10-20','usuario9'),
('Texto del tweet 10','foto10.jpg',0,0,'2023-10-20','usuario10');

/* compartir */

INSERT INTO compartir (IDUsuario, IDTweet) VALUES
('usuario1', 1),
('usuario2', 2),
('usuario3', 3),
('usuario4', 4),
('usuario5', 5),
('usuario6', 6),
('usuario7', 7),
('usuario8', 8),
('usuario9', 9),
('usuario10',10);

/* darLike */

INSERT INTO darLike (IDUsuario, IDTweet) VALUES
('usuario1', 2),
('usuario2', 3),
('usuario3', 4),
('usuario4', 5),
('usuario5', 6),
('usuario6', 7),
('usuario7', 8),
('usuario8', 9),
('usuario9',10),
('usuario10',1);

/* comentario */

INSERT INTO comentario (contenido, fechaCreacion, IDUsuario, IDTweet) VALUES
('Comentario del usuario1','2023-10-20','usuario1',2),
('Comentario del usuario2','2023-10-20','usuario2',3),
('Comentario del usuario3','2023-10-20','usuario3',4),
('Comentario del usuario4','2023-10-20','usuario4',5),
('Comentario del usuario5','2023-10-20','usuario5',6),
('Comentario del usuario6','2023-10-20','usuario6',7),
('Comentario del usuario7','2023-10-20','usuario7',8),
('Comentario del usuario8','2023-10-20','usuario8',9),
('Comentario del usuario9','2023-10-20','usuario9',10),
('Comentario del usuario10','2023-10-20','usuario10',1);

/* hashtag */

INSERT INTO hashtag (nombre, IDUsuario) VALUES
('hashtag1', 'usuario1'),
('hashtag2', 'usuario2'),
('hashtag3', 'usuario3'),
('hashtag4', 'usuario4'),
('hashtag5', 'usuario5'),
('hashtag6', 'usuario6'),
('hashtag7', 'usuario7'),
('hashtag8', 'usuario8'),
('hashtag9', 'usuario9'),
('hashtag10','usuario10');

/* asociar */
  
INSERT INTO asociar (IDHasthag, IDTweet) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10,10);

/* select */
SELECT * FROM usuario;
SELECT * FROM tweet WHERE IDUsuario = 'usuario1';
SELECT * FROM hashtag WHERE IDUsuario = 'usuario1';

/* update */
UPDATE usuario SET nombre = 'NuevoNombre' WHERE nombreUsuario = 'usuario1';
UPDATE tweet SET texto = 'Nuevo texto del tweet' WHERE ID = 1;
UPDATE hashtag SET nombre = 'nuevoHashtag' WHERE ID = 1;

/* delete */
DELETE FROM usuario WHERE nombreUsuario = 'usuario1';
DELETE FROM tweet WHERE ID = 1;
DELETE FROM hashtag WHERE ID = 1;