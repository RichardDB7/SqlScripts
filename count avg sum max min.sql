-- MEDIANTE EL METODO SUM , SUMAMOS LOS VALORES DE LA COLUMNA AMOUNT
select * from sakila.payment;
select sum(amount) from sakila.payment;
-- SUMA DE COLUMNAS
select inventory_id + film_id + store_id from sakila.inventory;

-- MEDIANTE EL METODO COUNT OBTENEMOS EL TOTAL DE REGISTROS 
-- DE LA TABLA CONSULTADA

select * from sakila.actor;
select count(*) from sakila.category;
select count(first_name) from sakila.actor;

-- MEDIANTE AVG(AVERAGE) CONSULTAMOS EL PROMEDIO
select * from sakila.payment;
select avg(amount)from sakila.payment;
select avg(rental_duration)from sakila.film;

-- MAXIMOS Y MINIMOS
select * from sakila.film;
-- LA MAXIMA DURA 185 MINUTOS
select max(length) from sakila.film;
-- LA MINIMA DURA 46
select min(length) from sakila.film;
-- COSTO MINIMO 9.99
select min(replacement_cost) from sakila.film;
-- COSTO MAXIMO 29.99
select max(replacement_cost) from sakila.film;

-- EJERCICIOS DE PRACTICA
-- Consulta la tabla rental de la base de datos sakila.
-- Realiza un COUNT de  la columna rental_id

select * from sakila.rental;
select count(rental_id) from sakila.rental;
-- EJERCICIOS DE PRACTICA
-- Consulta la tabla payment de la base de datos sakila.
-- Realiza un MAX de  la columna amount
select * from sakila.payment;
select max(amount) from sakila.payment;
