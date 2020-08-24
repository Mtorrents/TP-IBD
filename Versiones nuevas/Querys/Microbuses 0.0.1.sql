create schema if not exists empresa_minibuses;
-- drop schema

use empresa_minibuses;




create table microbus(
marca  varchar (20) not null,
modelo varchar (20) not null,
patente varchar (20) primary key,
kilometraje int not null
);

create table chofer(
apellido varchar (20) not null,
nombre varchar (20) not null,
cod_domicilio int primary key,
fecha_ingreso_empresa datetime,
nro_licencia int not null,
chofer_cuil int primary key
);

create table pasajeros(
apellido varchar (20) not null,
nombre varchar (20) not null,
cod_domicilio int not null,
foreign key (cod_domicilio) references domicilio(cod_domicilio),
dni int primary key,
cod_tipo_abono int not null,
foreign key (cod_tipo_abono) references tipo_abono(cod_tipo_abono) 
);

create table tipo_abono(
cod_tipo_abono int primary key,
nombre_tipo_abono varchar (20) not null,
descripcion varchar (40)
);

create table domicilio(
cod_domicilio int primary key,
cod_calle int not null,
foreign key (cod_calle) references calle(cod_calle),
numero int not null,
cod_localidad int not null,
foreign key (cod_localidad) references localidad(cod_localidad),
cod_provincia int not null,
foreign key (cod_provincia) references provincia(cod_provincia)
);

create table calle(
cod_calle int primary key,
nombre_calle varchar(40) not null
);

create table localidad(
cod_localidad int primary key,
nombre_localidad varchar(40) not null
);

create table provincia(
cod_provincia int primary key,
nombre_provincia varchar(40) not null
);

create table recorrido_inicial(
cod_recorrido_inicial int primary key,
patente_minibus varchar(20) not null,
foreign key (patente_minibus) references microbus(patente),
recorrido varchar(40) not null,
kilometros_odometro_actual int not null,
chofer_cuil varchar(20) not null,
foreign key (chofer_cuil) references chofer(chofer_cuil),
fecha_hora_salida datetime
);

create table recorrido_final(
cod_recorrido_final int primary key,
hora_finalizacion datetime,
cant_pasajes_vendidos int not null,
kilometros_odometro_final int not null,
descripcion_novedades varchar(100)
);

create table distancia_recorrida(
cod_distancia_recorrida int primary key,
nombre_recorrido varchar(40),
distancia_a_recorrer int not null
);

create table paradas(
cod_paradas int primary key,
cod_interseccion_calle int not null,
foreign key (cod_interseccion_calle) references interseccion_calle(cod_interseccion_calle),
localidad varchar(40)
);

create table interseccion_calle(
cod_interseccion_calle int primary key,
nombre_calle_1 varchar(40),
nombre_calle_2 varchar(40)
);

create table plantilla_caja(
plantilla_de_caja int primary key,
caja_inicial int not null,
cant_boletos_cobrados int not null,
monto_total_cobrado int not null,
caja_final int not null,
gastos_inesperados int not null
);

create table taller(
razon_social varchar(40),
cuit int primary key,
cod_domicilio int not null,
foreign key (cod_domicilio) references domicilio(cod_domicilio)
);

create table tanque(
cod_tanque int primary key,
fecha_carga datetime,
litros_cargados int not null,
monto_carga int not null,
chofer_cuil int not null,
foreign key (chofer_cuil) references chofer(chofer_cuil),
cod_estacion_servicio int not null,
foreign key (cod_estacion_servicio) references estacion_servicio(cod_estacion_servicio)
);

create table estacion_servicio(
cod_estacion_servicio int primary key,
razon_social varchar(40),
cuit int not null,
cod_domicilio int not null -- RAROOOO
);


create table mantenimiento(
cod_mantenimiento int primary key,
fecha datetime,
dominio_movil varchar(10), -- RAROOOO
cuit_taller int not null,
foreign key (cuit_taller) references taller(cuit),
descripcion_servicio varchar(100),
kilometros_odometro int not null, -- RAROOO
monto_pagado int not null -- RAROOO
);

create table salida(
cod_recorrido_inicial int not null,
foreign key (cod_recorrido_inicial) references recorrido_inicial(cod_recorrido_inicial),
cod_recorrido_final int not null,
foreign key (cod_recorrido_final) references recorrido_final(cod_recorrido_final),
cod_distancia_a_recorrer int not null,
foreign key (cod_distancia_a_recorrer) references distancia_recorrida(cod_distancia_recorrida),
cod_paradas int not null,
foreign key (cod_paradas) references paradas(cod_paradas),
cod_plantilla_de_caja int not null,
foreign key (cod_plantilla_de_caja) references plantilla_caja(plantilla_de_caja)
);
