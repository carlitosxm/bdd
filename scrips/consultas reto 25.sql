select count (nombre) from personas
where estado_civil_codigo = 'C'

select avg(CAST(c.saldo as numeric)) from cuentas c, usuario u
where u.cedula = c.cedula_propietario
and u.cedula = '12345';

SELECT u.tipo_cuenta, COUNT(c.numero_cuenta)
FROM cuentas c, usuario u
WHERE c.cedula_propietario = u.cedula
GROUP BY u.tipo_cuenta;


SELECT c.cedula, sum(com.monto)
FROM clientes c, compras com
where c.cedula = com.cedula
GROUP BY c.cedula
;



SELECT c.cedula, count(com.fecha_compra)
FROM clientes c, compras com
where c.cedula = com.cedula
and com.fecha_compra = date('2024-06-01')
GROUP BY c.cedula
;


SELECT p.codigo, count(e.codigo_profesor) FROM estudiantes e, profesores p
where e.codigo_profesor=p.codigo
GROUP BY p.codigo
;


SELECT ROUND(AVG(
EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM fecha_nacimiento)
))FROM estudiantes;

select p.cedula, sum(pr.monto)
from persona p, prestamo pr
where p.cedula=pr.cedula
group by p.cedula
;


select count(p.numero_hijos)
from persona p
where p.numero_hijos>0
;

select max(p.precio)
from productos p
;

select sum(v.cantidad)
from productos p, ventas v
where p.codigo = v.codigo_producto
;

select count(t.tipo)
from transacciones t
where t.tipo='C'
;


select * from ventas