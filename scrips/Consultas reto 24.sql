SELECT pe.cedula,pe.nombre, pe.apellido,ec.descripcion from personas pe, estado_civil ec
where pe.estado_civil_codigo = ec.codigo

----------usuario y cuentas

select c.numero_cuenta, u.nombre from usuario u, cuentas c
where c.cedula_propietario = u.cedula
and c.saldo > money(100) and c.saldo < money(1000)

select c.numero_cuenta,c.fecha_creacion,c.saldo, u.nombre from usuario u, cuentas c
where c.cedula_propietario = u.cedula
and c.fecha_creacion > date('2022-09-21') and c.fecha_creacion < date('2023-09-21')

------clientes y compras

SELECT c.nombre, c.apellido from clientes c, compras co
where c.cedula=co.cedula
and c.cedula like '%7%'

SELECT c.cedula,c.nombre, c.apellido from clientes c, compras co
where c.cedula=co.cedula
and c.nombre like 'Monica'

-----------estudiantes y profesores

select p.codigo, e.nombre, e.apellido from profesores p, estudiantes e
where p.codigo=e.codigo_profesor
and e.apellido like '%n%'

select e.cedula, e.nombre, e.apellido,
e.email, e.fecha_nacimiento,e.codigo_profesor
from profesores p, estudiantes e
where p.codigo=e.codigo_profesor
and p.nombre = 'Francisco'
---------persona y prestamo

select pe.cantidad_ahorrada, p.monto, p.garante from prestamo p, persona pe
where p.cedula=pe.cedula
and p.monto>money(100) and p.monto<money(1000)

SELECT * from persona where nombre = 'Sean'

-------productos y ventas

select p.nombre, p.stock, v.cantidad from productos p, ventas v
where p.codigo=v.codigo_producto
and p.nombre like '%m%'
or p.descripcion = '0'

select p.nombre, p.stock from productos p, ventas v
where p.codigo=v.codigo_producto
and v.cantidad = 5

--------transacciones y banco

SELECT * from transacciones
where tipo='C' and numero_cuenta>'22001' and numero_cuenta<'22004'

select t.codigo, t.numero_cuenta, t.monto, t.tipo, t.fecha, t.hora
from transacciones t, banco b
where t.codigo=b.codigo_transaccion
and b.codigo_banco = 1


-----------videojuegos y plataforma

select v.nombre,v.descripcion,v.valoracion,
p.nombre_plataforma from videojuegos v, plataformas p 
where (v.codigo=p.codigo_videojuego
and (v.descripcion like '%Guerra%' or v.descripcion like '%guerra%' )
and v.valoracion > 7)
or (v.nombre like 'C%'
and v.valoracion>8
and v.descripcion like 'D%')

select p.id_plataformas, p.nombre_plataforma , p.codigo_videojuego from videojuegos v, plataformas p
where p.codigo_videojuego=v.codigo
and v.nombre = 'God of war'


-------registros de entrada y salida

SELECT r.cedula_empleado, e.fecha, e.nombre
FROM registros_entrada r, empleado e
WHERE e.codigo_empleado = r.codigo_empleado
AND (
(r.fecha BETWEEN DATE '2023-08-01' AND DATE '2023-08-31')
OR (r.cedula_empleado LIKE '%17%' AND r.hora BETWEEN TIME '08:00' AND TIME '12:00')
OR (r.cedula_empleado LIKE '%07%' AND r.hora BETWEEN TIME '09:00' AND TIME '13:00')
)

SELECT r.codigo_registro, e.nombre from registros_entrada r, empleado e
where e.codigo_empleado = r.codigo_empleado
and e.codigo_empleado = 2201

