select u.nombre, g.nombre
from usuarios u,grupo g, usuario_grupo ug 
where u.id = ug.us_id and g.id = ug.gr_id;

select u.nombre
from usuarios u
where id in(select us_id from usuario_grupo where us_id = 1 );

select g.nombre , max (ug.us_id)
from grupo g, usuario_grupo ug
where g.id = ug.us_id;
group by g.nombre

select u.nombre, g.fecha_creacion
from usuarios u,grupo g, usuario_grupo ug 
where u.id = ug.us_id and g.id = ug.gr_id
and g.fecha_creacion BETWEEN date('2020-03-08') and date('2022-03-08');

select nombre
from usuarios
where id in (select us_id from usuario_grupo where gr_id=3);

select g.descripcion, count (ug.us_id)
from grupo g, usuario_grupo ug
where g.id=ug.gr_id
and g.descripcion like '%matutino%'
group by g.descripcion;

-----------habitaciones huespedes

select h.habitacion_numero, hu.nombre, hu.apellido
from habitaciones h, reservas r, huespedes hu
where h.habitacion_numero = r.id_habitacion
  and hu.id = r.id_huesped;

select nombre, apellido
from huespedes
where id in ( select id_huesped from reservas where id_habitacion = 2
);

select h.habitacion_numero, count(r.id_huesped) as cantidad_huespedes
from habitaciones h, reservas r
where h.habitacion_numero = r.id_habitacion
group by h.habitacion_numero;

select h.habitacion_numero, h.piso, hu.nombre, hu.apellido
from habitaciones h, reservas r, huespedes hu
where h.habitacion_numero = r.id_habitacion
and hu.id = r.id_huesped
and h.piso = 4;

select nombre, apellido
from huespedes
where id in (
    select id_huesped
    from reservas
    where id_habitacion = 3
);

select h.habitacion_numero, avg(r.id_huesped) as promedio_huesped_id
from habitaciones h,reservas r
where h.habitacion_numero = r.id_habitacion
group by h.habitacion_numero;

select h.habitacion_numero, hu.nombre, hu.apellido
from habitaciones h, reservas r, huespedes hu
where h.habitacion_numero = r.id_habitacion
and hu.id = r.id_huesped;

select nombre, apellido
from huespedes
where id in (
    select id_huesped
    from reservas
    where id_habitacion = 4
);


select h.habitacion_numero, sum(h.precio_por_noche) as total_recaudado
from habitaciones h, reservas r
where h.habitacion_numero = r.id_habitacion
group by h.habitacion_numero;

-------------------- municipio

select m.nombre as nombre_municipio, p.proyecto as nombre_proyecto
from municipio m, proyecto_municipio pm, proyecto p
where m.id = pm.municipio_id
and p.id = pm.proyecto_id;


select proyecto
from proyecto
where id in (
    select proyecto_id
    from proyecto_municipio
    where municipio_id = 1
);

select m.nombre as nombre_municipio, count(pm.proyecto_id) as cantidad_proyectos
from municipio m, proyecto_municipio pm
where m.id = pm.municipio_id
group by m.nombre;

select m.nombre as nombre_municipio, p.proyecto as nombre_proyecto
from municipio m, proyecto_municipio pm, proyecto p
where m.id = pm.municipio_id
  and p.id = pm.proyecto_id
  and m.nombre like '%gad%';

select m.nombre as nombre_municipio, min(pm.proyecto_id) as proyecto_id_minimo
from municipio m, proyecto_municipio pm
where m.id = pm.municipio_id
group by m.nombre;

select m.nombre as nombre_municipio, c.nombre as nombre_ciudad
from municipio m, ciudad c
where m.ciudad_id = c.id;

select p.proyecto
from proyecto p
where p.id in (
    select pm.proyecto_id
    from proyecto_municipio pm
    where pm.municipio_id = 3
);

select m.nombre as nombre_municipio, max(pm.proyecto_id) as proyecto_id_maximo
from municipio m, proyecto_municipio pm
where m.id = pm.municipio_id
group by m.nombre;