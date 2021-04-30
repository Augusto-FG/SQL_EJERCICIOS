CREATE DATABASE Ejercicio_SQL

go

use Ejercicio_SQL

go

/* Creamos tabla Autores, con Id, Nombre, Fecha de nacimiento y Edad */
******************************************************************
Create table Autores
(
Id int not null,
Nombre varchar(20) not null,
Fecha_nacimiento char(8)
Edad int
);

/*Insertamos valores a la tabla "Autores" */
*******************************************************************

INSERT INTO Autores (Id, Nombre, Fecha_nacimiento) 
VALUES 
('104', 'Juan', '12/01/1980', '41'), 
('605', 'Pedro', '13/02/1992', '29'),
('205', 'Lucas', '14/03/1996', '25'),
('505', 'Mariano', '15/04/1976', '45'),
('705', 'Matias', '17/05/1996', '24'),
('305', 'Andres', '18/06/1990', '30')

/*1) Consultamos toda la tabla autores  */
********************************************************************
SELECT Nombre, Apellido, Direccion, Fecha_nacimiento, Edad FROM Autores
/*Otra opción */
SELECT * FROM Autores

/*2) Consultamos sólo los nombres de la tabla autores  */
********************************************************************
SELECT Nombre FROM Autores

/*3) Ordenamos nombre de manera alfabetica */
********************************************************************
SELECT * FROM Autores
 order by Nombre

 /*4) Autores con Id superior a 600 */
********************************************************************
SELECT Nombre FROM Autores WHERE Id>600,  

 /*5) Autores nacidos entre 1950 y 1960 ordenado por identificación descendente */
********************************************************************
SELECT * FROM Autores
	WHERE fecha_nacimiento BERWEEN 1950 AND 1960 ORDER BY Id desc

/*6) El promedio de los años de nacimiento. */
********************************************************************
SELECT AVG fecha_nacimiento FROM Autores,

/*8) Cuantos Autores tienen más de 40 años.*/
*********************************************************************
SELECT * FROM Autores WHERE Edad>40

/*9) El nombre del autor más joven.*/
**********************************************************************
SELECT autor_nombre WHERE Edad <=21 

/*10) Todos los autores cuyo nombre empiece con A.*/
***********************************************************************
SELECT autor_nombre FROM Autores WHERE autor_nombre LIKE '%A'; 

/*11) Todos los autores que tengan una letra C en cualquier parte del nombre.*/
***********************************************************************
SELECT autor_nombre FROM Autores WHERE autor_nombre Like '%B';

/*12) Todos los autores con identificación, nombre y edad.*/
************************************************************************
SELECT autor_nombre FROM Autores

/*13) Cuantos autores hay para cada año de nacimiento.*/
************************************************************************
Select fecha_nacimiento count(*) from autores,