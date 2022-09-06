-- MEDIANTE GROUP BY Y COUNT OBTENEMOS LA CANTIDAD DE DATOS AGRUPADOS
select last_name from sakila.actor;
select last_name from sakila.actor group by last_name;
select last_name, count(*) from sakila.actor group by last_name;

select * from sakila.payment;
select * from sakila.customer;
select * from sakila.payment p inner join sakila.customer c on(c.customer_id = p.customer_id);

select 
c.customer_id,
c.first_name,
c.last_name,
sum(p.amount)
from sakila.payment p inner join sakila.customer c on(c.customer_id = p.customer_id)
group by c.customer_id,c.first_name,c.last_name;

-- EJERCICIOS DE PRACTICA	
-- Consulta la tabla rental de la base de datos sakila.
-- Realiza un MAX de  la columna rental_date 

select * from sakila.rental;
select customer_id, max(rental_date) from sakila.rental group by customer_id;



