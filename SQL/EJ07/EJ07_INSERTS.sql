insert into empleado (dni, nombre, apellidos, direccion, num_SS, codigo_trabajador, telefono) values ('52856433C', 'Dieter', 'Brisley', '7 Mcguire Lane', '150-72-3644', '06-7613967', '688238006');
insert into empleado (dni, nombre, apellidos, direccion, num_SS, codigo_trabajador, telefono, jefe) values ('07349694Y', 'Fawne', 'Corain', '97027 Dayton Park', '408-62-5157', '39-6072657', '646719054', '52856433C');
insert into empleado (dni, nombre, apellidos, direccion, num_SS, codigo_trabajador, telefono, jefe) values ('52042543W', 'Whittaker', 'Bicknell', '1 Elka Point', '442-28-9338', '66-9020540', '604674499', '52856433C');
insert into empleado (dni, nombre, apellidos, direccion, num_SS, codigo_trabajador, telefono) values ('43309039D', 'Reuven', 'Shearman', '3 Spaight Terrace', '361-20-8041', '82-6529231', '673065504');
insert into empleado (dni, nombre, apellidos, direccion, num_SS, codigo_trabajador, telefono, jefe) values ('52511561E', 'Jessamyn', 'Kite', '72373 Schiller Hill', '128-18-2374', '37-5517331', '644312320', '43309039D');
insert into empleado (dni, nombre, apellidos, direccion, num_SS, codigo_trabajador, telefono) values ('95019275C', 'Elsey', 'Christauffour', '79 Lakeland Crossing', '603-94-9924', '03-9246323', '614661073');
insert into empleado (dni, nombre, apellidos, direccion, num_SS, codigo_trabajador, telefono, jefe) values ('69401067O', 'Hayes', 'Arnefield', '559 Scott Drive', '248-49-6978', '72-5015327', '600544243', '43309039D');
insert into empleado (dni, nombre, apellidos, direccion, num_SS, codigo_trabajador, telefono, jefe) values ('80941377V', 'Cherise', 'Pelfer', '45 Heffernan Crossing', '826-56-0159', '19-1332045', '605607562', '52856433C');
insert into empleado (dni, nombre, apellidos, direccion, num_SS, codigo_trabajador, telefono, jefe) values ('92365447Y', 'Jehu', 'Stegers', '137 Hanover Center', '205-66-9555', '84-3374708', '621391468', '95019275C');
insert into empleado (dni, nombre, apellidos, direccion, num_SS, codigo_trabajador, telefono, jefe) values ('14407313W', 'Kenneth', 'Huggan', '4085 Lukken Center', '336-56-5773', '47-5318254', '635044836', '43309039D');
insert into empleado (dni, nombre, apellidos, direccion, num_SS, codigo_trabajador, telefono, jefe) values ('98403531D', 'Vidovik', 'O''dell', '0 Stang Trail', '530-28-0451', '19-6537900', '649305984', '43309039D');
insert into empleado (dni, nombre, apellidos, direccion, num_SS, codigo_trabajador, telefono, jefe) values ('43607872S', 'Em', 'Fache', '644 Ryan Court', '722-51-0204', '17-9622290', '642123784', '43309039D');
insert into empleado (dni, nombre, apellidos, direccion, num_SS, codigo_trabajador, telefono, jefe) values ('69838924M', 'Hube', 'Glen', '2322 Loftsgordon Court', '671-65-2328', '42-5352598', '662463177', '43309039D');
insert into empleado (dni, nombre, apellidos, direccion, num_SS, codigo_trabajador, telefono, jefe) values ('84914538F', 'Nisse', 'Fairpool', '9 Rutledge Terrace', '887-46-8020', '08-6295238', '633350432', '43309039D');
insert into empleado (dni, nombre, apellidos, direccion, num_SS, codigo_trabajador, telefono, jefe) values ('17184708R', 'Salomi', 'Verissimo', '43500 Del Sol Parkway', '570-41-6878', '74-5372189', '639785362', '43309039D');

insert into departamento (nombre, coordinador) values ('Business Development', '52856433C');
insert into departamento (nombre, coordinador) values ('Training', '07349694Y');
insert into departamento (nombre, coordinador) values ('Research and Development', '52042543W');
insert into departamento (nombre, coordinador) values ('Engineering', '43309039D');
insert into departamento (nombre, coordinador) values ('Human Resources', '52511561E');
insert into departamento (nombre, coordinador) values ('Marketing', '95019275C');
insert into departamento (nombre, coordinador) values ('Services', '69401067O');
insert into departamento (nombre, coordinador) values ('Product Management', '80941377V');
insert into departamento (nombre, coordinador) values ('Support', '92365447Y');
insert into departamento (nombre, coordinador) values ('Sales', '14407313W');

insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Biostatistician IV', '2020-01-17', null, '52856433C');
insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Programmer Analyst III', '2023-03-24', null, '43309039D');
insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Sales Representative', '2023-07-27', null, '52511561E');
insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Software Consultant', '2023-01-01', null, '95019275C');
insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Food Chemist', '2020-06-13', null, '69401067O');
insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Computer Systems Analyst II', '2021-04-02', null, '80941377V');
insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Automation Specialist II', '2022-04-09', null, '07349694Y');
insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Cost Accountant', '2022-01-17', '2025-02-05', '52042543W');
insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Executive Secretary', '2021-10-23', null, '92365447Y');
insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Office Assistant III', '2020-08-10', null, '14407313W');
insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Sales Representative', '2025-03-01', null, '52042543W');
insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Programmer', '2021-06-21', null, '98403531D');
insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Programmer', '2022-05-11', null, '43607872S');
insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Programmer', '2023-07-31', null, '69838924M');
insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Programmer', '2024-02-15', null, '84914538F');
insert into contrato (categoria, fecha_inicio, fecha_final, empleado) values ('Programmer', '2025-04-09', null, '17184708R');

insert into nomina (fecha, salario, contrato) values ('2023-07-01', 1000, 1);
insert into nomina (fecha, salario, contrato) values ('2022-08-01', 1500, 2);
insert into nomina (fecha, salario, contrato) values ('2022-10-01', 1500, 3);
insert into nomina (fecha, salario, contrato) values ('2023-02-01', 2000, 4);
insert into nomina (fecha, salario, contrato) values ('2020-11-01', 2000, 5);
insert into nomina (fecha, salario, contrato) values ('2020-01-01', 2000, 6);
insert into nomina (fecha, salario, contrato) values ('2022-06-01', 1000, 7);
insert into nomina (fecha, salario, contrato) values ('2020-04-01', 5000, 8);
insert into nomina (fecha, salario, contrato) values ('2023-06-01', 2500, 9);
insert into nomina (fecha, salario, contrato) values ('2021-12-01', 1500, 10);
insert into nomina (fecha, salario, contrato) values ('2022-01-01', 2000, 10);
insert into nomina (fecha, salario, contrato) values ('2022-03-01', 2000, 11);
insert into nomina (fecha, salario, contrato) values ('2025-09-01', 1800, 12);
insert into nomina (fecha, salario, contrato) values ('2025-09-01', 1800, 13);
insert into nomina (fecha, salario, contrato) values ('2025-09-01', 1800, 14);
insert into nomina (fecha, salario, contrato) values ('2025-09-01', 1800, 15);
insert into nomina (fecha, salario, contrato) values ('2025-09-01', 1800, 16);

insert into trabaja (empleado, departamento) values ('52856433C', '1');
insert into trabaja (empleado, departamento) values ('07349694Y', '2');
insert into trabaja (empleado, departamento) values ('52042543W', '3');
insert into trabaja (empleado, departamento) values ('43309039D', '4');
insert into trabaja (empleado, departamento) values ('52511561E', '5');
insert into trabaja (empleado, departamento) values ('95019275C', '6');
insert into trabaja (empleado, departamento) values ('69401067O', '7');
insert into trabaja (empleado, departamento) values ('80941377V', '8');
insert into trabaja (empleado, departamento) values ('92365447Y', '9');
insert into trabaja (empleado, departamento) values ('14407313W', '10');
insert into trabaja (empleado, departamento) values ('98403531D', '4');
insert into trabaja (empleado, departamento) values ('43607872S', '4');
insert into trabaja (empleado, departamento) values ('69838924M', '4');
insert into trabaja (empleado, departamento) values ('84914538F', '4');
insert into trabaja (empleado, departamento) values ('17184708R', '4');


-- muestra todos los contratos que ha tenido el empleado con dni '52042543W';
select * from contrato where empleado = '52042543W';

-- determina una fecha final para el contrato del empleado con dni '52042543W';
update contrato set fecha_final = '2025-12-31' where empleado = '52042543W';

-- elimina el primer contrato del empleado con dni '52042543W';
delete from contrato where empleado = '52042543W' and categoria = 'Cost Accountant';

-- muestra el departamento de ventas
select * from departamento where nombre = 'Sales';

-- actualiza el coordinador del departamento de ventas 
update departamento set coordinador = '17184708R' where nombre= 'Sales';

-- elimina a un empleado
delete from empleado where dni = '84914538F';