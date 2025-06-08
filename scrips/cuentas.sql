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


INSERT INTO public.cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo) VALUES
('00001', '10001', '2020-01-15', 1500.00),
('00002', '00002', '2021-03-22', 2450.50),
('00003', '00003', '2019-07-10', 320.75),
('00004', '00004', '2023-11-05', 7800.00),
('00005', '00005', '2022-05-30', 500.00),
('00006', '00006', '2020-08-19', 2150.00),
('00007', '00007', '2021-12-12', 999.99),
('00008', '00008', '2018-04-01', 12000.00),
('00009', '00009', '2022-09-17', 250.25),
('00010', '17010', '2025-05-08', 3250.00);


--select * from public.cuentas;
select numero_cuenta,saldo from cuentas;
select * from cuentas where fecha_creacion BETWEEN CURRENT_DATE - INTERVAL '2 months' and CURRENT_DATE;
select numero_cuenta,saldo from cuentas where fecha_creacion BETWEEN CURRENT_DATE - INTERVAL '2 months' and CURRENT_DATE;


update cuentas set saldo = money(10) where cedula_propietario like '17%';


delete from cuentas where cedula_propietario like '10%';