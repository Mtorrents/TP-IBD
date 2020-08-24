-- INSERT TP

insert into calle values
(1,'Ituzaingo'),
(2,'Roca'),
(3,'Meeks'),
(4,'Mamberti'),
(5,'Amenabar'),
(6,'Capello'),
(7,'San Martìn'),
(8,'Campichuelo');

insert into calle values
(9,'Azara'),
(10,'Sarmiento'),
(11,'Rivadavia'),
(12,'Martinto'),
(13,'Bolaños'),
(14,'Loria');

insert into localidad values
(1,'Lanus'),
(2,'CABA'),
(3,'Avellaneda'),
(4,'Lomas de Zamora');

insert into provincia values
(1,'Buenos Aires'),
(2,'CABA');

-- Marca
insert into marca values
(1,'Ford'),
(2,'Subaru'),
(3,'Chevrolet'),
(4,'TATSA'),
(5,'El Detalle');

insert into modelo values
(1,'LP 031'),
(2,'LP 457'),
(3,'LT 567'),
(4,'LP 662'),
(5,'LU 678');

insert into microbus values
(1,1,'AA-001-AA',10000),
(1,2,'AA-002-AA',14000),
(1,3,'AA-003-AA',11000),
(1,4,'AA-004-AA',15000),
(1,5,'AA-005-AA',15000),
(1,1,'AA-006-AA',14500),
(1,1,'AA-007-AA',10010),
(1,1,'AA-008-AA',11111),
(1,1,'AA-009-AA',15000),
(1,1,'AA-010-AA',15000);


-- create table domicilio (
-- 	   id_domicilio				int primary key,
--     id_calle 					int references calle(id_calle),
--     numero						int not null,
--     id_localidad 				int references localidad(id_localidad),
--     id_provincia 				int references provincia(id_provincia)
-- );

insert into domicilio values
(1,1,2000,1,1),
(2,2,2780,1,1),
(3,3,1480,1,1),
(4,1,3000,1,1),
(5,6,6390,1,1),
(6,1,1000,1,1);


-- create table chofer(
-- 	chofer_cuil 				varchar(30) primary key,
-- 	apellido 					varchar (20) not null,
-- 	nombre 						varchar (20) not null,
-- 	id_domicilio 				int references domicilio(id_domicilio),
-- 	fecha_ingreso_empresa 		date not null,
-- 	nro_licencia 				varchar(30) not null
-- );

 INSERT INTO chofer values
 ('20-32567943-1','Perez','Jorge',1,'2015/05/20',45567980),
 ('19-39944534-5','Perez','Federico',2,'2015/05/20',39944534),
 ('20-41237009-1','Perez','Quimey',3,'2015/08/10',41237009),
 ('19-386057459-1','Torrents','Martin',5,'2015/10/20',386057459),
 ('20-45784758-1','Torrents','Martina',6,'2015/10/18',45784758),
 ('20-45956247-1','Velasquez','Matias',7,'2014/10/16',45956247);
 
 
 insert into recorrido values
 (1,'Lanus-Plaza'),
 (2,'Lanus-Correo'),
 (3,'Lanus-Agronomia');
 
 insert into distancia_recorrida values
 (1,1,10),
 (2,2,13),
 (3,3,18);
 
 insert into lista_de_pasajero_x_recorrido values 
 
 
 
 
 
 
 
 