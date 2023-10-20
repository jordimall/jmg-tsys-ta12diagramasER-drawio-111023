USE EJ13;

/* empleado */

INSERT INTO empleado (DNI, nombre, apellido, telefonoFijo, telefonoMovil, numSeguridadSocial) VALUES
('12345678A', 'Juan', 'Perez', '987654321', '654321987', 'SSN123'),
('23456789B', 'María', 'López', '876543210', '543219876', 'SSN456'),
('34567890C', 'Carlos', 'González', '765432109', '432109765', 'SSN789'),
('45678901D', 'Laura', 'Rodríguez', '654321098', '321098765', 'SSN012'),
('56789012E', 'Pedro', 'Fernández', '543210987', '210987654', 'SSN345'),
('67890123F', 'Ana', 'Martínez', '432109876', '098765432', 'SSN678'),
('78901234G', 'Miguel', 'Sánchez', '321098765', '987654321', 'SSN901'),
('89012345H', 'Elena', 'Torres', '210987654', '876543210', 'SSN234'),
('90123456I', 'José', 'Ramírez', '098765432', '765432109', 'SSN567'),
('01234567J', 'Sara', 'Hernández', '987654321', '654321987', 'SSN890');

/* Pinche */

INSERT INTO pinche (DNI, fecha_nacimiento) VALUES
('12345678A', '1990-01-15'),
('23456789B', '1988-04-20'),
('34567890C', '1995-08-10'),
('45678901D', '1987-12-05'),
('56789012E', '1992-03-30');

/* Cocinero */

INSERT INTO cocinero (DNI, aniosServicio) VALUES
('67890123F', 3),
('78901234G', 5),
('89012345H', 8),
('90123456I', 2),
('01234567J', 6);


/* Ayudar */
INSERT INTO ayudar (DNICocinero, DNIPinche) VALUES 
('89012345H', '12345678A'),
('89012345H', '23456789B'),
('01234567J', '34567890C'),
('01234567J', '45678901D'),
('78901234G', '56789012E');

/* Plato */

INSERT INTO plato (precio, nombre, descripcion) VALUES
(12.99, 'Hamburguesa con queso', 'Deliciosa hamburguesa con queso y lechuga'),
(9.99, 'Pizza de pepperoni', 'Pizza de pepperoni recién horneada con salsa de tomate y queso derretido'),
(15.50, 'Ensalada César', 'Ensalada fresca con pollo a la parrilla y aderezo César'),
(18.75, 'Salmón a la parrilla', 'Filete de salmón fresco a la parrilla con vegetales asados'),
(8.49, 'Tacos de pescado', 'Tacos de pescado crujientes con repollo y salsa de chipotle'),
(11.99, 'Risotto de champiñones', 'Risotto cremoso con champiñones y parmesano'),
(4.25, 'Costillas a la barbacoa', 'Costillas de cerdo con salsa barbacoa y papas fritas'),
(7.99, 'Spaghetti carbonara', 'Spaghetti con salsa de huevo, panceta y queso parmesano'),
(10.50, 'Tofu con vegetales salteados', 'Tofu crujiente con brócoli, zanahorias y salsa de soja'),
(6.95, 'Helado de vainilla', 'Helado cremoso de vainilla con salsa de caramelo y nueces');

/* Preparar */

INSERT INTO preparar (DNICocinero, IDPlato) VALUES
('67890123F', 1),  
('78901234G', 2),  
('89012345H', 3),  
('90123456I', 4),  
('67890123F', 6),  
('78901234G', 7), 
('89012345H', 8),  
('90123456I', 9),  
('01234567J', 10);  

/* Almacen */

INSERT INTO almacen (nombre, descripcion) VALUES
('Almacén A', 'Almacén principal de productos secos'),
('Almacén B', 'Almacén refrigerado para productos lácteos y carnes'),
('Almacén C', 'Almacén para productos frescos y frutas'),
('Almacén D', 'Almacén de suministros y utensilios de cocina'),
('Almacén E', 'Almacén de vinos y licores'),
('Almacén F', 'Almacén de productos enlatados'),
('Almacén G', 'Almacén de productos de limpieza'),
('Almacén H', 'Almacén de equipo de restaurante'),
('Almacén I', 'Almacén de suministros de oficina'),
('Almacén J', 'Almacén de productos no alimentarios');

/* Estante */

INSERT INTO estante (identificador, tamanio, NumAlmacen) VALUES
(1, 2.5, 1),  
(2, 3.0, 2),  
(3, 1.8, 1),  
(4, 2.2, 3),  
(5, 2.0, 1), 
(7, 2.8, 1),  
(8, 1.7, 3),  
(10, 1.9, 1); 

/* Ingrediente */

INSERT INTO ingrediente (nombre, totalIngredientes, IDEstanteria) VALUES
('Harina', 50.0, 1),  
('Queso', 30.5, 2),   
('Tomates', 75.0, 1),  
('Aceite de oliva', 20.0, 3),  
('Lechuga', 40.0, 1),  
('Cebolla', 15.2, 2),  
('Carne de res', 60.0, 1),  
('Pasta', 25.0, 3),  
('Pimientos', 10.0, 2),  
('Pollo', 45.5, 1);  

/* Necesitar */

INSERT INTO necesitar (IDPlato, IDIngrediente) VALUES
(1, 1),  
(1, 2),  
(2, 2),  
(2, 3),  
(3, 4),  
(4, 5),  
(5, 6),  
(6, 7),  
(7, 8),  
(8, 9);  


/* select */
SELECT * FROM empleado;
SELECT * FROM plato WHERE precio > 10.00;

/* update */
UPDATE empleado SET telefonoMovil = '9876543210' WHERE DNI = '123456789';
UPDATE plato SET precio = 11.99 WHERE ID = 2;

/* delete */
DELETE FROM empleado WHERE DNI = '234567890';
DELETE FROM plato WHERE ID = 3;