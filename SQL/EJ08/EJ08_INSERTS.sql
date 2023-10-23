insert into cliente (dni, nombre, apellido, direccion, telefono, num_tarjeta_credito) values ('08616798T', 'Bibbye', 'Gourdon', '85819 Kensington Street', '687591935', '6334188255602366');
insert into cliente (dni, nombre, apellido, direccion, telefono, num_tarjeta_credito) values ('59917889L', 'Leontyne', 'Brobyn', '99653 Warrior Park', '615221916', '4175002742074674');
insert into cliente (dni, nombre, apellido, direccion, telefono, num_tarjeta_credito) values ('45447086L', 'Manya', 'Ranklin', '83 Carpenter Terrace', '605461128', '6398063722242083');
insert into cliente (dni, nombre, apellido, direccion, telefono, num_tarjeta_credito) values ('62396426J', 'Camila', 'Skill', '29 Eagle Crest Drive', '672623777', '3580347447745354');
insert into cliente (dni, nombre, apellido, direccion, telefono, num_tarjeta_credito) values ('31999519E', 'Flin', 'Shilton', '430 Laurel Street', '650031582', '3569370310361963');
insert into cliente (dni, nombre, apellido, direccion, telefono, num_tarjeta_credito) values ('38803918Z', 'Charity', 'Maccrea', '192 Hanover Place', '679321083', '5270401937203489');
insert into cliente (dni, nombre, apellido, direccion, telefono, num_tarjeta_credito) values ('58070294F', 'Adan', 'Ede', '5331 Springs Pass', '615052282', '4441835094774');
insert into cliente (dni, nombre, apellido, direccion, telefono, num_tarjeta_credito) values ('17784611N', 'Emily', 'Dacombe', '738 Miller Parkway', '605695185', '201775746632250');
insert into cliente (dni, nombre, apellido, direccion, telefono, num_tarjeta_credito) values ('91273320O', 'Jakob', 'Fiddiman', '64 Mifflin Park', '688701609', '3529144087004042');
insert into cliente (dni, nombre, apellido, direccion, telefono, num_tarjeta_credito) values ('51344375M', 'Emma', 'Silman', '1009 Mitchell Street', '618163227', '3534805706334563');

insert into tarjeta_embarque (fila_asiento, columna_asiento, piso_asiento, cliente) values (30, 'U', 1, '08616798T');
insert into tarjeta_embarque (fila_asiento, columna_asiento, piso_asiento, cliente) values (6, 'L', 4, '59917889L');
insert into tarjeta_embarque (fila_asiento, columna_asiento, piso_asiento, cliente) values (19, 'Q', 1, '45447086L');
insert into tarjeta_embarque (fila_asiento, columna_asiento, piso_asiento, cliente) values (19, 'Y', 4, '62396426J');
insert into tarjeta_embarque (fila_asiento, columna_asiento, piso_asiento, cliente) values (19, 'O', 1, '31999519E');
insert into tarjeta_embarque (fila_asiento, columna_asiento, piso_asiento, cliente) values (20, 'Z', 1, '38803918Z');
insert into tarjeta_embarque (fila_asiento, columna_asiento, piso_asiento, cliente) values (25, 'O', 4, '58070294F');
insert into tarjeta_embarque (fila_asiento, columna_asiento, piso_asiento, cliente) values (58, 'Z', 2, '17784611N');
insert into tarjeta_embarque (fila_asiento, columna_asiento, piso_asiento, cliente) values (7, 'X', 2, '91273320O');
insert into tarjeta_embarque (fila_asiento, columna_asiento, piso_asiento, cliente) values (46, 'W', 4, '51344375M');

insert into avion (codigo_avion, num_plazas) values ('OESK', 325);
insert into avion (codigo_avion, num_plazas) values ('KAEX', 168);
insert into avion (codigo_avion, num_plazas) values ('KBOS', 470);
insert into avion (codigo_avion, num_plazas) values ('KORS', 402);
insert into avion (codigo_avion, num_plazas) values ('MUNG', 485);
insert into avion (codigo_avion, num_plazas) values ('ZGXN', 458);
insert into avion (codigo_avion, num_plazas) values ('KSAW', 695);
insert into avion (codigo_avion, num_plazas) values ('DFCP', 409);
insert into avion (codigo_avion, num_plazas) values ('SDTO', 126);
insert into avion (codigo_avion, num_plazas) values ('A23', 789);

insert into aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('LFN', 'Triangle North Executive Airport', 'Uva', 'Russia');
insert into aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('OFK', 'Karl Stefan Memorial Airport', 'Mjamaoué', 'Comoros');
insert into aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('MQY', 'Smyrna Airport', 'Fagatogo', 'American Samoa');
insert into aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('DJO', 'Daloa Airport', 'Semang', 'Indonesia');
insert into aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('DOC', 'Dornoch Airfield', 'Tønsberg', 'Norway');
insert into aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('BBR', 'Baillif Airport', 'Kluki', 'Poland');
insert into aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('QUY', 'RAF Wyton', 'Mungwi', 'Zambia');
insert into aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('KUU', 'Kullu Manali Airport', 'Bergen', 'Norway');
insert into aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('EIB', 'Eisenach-Kindel Airport', 'Mae Sai', 'Thailand');
insert into aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('MMH', 'Mammoth Yosemite Airport', 'Wanareja', 'Indonesia');

insert into vuelo (fecha_salida, hora_salida, fecha_llegada, hora_llegada, avion, aeropuerto_salida, aeropuerto_llegada) values ('2022-07-31', '9:57:49', '2022-07-31', '23:03:50', 'A23', 'LFN', 'BBR');
insert into vuelo (fecha_salida, hora_salida, fecha_llegada, hora_llegada, avion, aeropuerto_salida, aeropuerto_llegada) values ('2022-06-29', '1:53:58', '2022-06-29', '21:44:29', 'DFCP','OFK', 'DJO');
insert into vuelo (fecha_salida, hora_salida, fecha_llegada, hora_llegada, avion, aeropuerto_salida, aeropuerto_llegada) values ('2022-07-04', '15:08:00', '2022-07-05', '12:53:29', 'KAEX','MQY', 'DOC');
insert into vuelo (fecha_salida, hora_salida, fecha_llegada, hora_llegada, avion, aeropuerto_salida, aeropuerto_llegada) values ('2021-01-01', '2:19:20', '2021-01-01', '3:23:08', 'KBOS', 'DJO', 'EIB');
insert into vuelo (fecha_salida, hora_salida, fecha_llegada, hora_llegada, avion, aeropuerto_salida, aeropuerto_llegada) values ('2023-06-25', '5:50:41', '2023-06-25', '9:25:28', 'KORS', 'DOC', 'KUU');
insert into vuelo (fecha_salida, hora_salida, fecha_llegada, hora_llegada, avion, aeropuerto_salida, aeropuerto_llegada) values ('2021-04-02', '19:05:39', '2021-04-02', '23:03:50', 'KSAW','BBR', 'LFN');
insert into vuelo (fecha_salida, hora_salida, fecha_llegada, hora_llegada, avion, aeropuerto_salida, aeropuerto_llegada) values ('2021-11-22', '5:58:53', '2021-11-22', '7:40:29', 'MUNG', 'QUY', 'MMH');
insert into vuelo (fecha_salida, hora_salida, fecha_llegada, hora_llegada, avion, aeropuerto_salida, aeropuerto_llegada) values ('2022-07-24', '08:15:00', '2022-07-24', '15:08:00', 'OESK','KUU', 'MQY');
insert into vuelo (fecha_salida, hora_salida, fecha_llegada, hora_llegada, avion, aeropuerto_salida, aeropuerto_llegada) values ('2021-06-22', '22:22:22', '2021-06-22', '23:23:23', 'SDTO','EIB', 'OFK');
insert into vuelo (fecha_salida, hora_salida, fecha_llegada, hora_llegada, avion, aeropuerto_salida, aeropuerto_llegada) values ('2023-07-20', '15:50:41', '2023-07-20', '19:25:28', 'ZGXN', 'MMH', 'QUY');

insert into reserva (cliente, tarjeta_fila, tarjeta_columna, tarjeta_piso, num_reserva, fecha_reserva) values ('08616798T', 30, 'U', 1, 886, '2021-04-16');
insert into reserva (cliente, tarjeta_fila, tarjeta_columna, tarjeta_piso, num_reserva, fecha_reserva) values ('59917889L', 6, 'L', 4, 203, '2022-06-29');
insert into reserva (cliente, tarjeta_fila, tarjeta_columna, tarjeta_piso, num_reserva, fecha_reserva) values ('45447086L', 19, 'Q', 1, 59, '2023-01-15');
insert into reserva (cliente, tarjeta_fila, tarjeta_columna, tarjeta_piso, num_reserva, fecha_reserva) values ('62396426J', 19, 'Y', 4, 627, '2021-01-12');
insert into reserva (cliente, tarjeta_fila, tarjeta_columna, tarjeta_piso, num_reserva, fecha_reserva) values ('31999519E', 19, 'O', 1, 989, '2022-04-29');
insert into reserva (cliente, tarjeta_fila, tarjeta_columna, tarjeta_piso, num_reserva, fecha_reserva) values ('38803918Z', 20, 'Z', 1, 699, '2023-05-17');
insert into reserva (cliente, tarjeta_fila, tarjeta_columna, tarjeta_piso, num_reserva, fecha_reserva) values ('58070294F', 25, 'O', 4, 388, '2023-07-17');
insert into reserva (cliente, tarjeta_fila, tarjeta_columna, tarjeta_piso, num_reserva, fecha_reserva) values ('17784611N', 58, 'Z', 2, 32, '2021-09-30');
insert into reserva (cliente, tarjeta_fila, tarjeta_columna, tarjeta_piso, num_reserva, fecha_reserva) values ('91273320O', 7, 'X', 2, 192, '2020-12-31');
insert into reserva (cliente, tarjeta_fila, tarjeta_columna, tarjeta_piso, num_reserva, fecha_reserva) values ('51344375M', 46, 'W', 4, 60, '2021-03-24');

insert into embarca (tarjeta_fila, tarjeta_columna, tarjeta_piso, vuelo) values (30, 'U', 1, 1);
insert into embarca (tarjeta_fila, tarjeta_columna, tarjeta_piso, vuelo) values (6, 'L', 4, 2);
insert into embarca (tarjeta_fila, tarjeta_columna, tarjeta_piso, vuelo) values (19, 'Q', 1, 3); 
insert into embarca (tarjeta_fila, tarjeta_columna, tarjeta_piso, vuelo) values (19, 'Y', 4, 4);
insert into embarca (tarjeta_fila, tarjeta_columna, tarjeta_piso, vuelo) values (19, 'O', 1, 5);
insert into embarca (tarjeta_fila, tarjeta_columna, tarjeta_piso, vuelo) values (20, 'Z', 1, 6);
insert into embarca (tarjeta_fila, tarjeta_columna, tarjeta_piso, vuelo) values (25, 'O', 4, 7);
insert into embarca (tarjeta_fila, tarjeta_columna, tarjeta_piso, vuelo) values (58, 'Z', 2, 8);
insert into embarca (tarjeta_fila, tarjeta_columna, tarjeta_piso, vuelo) values (7, 'X', 2, 9);
insert into embarca (tarjeta_fila, tarjeta_columna, tarjeta_piso, vuelo) values (46, 'W', 4, 10);


-- muestra los aviones con 450 asientos o mas
select * from avion where num_plazas >= 450;

-- aumenta el numero de plazas del resto de los aviones
update avion set num_plazas = num_plazas+200 where num_plazas < 450;

-- eliminar el avion con menos plazas
delete from avion order by num_plazas limit 1;

-- muestra la tarjeta de embarque del cliente con dni 45447086L
select * from tarjeta_embarque where cliente = '45447086L';

-- cambia el piso asociado a la tarjeta de embarque del cliente con dni 45447086L
update tarjeta_embarque set piso_asiento = 3 where cliente = '45447086L';

-- elimina la tarjeta de embarque del cliente con dni 45447086L
delete from tarjeta_embarque where cliente = '45447086L';
