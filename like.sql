-- EL OPERADOR LIKE SE UTILIZA DENTRO DE LA CLÁUSULA 
-- WHERE PARA BUSCAR UN PATRÓN ESPECÍFICO
select * from sakila.actor; 
select * from sakila.actor where first_name like 'A%';

select * from sakila.actor where first_name like 'A%' and last_name like 'B%';

-- MEDIANTE LA INVERSIÓN DEL PROCENTAJE CAMBIAMOS EL ORDEN DE BÚSQUEDA
select * from sakila.actor where first_name like '%A' and last_name like '%N';

-- BUSCAMOS 'NE'EN CUALQUIER POSICIÓN
select * from sakila.actor where first_name like '%NE%';
-- BUSCAMOS 'RO' EN CUALQUIER POSICIÓN
select * from sakila.actor where first_name like '%NE%' and last_name like '%RO%';
-- BUSCAMOS RESULTADOS QUE COMIENZEN CON A Y TERMINEN CON E
select * from sakila.actor where first_name like 'A%E';
select * from sakila.actor where first_name like 'C%N';
select * from sakila.actor where first_name like 'C%N' and last_name like 'G%';

-- EJERCICIO DE CONSULTA Consulta la tabla film de la base de datos sakila.
-- Filtra la información donde release_year sea igual a 2006  y title empiece con ALI.

select * from sakila.film where (release_year = 2006) and title like 'ALI%';