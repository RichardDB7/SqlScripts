select * from sakila.actor; -- CONSULTA A LA TABLA ACTOR
select actor_id, first_name,last_name,last_update from sakila.actor; -- CONSULTA A LA TABLA ACTOR
select actor_id,first_name as Nombre,last_name as Apellido, last_name from sakila.actor; -- CAMBIO NOMBRE DE COLUMAS
select * from sakila.city; -- CONSULTA A TABLA CITY

-- 	EL COMANDO DISTINCT SE UTILIZA JUNTO CON SELECT
select * from sakila.customer;
select distinct (store_id) from sakila.customer; -- OBTENER VALORES UNICOS DE LAS COLUMNAS
select * from sakila.payment;
select distinct (customer_id) from sakila.payment; -- OBTENER VALORES UNICOS DE LAS COLUMNAS

-- COMANDO ORDER BY
select * from sakila.country order by country DESC; -- ORDEN DE DATOS DESDE LA Z A LA A
select * from sakila.country order by country ASC; -- ODEN DE DATOS DE MANERA ASCENDENTE A A LA Z
select * from sakila.customer order by first_name ASC; -- ORDEN DE LA FILA FIRST NAME DE LA A A LA Z

-- EJERCICIOS DE CONSULTA
select store_id,first_name,last_name from sakila.customer;
select store_id as Tienda, first_name as Nombre, last_name as Apellido from sakila.customer;
select * from sakila.customer order by last_name DESC;
select * from sakila.payment;
select * from sakila.payment order by amount DESC;
select * from sakila.payment order by amount ASC;



