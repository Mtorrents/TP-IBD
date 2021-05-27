-- INSERT TP

insert into street values
(1,'Ituzaingo'),
(2,'Roca'),
(3,'Meeks'),
(4,'Mamberti'),
(5,'Amenabar'),
(6,'Capello'),
(7,'San Martìn'),
(8,'Campichuelo');

insert into location values
(1,'Lanus'),
(2,'CABA'),
(3,'Avellaneda'),
(4,'Lomas de Zamora');

insert into province values
(1,'Buenos Aires'),
(2,'CABA');

-- Brand
insert into brand values
(1,'Ford'),
(2,'Subaru'),
(3,'Chevrolet'),
(4,'TATSA'),
(5,'El Detalle');

insert into model values
(1,'LP 031'),
(2,'LP 457'),
(3,'LT 567'),
(4,'LP 662'),
(5,'LU 678');


-- create table address (
-- 	   id_domicilio				int primary key,
--     id_calle 					int references calle(id_calle),
--     numero						int not null,
--     id_localidad 				int references localidad(id_localidad),
--     id_provincia 				int references provincia(id_provincia)
-- );

insert into address values
(1,1,2000,1,1),
(2,2,2780,1,1),
(3,3,1480,1,1),
(4,1,3000,1,1),
(5,6,6390,1,1),
(6,1,1000,1,1);


-- create table driver(
-- 	chofer_cuil 				varchar(30) primary key,
-- 	apellido 					varchar (20) not null,
-- 	nombre 						varchar (20) not null,
-- 	id_domicilio 				int references domicilio(id_domicilio),
-- 	fecha_ingreso_empresa 		date not null,
-- 	nro_licencia 				varchar(30) not null
-- );

 INSERT INTO driver values
 ('20-32567943-1','Perez','jorge',1,'20/05/2015',45567980);
 
 
 
 
