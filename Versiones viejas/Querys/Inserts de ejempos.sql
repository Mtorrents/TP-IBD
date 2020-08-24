use aeropuerto;
-- Marca
insert into marca_avion values
(1,'cessna','Estados Unidos'),
(2,'Beechcraft','Estados Unidos'),
(3,'Fokker','Alemania');

-- /////////////////////////////////////////////////////////////////////////
-- AVIONES								
-- marca	modelo	matricula	fecha entrada servicio
insert into avion(marca,modelo,matricula,fecha_entrada) value
(1,'Citation','LV-ABC','2010/12/12');

insert into avion(marca,modelo,matricula,fecha_entrada) values
(2,'Baron','LV-CDE','2011/10/1'),								
(3,'F-27','LV-FGH','2008/5/4'),								
(1,'Citation','LV-IJK','2014/6/7'),							
(3,'King Air','LV-LMN','2012/7/8');		
						
-- /////////////////////////////////////////////////////////////////////////

insert into calle values
(1,'Ituzaingo'),
(2,'Roca'),
(3,'Meeks'),
(4,'Mamberti'),
(5,'Amenabar'),
(6,'Capello'),
(7,'San Martìn'),
(8,'Campichuelo');

insert into localidad values
(1,'Lanus'),
(2,'CABA'),
(3,'Avellaneda'),
(4,'Lomas de Zamora');

insert into provincia values
(1,'Buenos Aires'),
(2,'CABA');

-- nombre apellido dni prog_frec  cod_calle numero	cod_localidad cod_provincia	
/*
Pasajeros																									
Nombre	apellido	dni	viajero frecuente	calle 	numero	localidad	provincia	 
																	
Barragan	Alejo	11111111		si		1 	123 	1	1																		
casas	Andrès Alfredo	22222222	si		2	4561	2	2																		
Chaves	Barbara	33333333			no		8	6532	3	1																		
Chimbo	Brisa	44444444			si		3	562		4	1																		
Chudoba	camila	55555555			no		4	2356	1	1																		
Cires	Carlos 	66666666			si		5	2345	2	2																		
Cusato	Carlos Sebastián	77777777	no	6	1589	4	1																		
Dominguez	Christian	88888888	si		5	356		2	2																		
Escullini	Cristian	99999999	si		3	1296	4	1																		
Feijoo	Cristian	10111213	si	San 	7	3652	3	1
*/																
insert into pasajero (nombre,apellido,dni,prog_frec,cod_calle,numero,cod_localidad,cod_provincia) values		
('Barragan','Alejo',11111111,'True',1,123,1,1),
('casas','Andres Alfredo',22222222,'True',2,4561,2,2),
('Chaves','Barbara',33333333,'False',8,6532,3,1),
('Chimbo','Brisa',44444444,'True',3,562,4,1),
('Chudoba','camila',55555555,'False',4,2356,1,1),
('Cires','Carlos' ,66666666,'True',5,2345,2,2),
('Cusato','Carlos Sebastián',77777777,'False',6,1589,4,1),
('Dominguez','Christian',88888888,'True',5,356,2,2),
('Escullini','Cristian',99999999,'True',3,1296,4,1),
('Feijoo','Cristian',10111213,'True',7,3652,3,1);

insert into calle values
(9,'Azara'),
(10,'Sarmiento'),
(11,'Rivadavia'),
(12,'Martinto'),
(13,'Bolaños'),
(14,'Loria');


/*
Pilotos								
Nombre		apellido			dni				cuil		fecha ingreso	calle 	numero	localidad	provincia
Juarez		Federico Bernardo	12345678	20-12345678-8	1/10/1994		7		2235	2			2
Lacoste		Franco				34567890	20-34567890-1	1/7/2003		9		1254	4			1
Laime 		Mariana				45678901	27-45678901-1	1/4/2001		10		500		1			1
Lopez		Germán Ignacio		56789123	20-56789123-3	1/5/2013		11		2351	2			2
Martinez	Giuliano			67891234	20-67891234-4	1/7/2010		12		663		1			1
Medina		Adriana				78912345	27-78912345-5	1/8/2015		13		1256	1			1
Melgarejo	Jair Alberto		90123456	20-90123456-6	1/3/2011		14		333		4			1
*/

-- apellido nombre	 dni cuil fecha_ingreso cod_calle numero cod_localidad	 cod_provincia	
insert into piloto(nombre,apellido,dni,cuil,fecha_ingreso,cod_calle,numero,cod_localidad,cod_provincia) values	
('Juarez Federico','Bernardo',12345678,'20-12345678-8','1994/10/1',7,2235,2,2),
('Lacoste','Franco',34567890,'20-34567890-1','2003/7/1',9,1254,4,1),
('Laime','Mariana',45678901,'27-45678901-1','2001/4/1',10,500,1,1),
('Lopez	Germán','Ignacio',56789123,'20-56789123-3','2013/5/1',11,2351,2,2),		
('Martinez','Giuliano',67891234,'20-67891234-4','2010/7/1',12,663,1,1),
('Medina','Adriana',78912345,'27-78912345-5','2015/8/1',13,1256,1,1),
('Melgarejo	Jair','Alberto',90123456,'20-90123456-6','2011/3/1',14,333,4,1);

/*
Aeropuertos			
codigo	nombre						ciudad	
BUE		Aeroparque Jorge Newbery	CABA	
MDQ		Astor Piazolla				Mar Del Plata	
BRC		Teniente Luis Candelaria	San Carlos de Bariloche	
*/

insert into aeropuerto values
('BUE','Aeroparque Jorge Newbery','CABA'),
('MDQ','Astor Piazolla','Mar Del Plata'),
('BRC','Teniente Luis Candelaria','San Carlos de Bariloche');
/*
Vuelos										
codigo	avion						Aeropuerto origen	Aeropuerto destino 	fecha hora partida	fecha hora llegada	CUIL piloto		
		M.nombre  Modelo
TT1234	Cessna	  Citation	LV-ABC		BUE				BRC					1/5/2018 20:00		1/5/2018 23:45		20-12345678-8		1
Pasajeros:										
	Nombre	apellido	dni							
	Chimbo	Brisa	44444444							
	Chudoba	camila	55555555							
	Cires	Carlos 	66666666							
*/

insert into vuelo_realizado (cod_vuelo,matricula_avion,cod_aeropuerto_origen,cod_aeropuerto_arribo,fecha_hora_partida,fecha_hora_arribo,cuil_piloto,distancia_recorrida)
value('TT1234','LV-ABC','BUE','BRC','2018/5/1 20:00','2018/5/1 23:45','20-12345678-8',1);

insert into listado_de_pasajero values
('TT1234',44444444),('TT1234',55555555),('TT1234',66666666);

-- select nombre, apellido,dni from pasajero where dni = 44444444 or dni = 55555555 or dni = 66666666;
/*
TT3456	Beechcraft	Baron	LV-CDE	BUE	MDQ	2/5/2018 10:00	2/5/2018 12:00	27-78912345-5		2
Pasajeros:										
	Nombre			apellido	dni							
	Cusato	Carlos 	Sebastián	77777777							
	Dominguez		Christian	88888888							
	Escullini		Cristian	99999999							
*/

insert into vuelo_realizado (cod_vuelo,matricula_avion,cod_aeropuerto_origen,cod_aeropuerto_arribo,fecha_hora_partida,fecha_hora_arribo,cuil_piloto,distancia_recorrida)
value('TT3456','LV-CDE','BUE','MDQ','2018/5/2 10:00','2018/5/2 12:00','27-78912345-5',2);

insert into listado_de_pasajero values
('TT3456',77777777),('TT3456',88888888),('TT3456',99999999);

/*
TT1235	Cessna	Citation	LV-ABC	BRC	BUE	2/5/18 7:00:00	2/5/18 10:50:00	20-12345678-8		1
Pasajeros:										
	Nombre	apellido	dni							
	Chimbo	Brisa	44444444							
	Chudoba	camila	55555555	
*/

insert into vuelo_realizado (cod_vuelo,matricula_avion,cod_aeropuerto_origen,cod_aeropuerto_arribo,fecha_hora_partida,fecha_hora_arribo,cuil_piloto,distancia_recorrida)
value('TT1235','LV-ABC','BRC','BUE','2018/5/2 7:00:00','2018/5/2 10:50:00','20-12345678-8',1);

insert into listado_de_pasajero values
('TT1235',44444444),('TT1235',55555555);

/*
TT1256	Fokker	F-27	LV-FGH	BUE	MDQ	2/5/18 8:00:00	2/5/18 10:05:00	27-45678901-1		3
Pasajeros:										
	Nombre	apellido	dni							
	Barragan	Alejo	11111111							
	casas	Andrès Alfredo	22222222							
	Chaves	Barbara	33333333							
*/

insert into vuelo_realizado (cod_vuelo,matricula_avion,cod_aeropuerto_origen,cod_aeropuerto_arribo,fecha_hora_partida,fecha_hora_arribo,cuil_piloto,distancia_recorrida)
value('TT1256','LV-FGH','BUE','MDQ','2018/5/2 8:00:00','2018/5/2 10:05:00','27-45678901-1',3);

insert into listado_de_pasajero values
('TT1256',11111111),('TT1256',22222222),('TT1256',33333333);

/*
TT5632	Cessna	Citation	LV-IJK	MDQ	BUE	3/5/18 7:00	3/5/18 9:15	20-56789123-3		4
Pasajeros:										
	Nombre		apellido			dni							
	Cusato		Carlos Sebastián	77777777							
	Dominguez	Christian			88888888							
	Escullini	Cristian			99999999							
*/


insert into vuelo_realizado (cod_vuelo,matricula_avion,cod_aeropuerto_origen,cod_aeropuerto_arribo,fecha_hora_partida,fecha_hora_arribo,cuil_piloto,distancia_recorrida)
value('TT5632','LV-IJK','MDQ','BUE','2018/5/3 7:00','2018/5/3 9:15','20-56789123-3',4);

insert into listado_de_pasajero values
('TT5632',11111111),('TT5632',22222222),('TT5632',33333333);

/*
TT3333	Beechcraft	King Air	LV-LMN	BUE	BRC	3/5/18 7:00:00	3/5/18 10:50:00	20-12345678-8		5
Pasajeros:										
	Nombre			apellido			dni							
	Cusato 			Carlos Sebastián		77777777							
	Dominguez		Christian				88888888							
	Escullini		Cristian				99999999			
*/

insert into vuelo_realizado (cod_vuelo,matricula_avion,cod_aeropuerto_origen,cod_aeropuerto_arribo,fecha_hora_partida,fecha_hora_arribo,cuil_piloto,distancia_recorrida)
value('TT3333','LV-LMN','BUE','BRC','2018/5/3 7:00:00','2018/5/3 10:50:00','20-12345678-8',5);

insert into listado_de_pasajero values
('TT3333',77777777),('TT3333',88888888),('TT3333',99999999);

/*
TT1257	Fokker	F-27	LV-FGH	BUE	MDQ	4/5/18 8:00:00	4/5/18 10:05:00	27-45678901-1		3
Pasajeros:										
	Nombre	apellido	dni							
	casas	Andrès Alfredo	22222222							
*/

insert into vuelo_realizado (cod_vuelo,matricula_avion,cod_aeropuerto_origen,cod_aeropuerto_arribo,fecha_hora_partida,fecha_hora_arribo,cuil_piloto,distancia_recorrida)
value('TT1257','LV-FGH','BUE','MDQ','2018/5/4 8:00:00','2018/5/4 10:50:00','27-45678901-1',3);

insert into listado_de_pasajero values
('TT1257',22222222);

/*
TT3457	Beechcraft	Baron	LV-CDE	MDQ	BUE	4/5/2018 10:00	4/5/2018 12:00	27-78912345-5		2
Pasajeros:										
	Nombre	apellido	dni							
	Cusato	Carlos Sebastián	77777777							
	Dominguez	Christian	88888888							
	Escullini	Cristian	99999999							
*/

insert into vuelo_realizado (cod_vuelo,matricula_avion,cod_aeropuerto_origen,cod_aeropuerto_arribo,fecha_hora_partida,fecha_hora_arribo,cuil_piloto,distancia_recorrida)
value('TT3457','LV-CDE','MDQ','BUE','2018/5/4 10:00:00','2018/5/4 12:00:00','27-78912345-5',2);

insert into listado_de_pasajero values
('TT3457',77777777),('TT3457',88888888),('TT3457',99999999);

/*
TT5633	Cessna	Citation	LV-IJK	BUE	MDQ	5/5/18 7:00	5/5/18 9:15	20-56789123-3		4
Pasajeros:										
	Nombre	apellido	dni							
	Cusato	Carlos Sebastián	77777777							
	Dominguez	Christian	88888888							
	Escullini	Cristian	99999999	
*/

insert into vuelo_realizado (cod_vuelo,matricula_avion,cod_aeropuerto_origen,cod_aeropuerto_arribo,fecha_hora_partida,fecha_hora_arribo,cuil_piloto,distancia_recorrida)
value('TT5633','LV-IJK','BUE','MDQ','2018/5/5 7:00:00','2018/5/5 9:50:00','20-56789123-3',4);

insert into listado_de_pasajero values
('TT5633',77777777),('TT5633',88888888),('TT5633',99999999);