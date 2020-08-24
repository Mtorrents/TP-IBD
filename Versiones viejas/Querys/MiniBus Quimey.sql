drop schema empresa_minibuses;

create schema if not exists empresa_minibuses;

use empresa_minibuses;

-- //////////////////////////////////////////////////////////////////////////////////////////

create table domicilio (
	id_domicilio				int primary key,
    id_calle 					int references calle(id_calle),
    numero						int not null,
    id_localidad 				int references localidad(id_localidad),
    id_provincia 				int references provincia(id_provincia)
);

create table localidad (
	id_localidad				int primary key,
    nombre						varchar(35) not null
);

create table provincia (
	id_provincia				int primary key,
    nombre						varchar(35) not null
);

create table calle(
	id_calle					int primary key,
    nombre						varchar(35) not null
);

-- //////////////////////////////////////////////////////////////////////////////////////////

create table microbus(
	id_marca  					varchar (45) references marca(id_marca),
	id_modelo 					varchar (45) references modelo(id_modelo),
	patente 					varchar (20) primary key,
	kilometraje 				int not null
);

create table marca(
	id_marca 					int primary key,
    nombre_marca 				varchar(45) not null
);

create table modelo(
	id_modelo 					int primary key,
    nombre_modelo 				varchar(45) not null
);


-- //////////////////////////////////////////////////////////////////////////////////////////

create table recorrido(
	id_recorrido 				int primary key,
    nombre_recorrido 			varchar(45) not null
);


-- //////////////////////////////////////////////////////////////////////////////////////////

create table distancia_recorrida(
	id_distancia_recorrida 		int primary key,
    nombre_de_recorrido			varchar(45) not null,
    distacia_a_recorrer_KM		varchar(45) not null
);


-- //////////////////////////////////////////////////////////////////////////////////////////

create table lista_de_pasajero_x_recorrido(
	id_recorrido 				int references recorrido(id_recorrido),
    dni_pasajero                int references pasajeros(dni),
    id_paradas					int references paradas(id_paradas),
	PRIMARY KEY (id_recorrido,dni_pasajero)
);


-- ////////////////////////////////////////////////////////////////////////////////////////// 

create table paradas(
	id_paradas					int primary key,
	id_calle_1					int  references calle(id_calle),
    id_calle_2 					int  references calle(id_calle),
	id_localidad 				int  references localidad(id_localidad)
);

create table paradas_x_recorrido( 
	id_recorrido				int references recorrido(id_recorrido),
    id_parada 					int	references paradas(id_paradas),
	order_de_paradas			int not null,
    PRIMARY KEY (id_recorrido,id_parada)
);


-- //////////////////////////////////////////////////////////////////////////////////////////

create table pasajero(
	dni int primary key,
    nombre varchar(45) not null,
    apellido varchar(45) not null,
    id_tipo_abono int references tipo_abono(id_tipo_abono),
    id_domicilio int references domicilio(id_domicilio)
);
-- //////////////////////////////////////////////////////////////////////////////////////////

create table tipo_abono(
	id_tipo_abono int primary key,
    nombre varchar(45) not null,
    descripcion varchar(45) not null,
    id_domicilio int references domicilio(id_domicilio)
);


-- //////////////////////////////////////////////////////////////////////////////////////////

create table plantilla_caja(
	plantilla_de_caja 			int primary key,
	caja_inicial 				int not null,
	cant_boletos_cobrados 		int not null,
	monto_total_cobrado 		int not null,
	caja_final 					int not null,
	gastos_inesperados 			int not null
);

-- ////////////////////////////////////////////////////////////////////////////////////////// 
create table chofer(
	chofer_cuil 				varchar(30) primary key,
	apellido 					varchar (20) not null,
	nombre 						varchar (20) not null,
	id_domicilio 				int references domicilio(id_domicilio),
	fecha_ingreso_empresa 		datetime not null,
	nro_licencia 				varchar(30) not null
);

-- //////////////////////////////////////////////////////////////////////////////////////////

create table salida(
	patente_minibus				varchar(20) references minibus(patente),
    Fecha_hora_salida			DATETIME not null,
	id_recorrido 				int references recorrido(id_recorrido),
	id_distancia_a_recorrer 	int references distancia_recorrida(id_distancia_recorrida),
	id_plantilla_de_caja 		int references plantilla_caja(id_plantilla_de_caja),
    kilometros_odometro_actual  int not null,
    chofer_cuil					varchar(20) references chofer(chofer_cuil),
    hora_de_finalizacion		time default 0,
    cant_pasajes_vendidos		int default 0,
    descripcion_de_novedades	varchar(100) default 'Recorrido normal sin problemas',
    Kilometros_odometro_final   int default 0,
    PRIMARY KEY (patente_minibus,Fecha_hora_salida)
);


-- //////////////////////////////////////////////////////////////////////////////////////////

create table taller(
	cuit 						int primary key,
	razon_social				varchar(40) not null,
	id_domicilio 				int references domicilio(id_domicilio)
);

-- //////////////////////////////////////////////////////////////////////////////////////////

create table estacion_servicio(
	cuit_estacion 				int primary key,
	id_domicilio 				int references domicilio(id_domicilio),
    razon_social 				varchar(40) not null
);

-- //////////////////////////////////////////////////////////////////////////////////////////

create table tanque(
	cod_tanque 					int primary key,
	fecha_carga 				datetime not null,
	litros_cargados				int not null,
	monto_carga 				int not null,
	chofer_cuil 				int not null references chofer(chofer_cuil),
	cuit_estacion 				int references estacion_servicio(cuit_estacion)
);

-- //////////////////////////////////////////////////////////////////////////////////////////

create table mantenimiento(
	id_mantenimiento 			int primary key,
	fecha 						datetime not null,
	id_dominio_movil			int references domicilio(id_domicilio),
	cuit_taller 				int not null references taller(cuit),
	descripcion_servicio 		varchar(100) default 'limpieza',
	kilometros_odometro 		int not null,
	monto_pagado 				int not null
);

-- //////////////////////////////////////////////////////////////////////////////////////////
