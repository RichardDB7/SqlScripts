-- MEDIANTE INNER JOIN UNIMOS DATOS QUE SE ENCUENTRAN REPETIDOS EN LAS TABLAS

select * from sakila.film f;
select * from sakila.language l;

select * from sakila.film f 
inner join sakila.language l on (f.language_id = l.language_id);

select f.title,f.description,f.release_year,f.language_id,l.name 
from sakila.film f inner join sakila.language l on (f.language_id = l.language_id);

select * from sakila.address a;
select * from sakila.city c;
-- UNIMOS LAS TABLAS
select * from sakila.address a inner join sakila.city c on (a.city_id = c.city_id);

select a.address as Direccion, c.city as Ciudad from sakila.address a inner join sakila.city c on (a.city_id = c.city_id);


-- MEDIANTE RIGTH JOIN UNIMOS DATOS DE DIVERSAS TABLAS 
-- COMENZANDO POR LA TABLA DE LA DERECHA
select * from sakila.customer c;
select * from sakila.actor a;

-- UNIMOS LA TABLA CUSTOMER CON ACTOR MEDIANTE RIGTH JOIN
select 
c.customer_id,  	
c.first_name,
c.last_name,
a.actor_id,
a.first_name,
a.last_name
from sakila.customer c right join sakila.actor a on c.last_name = a.last_name;


-- MEDIANTE LEFT JOIN UNIMOS DATOS DE DIVERSAS TABLAS 
-- COMENZANDO POR LA TABLA IZQUIERDA
-- LA SIGUIENTE CONSULTA MANTIENE TODA LA INFORMACION DE LA TABLA
-- CUSTOMER Y PEGA LA INFORMACION QUE ENCUENTRA EN ACTOR
select
c.customer_id,
c.first_name,
c.last_name,
a.actor_id,
a.first_name,
a.last_name
from sakila.customer c left join sakila.actor a on (c.last_name = a.last_name);

-- EJERCICIO DE CONSULTA 
-- Consulta la tabla address de la base de datos sakila.
-- Realiza un INNER JOIN con las tablas city y country 
-- Mostrar las columnas address, city, country
select * from sakila.address a;
select * from sakila.city c;
select * from sakila.country y;
select * from sakila.city c inner join sakila.country y on (c.country_id = y.country_id);
select * from sakila.address as address, sakila.city as city_id ,sakila.country as country;

-- EJERCICIO DE CONSULTA
-- Consulta la tabla customer de la base de datos sakila. 
-- Realiza un LEFT JOIN con las tablas store y address
-- Mostrar las columnas first_name, address, store_id

select * from sakila.customer c; 
select * from sakila.store s;
select * from sakila.address a;


select  c.first_name,
a.address,
s.store_id
from sakila.customer c
left join sakila.store s on (c.store_id = s.store_id)
left join sakila.address a on (c.address_id = a.address_id)






-- EJERCICIO DE CONSULTA
-- Consulta la tabla rental de la base de datos sakila.
-- Realiza un INNER JOIN con la tabla staff
-- Mostrar las columnas rental_id, first_name

select * from sakila.rental r;
select * from sakila.staff s;

select * from sakila.rental r 
inner join sakila.staff s on (r.staff_id = s.staff_id);

select * from sakila.address as address, sakila.city as city_id ,sakila.country as country;

select *  from sakila.rental as rental_id,sakila.staff as first_name; 





