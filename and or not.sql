-- EL OPERADOR AND ES UTILIZADO CUANDO SE REQUIEREN DOS CONDICIONES VERDADERAS
select * from sakila.country
where country = 'Algeria' and country_id = 2;

-- EL OPERADOR OR DEVUELVE AMBOS DATOS 'Algeria' OR id 12
select * from sakila.country
where country = 'Algeria' or country_id = 12;

select *from sakila.language where language_id = 1 or name = 'German';

-- OPERADOR NOT EXIHIBE TODOS LOS REGISTROS EXEPTO EL QUE SE ESPECIFICA
select * from sakila.category where not name = 'Action';

select * from sakila.film where rating = 'PG';

select distinct(rating) from sakila.film where not rating = 'PG';

-- EJERCICIO DE CONSULTA Filtra la información donde staff_id no sea 1, 
-- customer_id sea mayor a 250 y inventory_id sea menor de 100.

select * from sakila.rental;
select * from sakila.rental where not staff_id = 1;
select  * from sakila.rental where customer_id > 250 and inventory_id < 100;


-- EJERCICIO DE CONSULTA Filtra la información donde customer_id sea igual a 36, 
-- amount sea mayor a 0.99 y staff_id sea igual a 1.

select * from sakila.payment;
select * from sakila.payment where customer_id = 36 and amount > 0.99 and staff_id = 1;



	



