select * from sakila.actor where first_name = 'DAN'; -- FILTRO LA BUSQUEDA ESPECIFICA
select * from sakila.city where city = 'London';  -- BUSQUEDA ESPECIFICA 
select * from sakila.city where country_id = 102; -- BUSQEDA ESPECIFICA DEL ID 102
select * from sakila.customer where store_id = 1; -- BUSQUEDA ESPECIFICA DEL ID 1
select * from sakila.inventory where film_id>50; -- CONDICIONAL MAYOR QUE
select * from sakila.payment where amount < 3; -- CONDICIONAL MENOR QUE 
select distinct amount from sakila.payment where amount < 3; -- TOTAL DE VALORES MENORES QUE 

select * from sakila.staff where staff_id <> 2; -- CONDICIONAL DE DIFERENCIA
select * from sakila.language where name <> 'German'; -- CONDICIONAL DE DIFERENCIA

select * from sakila.film where release_year = 'description';
select * from sakila.payment;
select distinct amount from sakila.payment where amount > 0.99;


