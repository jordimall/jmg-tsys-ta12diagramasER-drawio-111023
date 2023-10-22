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

select * from empleado;

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

select * from departamento;

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

select * from contrato;

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
insert into nomina (fecha, salario, contrato) values ('2022-03-01', 2000, 10);

select * from nomina;
