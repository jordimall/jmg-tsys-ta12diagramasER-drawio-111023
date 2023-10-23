insert into equipo (nombre, localidad) values ('AC Milan', 'Nifuboko');
insert into equipo (nombre, localidad) values ('Tottenham Hotspur', 'Resende');
insert into equipo (nombre, localidad) values ('Napoli', 'Chornukhyne');
insert into equipo (nombre, localidad) values ('Manchester City', 'Sheshan');
insert into equipo (nombre, localidad) values ('Paris Saint-Germain', 'Tagbacan Ibaba');
insert into equipo (nombre, localidad) values ('Liverpool', 'Miguel Hidalgo');
insert into equipo (nombre, localidad) values ('Real Madrid', 'Rumenka');
insert into equipo (nombre, localidad) values ('Juventus', 'Puerto Deseado');
insert into equipo (nombre, localidad) values ('Borussia Dortmund', 'Limbalod');
insert into equipo (nombre, localidad) values ('Ajax', 'Yaojiagou');

insert into jugador (ficha, nombre, apellido, equipo) values ('74310685N', 'Agnès', 'Haythorne', 1);
insert into jugador (ficha, nombre, apellido, equipo) values ('45970760G', 'Josée', 'Morrieson', 2);
insert into jugador (ficha, nombre, apellido, equipo) values ('90691247Q', 'Célestine', 'Jakoub', 3);
insert into jugador (ficha, nombre, apellido, equipo) values ('42535001D', 'Josée', 'Glidder', 4);
insert into jugador (ficha, nombre, apellido, equipo) values ('53797567W', 'Inès', 'Probbin', 5);
insert into jugador (ficha, nombre, apellido, equipo) values ('28471868U', 'Dù', 'Haseldine', 6);
insert into jugador (ficha, nombre, apellido, equipo) values ('29378820K', 'Judicaël', 'Dyke', 7);
insert into jugador (ficha, nombre, apellido, equipo) values ('97889407T', 'Annotés', 'Karlowicz', 8);
insert into jugador (ficha, nombre, apellido, equipo) values ('64475710N', 'Garçon', 'Buckthorpe', 9);
insert into jugador (ficha, nombre, apellido, equipo) values ('72288912P', 'Lén', 'Gush', 10);
insert into jugador (ficha, nombre, apellido, equipo) values ('59061547F', 'Méng', 'Giorgielli', 1);
insert into jugador (ficha, nombre, apellido, equipo) values ('04700396W', 'Andréa', 'Leggin', 2);
insert into jugador (ficha, nombre, apellido, equipo) values ('41057827M', 'Cécile', 'Pietraszek', 3);
insert into jugador (ficha, nombre, apellido, equipo) values ('93367247P', 'Méghane', 'Colquit', 4);
insert into jugador (ficha, nombre, apellido, equipo) values ('60542026R', 'Pénélope', 'Maddin', 5);
insert into jugador (ficha, nombre, apellido, equipo) values ('71685577P', 'Gaëlle', 'Dowles', 6);
insert into jugador (ficha, nombre, apellido, equipo) values ('49392983U', 'Adèle', 'Petrolli', 7);
insert into jugador (ficha, nombre, apellido, equipo) values ('87519975L', 'Åke', 'Holsall', 8);
insert into jugador (ficha, nombre, apellido, equipo) values ('70551056Z', 'Vénus', 'Colebourne', 9);
insert into jugador (ficha, nombre, apellido, equipo) values ('93560773U', 'Mahélie', 'Gardner', 10);

insert into partido (estadio, hora, fecha, resultado) values ('Estadio Olímpico', '9:27', '2023-06-08', '7-7');
insert into partido (estadio, hora, fecha, resultado) values ('Estadio Emirates', '21:17', '2023-03-16', '6-0');
insert into partido (estadio, hora, fecha, resultado) values ('Estadio San Siro', '20:02', '2023-03-09', '1-8');
insert into partido (estadio, hora, fecha, resultado) values ('Estadio Stamford Bridge', '11:10', '2023-01-19', '7-3');
insert into partido (estadio, hora, fecha, resultado) values ('Estadio Santiago Bernabéu', '22:06', '2023-10-02', '8-6');
insert into partido (estadio, hora, fecha, resultado) values ('Estadio Signal Iduna Park', '15:12', '2023-10-20', '2-7');
insert into partido (estadio, hora, fecha, resultado) values ('Estadio Anfield', '20:56', '2023-09-15', '1-0');
insert into partido (estadio, hora, fecha, resultado) values ('Estadio Emirates', '19:29', '2023-02-02', '9-6');
insert into partido (estadio, hora, fecha, resultado) values ('Estadio Olímpico', '9:57', '2023-09-16', '1-6');
insert into partido (estadio, hora, fecha, resultado) values ('Estadio Camp Nou', '19:04', '2023-04-23', '0-2');

insert into evento (tipo) values ('saque de esquina');
insert into evento (tipo) values ('tarjeta amarilla');
insert into evento (tipo) values ('saque de banda');
insert into evento (tipo) values ('gol');
insert into evento (tipo) values ('lesión');
insert into evento (tipo) values ('cambio de jugador');
insert into evento (tipo) values ('fuera de juego');
insert into evento (tipo) values ('penalti');
insert into evento (tipo) values ('tarjeta roja');
insert into evento (tipo) values ('falta');

insert into provocar (jugador, evento) values ('90691247Q', 1);
insert into provocar (jugador, evento) values ('42535001D', 2);
insert into provocar (jugador, evento) values ('53797567W', 3);
insert into provocar (jugador, evento) values ('28471868U', 1);
insert into provocar (jugador, evento) values ('29378820K', 4);
insert into provocar (jugador, evento) values ('60542026R', 5);
insert into provocar (jugador, evento) values ('71685577P', 5);
insert into provocar (jugador, evento) values ('49392983U', 9);
insert into provocar (jugador, evento) values ('87519975L', 10);
insert into provocar (jugador, evento) values ('70551056Z', 10);
                                               
insert into ocurrir (evento, partido, minuto) values (1, 1, '00:15:00');
insert into ocurrir (evento, partido, minuto) values (5, 2, '01:08:00');
insert into ocurrir (evento, partido, minuto) values (5, 3, '00:32:00');
insert into ocurrir (evento, partido, minuto) values (4, 4, '00:45:00');
insert into ocurrir (evento, partido, minuto) values (4, 5, '00:30:00');
insert into ocurrir (evento, partido, minuto) values (4, 6,'00:23:00');
insert into ocurrir (evento, partido, minuto) values (2, 7, '01:30:00');
insert into ocurrir (evento, partido, minuto) values (7, 8, '01:10:00');
insert into ocurrir (evento, partido, minuto) values (8, 9, '01:26:00');
insert into ocurrir (evento, partido, minuto) values (6, 10, '00:58:00');

insert into participar (equipo, partido) values (1, 1);
insert into participar (equipo, partido) values (2, 1);
insert into participar (equipo, partido) values (3, 2);
insert into participar (equipo, partido) values (4, 2);
insert into participar (equipo, partido) values (5, 3);
insert into participar (equipo, partido) values (6, 3);
insert into participar (equipo, partido) values (7, 4);
insert into participar (equipo, partido) values (8, 4);
insert into participar (equipo, partido) values (9, 5);
insert into participar (equipo, partido) values (10, 5);
insert into participar (equipo, partido) values (1, 6);
insert into participar (equipo, partido) values (10, 6);
insert into participar (equipo, partido) values (2, 7);
insert into participar (equipo, partido) values (9, 7);
insert into participar (equipo, partido) values (3, 8);
insert into participar (equipo, partido) values (8, 8);
insert into participar (equipo, partido) values (4, 9);
insert into participar (equipo, partido) values (6, 9);
insert into participar (equipo, partido) values (5, 10);
insert into participar (equipo, partido) values (7, 10);

-- muestra todos los eventos que han hecho los jugadores
select * from provocar, jugador, evento where jugador.ficha=provocar.jugador and evento.id_evento = provocar.evento;

-- cambia el apellido del jugador Lén
update jugador set apellido = 'Messi' where nombre = 'Lén';

-- elimina el evento 'falta'
delete from evento where tipo = 'falta';

-- muestra los equipos de Resende
select * from equipo where localidad = 'Resende';

-- cambia la localidad del equipo Napoli
update equipo set localidad= 'Resende' where nombre = 'Napoli';

-- elimina los equipos de Resende
delete from equipo where localidad = 'Resende';