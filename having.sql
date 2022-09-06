-- HAVING PERMITE UTILIZAR CLAUSULAS DE AGREGACIÓN
select * from sakila.actor;
select last_name, count(*) from sakila.actor 
group by 1
having count(*) > 3;

select * from sakila.payment p 
inner join sakila.customer c on (p.customer_id = c.customer_id);	


select 
c.customer_id,
c.last_name,
c.first_name,
sum(p.amount)
from sakila.payment p 
inner join sakila.customer c on (p.customer_id = c.customer_id)	
group by 1,2,3
having sum(p.amount) < 100
order by sum(p.amount) desc;

-- EJERCICIOS DE PRACTICA
-- Consulta la tabla actor de la base de datos sakila.
-- Realiza un COUNT de  last_name
-- Mostrar cuando el COUNT sea mayor de 2

select * from sakila.actor;
select last_name, count(*) from sakila.actor; 
select last_name, count(*) from sakila.actor having count(*) > 2; 


