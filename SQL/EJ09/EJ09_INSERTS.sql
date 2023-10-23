insert into receta (nombre, tipo, dificultad) values ('Flan de caramelo', 'Principal', 'Dificil');
insert into receta (nombre, tipo, dificultad) values ('Arroz con leche', 'Postre', 'Muy facil');
insert into receta (nombre, tipo, dificultad) values ('Pollo al horno', 'Principal', 'Moderada');
insert into receta (nombre, tipo, dificultad) values ('Pasta primavera', 'Principal', 'Chef');
insert into receta (nombre, tipo, dificultad) values ('Pulpo a la gallega', 'Entrante', 'Chef');
insert into receta (nombre, tipo, dificultad) values ('Crema catalana', 'Principal', 'Chef');
insert into receta (nombre, tipo, dificultad) values ('Salmón a la parrilla', 'Postre', 'Muy facil');
insert into receta (nombre, tipo, dificultad) values ('Tacos de pollo', 'Entrante', 'Facil');
insert into receta (nombre, tipo, dificultad) values ('Tarta de limón', 'Postre', 'Dificil');
insert into receta (nombre, tipo, dificultad) values ('Mousse de mango', 'Principal', 'Muy facil');

insert into paso (descripcion) values ('Dejar enfriar antes de desmoldar');
insert into paso (descripcion) values ('Pelar y cortar las papas en rodajas');
insert into paso (descripcion) values ('Refrigerar durante al menos 4 horas');
insert into paso (descripcion) values ('Cocinar la carne en una sartén caliente');
insert into paso (descripcion) values ('Salpimentar las papas al gusto');
insert into paso (descripcion) values ('Engrasar el molde con aceite');
insert into paso (descripcion) values ('Batir la crema hasta obtener picos suaves');
insert into paso (descripcion) values ('Incorporar la crema a la mezcla de frutas');
insert into paso (descripcion) values ('Hornear durante 45 minutos');
insert into paso (descripcion) values ('Dejar reposar la masa durante 30 minutos');
insert into paso (descripcion) values ('Mezclar los ingredientes en un tazón grande');
insert into paso (descripcion) values ('Añadir el caldo y dejar cocinar a fuego lento');
insert into paso (descripcion) values ('Agregar la mantequilla derretida a la mezcla');
insert into paso (descripcion) values ('Decorar con frutas frescas antes de servir');

insert into utensilio (nombre) values ('espátula de silicona');
insert into utensilio (nombre) values ('tabla de cortar');
insert into utensilio (nombre) values ('colador de malla fina');
insert into utensilio (nombre) values ('pelador');
insert into utensilio (nombre) values ('horno');
insert into utensilio (nombre) values ('cortador de pizza');
insert into utensilio (nombre) values ('balanza');
insert into utensilio (nombre) values ('pinzas');
insert into utensilio (nombre) values ('pelador de ajos');
insert into utensilio (nombre) values ('cuenco');

insert into tipo_ingrediente (nombre) values ('especias');
insert into tipo_ingrediente (nombre) values ('pescados');
insert into tipo_ingrediente (nombre) values ('cereales');
insert into tipo_ingrediente (nombre) values ('mariscos');
insert into tipo_ingrediente (nombre) values ('pastas');
insert into tipo_ingrediente (nombre) values ('lácteos');
insert into tipo_ingrediente (nombre) values ('legumbres');
insert into tipo_ingrediente (nombre) values ('verduras');
insert into tipo_ingrediente (nombre) values ('frutas');
insert into tipo_ingrediente (nombre) values ('carnes');

insert into ingrediente (nombre, tipo) values ('arroz', 3);
insert into ingrediente (nombre, tipo) values ('leche', 6);
insert into ingrediente (nombre, tipo) values ('zanahoria', 8);
insert into ingrediente (nombre, tipo) values ('oregano', 1);
insert into ingrediente (nombre, tipo) values ('pollo', 10);
insert into ingrediente (nombre, tipo) values ('espaguetis', 5);
insert into ingrediente (nombre, tipo) values ('lentejas', 7);
insert into ingrediente (nombre, tipo) values ('manzana', 9);
insert into ingrediente (nombre, tipo) values ('lubina', 2);
insert into ingrediente (nombre, tipo) values ('langostino', 4);
insert into ingrediente (nombre, tipo) values ('lechuga', 8);

insert into requerir (receta, paso) values (1, 12);
insert into requerir (receta, paso) values (1, 8);
insert into requerir (receta, paso) values (1, 4);
insert into requerir (receta, paso) values (2, 7);
insert into requerir (receta, paso) values (3, 2);
insert into requerir (receta, paso) values (3, 11);
insert into requerir (receta, paso) values (3, 13);
insert into requerir (receta, paso) values (4, 3);
insert into requerir (receta, paso) values (5, 5);
insert into requerir (receta, paso) values (6, 12);
insert into requerir (receta, paso) values (7, 10);
insert into requerir (receta, paso) values (7, 1);
insert into requerir (receta, paso) values (8, 14);
insert into requerir (receta, paso) values (9, 2);
insert into requerir (receta, paso) values (9, 6);
insert into requerir (receta, paso) values (10, 9);

insert into utilizar (paso, utensilio) values (5, 2);
insert into utilizar (paso, utensilio) values (5, 9);
insert into utilizar (paso, utensilio) values (1, 6);
insert into utilizar (paso, utensilio) values (10, 1);
insert into utilizar (paso, utensilio) values (4, 10);
insert into utilizar (paso, utensilio) values (8, 5);
insert into utilizar (paso, utensilio) values (8, 8);
insert into utilizar (paso, utensilio) values (3, 7);
insert into utilizar (paso, utensilio) values (14, 4);
insert into utilizar (paso, utensilio) values (2, 3);

insert into necesitar (paso, ingrediente, tipo_medida, cantidad) values (2, 3, 'cucharaditas', 4.8);
insert into necesitar (paso, ingrediente, tipo_medida, cantidad) values (7, 8, 'litros', 3.8);
insert into necesitar (paso, ingrediente, tipo_medida, cantidad) values (6, 6, 'kilogramos', 6.6);
insert into necesitar (paso, ingrediente, tipo_medida, cantidad) values (11, 8, 'libras', 6.3);
insert into necesitar (paso, ingrediente, tipo_medida, cantidad) values (12, 9, 'mililitros', 5.9);
insert into necesitar (paso, ingrediente, tipo_medida, cantidad) values (13, 3, 'libras', 2.9);
insert into necesitar (paso, ingrediente, tipo_medida, cantidad) values (8, 2, 'gramos', 8.3);
insert into necesitar (paso, ingrediente, tipo_medida, cantidad) values (9, 4, 'libras', 7.0);
insert into necesitar (paso, ingrediente, tipo_medida, cantidad) values (2, 7, 'onzas', 8.7);
insert into necesitar (paso, ingrediente, tipo_medida, cantidad) values (3, 7, 'pizcas', 6.2);

select * from necesitar, paso, ingrediente where necesitar.ingrediente = ingrediente.id_ingrediente and necesitar.paso = paso.id_paso;

-- muestra todos los pasos a seguir para cada receta guardada en la base de datos
select * from requerir, paso, receta where requerir.receta = receta.id_receta and requerir.paso = paso.id_paso;

-- actualiza el tipo de plato para la receta del flan de caramelo
update receta set tipo = 'Postre' where nombre = 'Flan de caramelo';

-- elimina un paso de la receta de flan de caramelo
delete from requerir where receta = 1 and paso = 4;

-- muestra los pasos que usan utensilios y cuales usan
select * from utilizar, paso, utensilio where utilizar.utensilio = utensilio.id_utensilio and utilizar.paso = paso.id_paso;

-- cambia el nombre del utensilio 'balanza'
update utensilio set nombre = 'nevera' where nombre = 'balanza';

-- elimina el ingrediente 'arroz'
delete from ingrediente where nombre = 'arroz';