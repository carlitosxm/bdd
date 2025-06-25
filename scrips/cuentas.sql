-- Table: public.cuentas

-- DROP TABLE IF EXISTS public.cuentas;
DROP table IF EXISTS public.cuentas;

CREATE TABLE IF NOT EXISTS public.cuentas
(
    numero_cuenta character(5) COLLATE pg_catalog."default" NOT NULL,
    cedula_propietario character(5) COLLATE pg_catalog."default" NOT NULL,
    fecha_creacion date NOT NULL,
    saldo money NOT NULL,
    CONSTRAINT cuenta_pk PRIMARY KEY (numero_cuenta)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cuentas
    OWNER to postgres;

alter table public.cuentas
add constraint cuentas_cedula_propietario_fk 
FOREIGN key (cedula_propietario)
REFERENCES usuario(cedula);



INSERT INTO public.cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) VALUES
('00001', '12345', '2022-08-21', 1000.00),
('00002', '12346', '2022-09-22', 250.50),
('00003', '12345', '2023-07-10', 320.75),
('00004', '12346', '2023-11-05', 800.00),
('00005', '12347', '2023-05-30', 500.00),
('00006', '12348', '2023-08-19', 150.00),
('00007', '12347', '2022-12-12', 999.99),
('00008', '12348', '2023-04-01', 100.00),
('00009', '12349', '2022-09-17', 250.25),
('00010', '12349', '2023-05-08', 250.00);


--select * from public.cuentas;
select numero_cuenta,saldo from cuentas;
select * from cuentas where fecha_creacion BETWEEN CURRENT_DATE - INTERVAL '2 months' and CURRENT_DATE;
select numero_cuenta,saldo from cuentas where fecha_creacion BETWEEN CURRENT_DATE - INTERVAL '2 months' and CURRENT_DATE;


update cuentas set saldo = money(10) where cedula_propietario like '17%';


delete from cuentas where cedula_propietario like '10%';