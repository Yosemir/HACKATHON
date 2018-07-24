create database SisTransporte
go

use SisTransporte
go

CREATE TABLE Cliente (
    diBoleta int identity(1,1),
    nomClien varchar(100),
    apeClien varchar(100),
    tipoDoc varchar(1),
    docClien varchar(9),
    nroBoleta varchar(7),
    ruc varchar(11),
    fechaReserva date,
    fechaDeViaje date,
    horaViaje time,
    fechaPosterga date,
    horViajePorster time,
    tipoServicio char(1),
    nroAsientos int,
    Cantidad int,
    CONSTRAINT Cliente_pk PRIMARY KEY  (diBoleta)
);
go
-- Table: DetBoleta
CREATE TABLE DetBoleta (
    idDetalle int identity(1,1),
    Cliente_diBoleta int,
    Personal_idcperso int,
    CONSTRAINT DetBoleta_pk PRIMARY KEY  (idDetalle)
);
go
-- Table: Personal
create TABLE Personal (
    idcperso int identity(1,1),
    nomPerso varchar(100),
    apeperso varchar(100),
    tipoDoc varchar(3),
    dniperso varchar(9),
    nroCelularperso varchar(9),
    direcPerso varchar(100),
    tipoPerson int,
	estPersona char(1),
    buses_idbuses int,
    CONSTRAINT Personal_pk PRIMARY KEY  (idcperso)
);
go
-- Table: buses
CREATE TABLE buses (
    idbuses int identity(1,1),
    nroPlaca varchar(12),
    modeloBuses varchar(30),
    marcaBuses varchar(30),
    estBuses char(1),
    rutas_idrutas int,
    CONSTRAINT buses_pk PRIMARY KEY  (idbuses)
);
go
-- Table: rutas
CREATE TABLE rutas (
    idrutas int identity(1,1),
    nomRutas varchar(30),
    sucursales_idSuscur int,
    CONSTRAINT rutas_pk PRIMARY KEY  (idrutas)
);
go
-- Table: sucursales
CREATE TABLE sucursales (
    idSuscur int identity(1,1),
    nomSucur varchar(30),
    CONSTRAINT sucursales_pk PRIMARY KEY  (idSuscur)
);
go
-- foreign keys
-- Reference: DetBoleta_Cliente (table: DetBoleta)
ALTER TABLE DetBoleta ADD CONSTRAINT DetBoleta_Cliente
    FOREIGN KEY (Cliente_diBoleta)
    REFERENCES Cliente (diBoleta);

-- Reference: DetBoleta_Personal (table: DetBoleta)
ALTER TABLE DetBoleta ADD CONSTRAINT DetBoleta_Personal
    FOREIGN KEY (Personal_idcperso)
    REFERENCES Personal (idcperso);

-- Reference: buses_rutas (table: buses)
ALTER TABLE buses ADD CONSTRAINT buses_rutas
    FOREIGN KEY (rutas_idrutas)
    REFERENCES rutas (idrutas);

-- Reference: chofer_buses (table: Personal)
ALTER TABLE Personal ADD CONSTRAINT chofer_buses
    FOREIGN KEY (buses_idbuses)
    REFERENCES buses (idbuses);

-- Reference: rutas_sucursales (table: rutas)
ALTER TABLE rutas ADD CONSTRAINT rutas_sucursales
    FOREIGN KEY (sucursales_idSuscur)
    REFERENCES sucursales (idSuscur);

select * from sucursales
	insert into sucursales(nomSucur) values('Lima');
	insert into sucursales(nomSucur) values('Cañete');
	insert into sucursales(nomSucur) values('Chincha');
	insert into sucursales(nomSucur) values('Pisco');
	insert into sucursales(nomSucur) values('Ica');


	select * from rutas
	INSERT INTO rutas(nomRutas,sucursales_idSuscur) values ('Lima-Pisco','4')
	INSERT INTO rutas(nomRutas,sucursales_idSuscur) values ('Lima-Cañete','2')
	INSERT INTO rutas(nomRutas,sucursales_idSuscur) values ('Chincha-Pisco','4')
	INSERT INTO rutas(nomRutas,sucursales_idSuscur) values ('Ica-Cañete','2')
	INSERT INTO rutas(nomRutas,sucursales_idSuscur) values ('Ica-Lima','1')
	INSERT INTO rutas(nomRutas,sucursales_idSuscur) values ('Chincha-Lima','1')

	select * from buses
	INSERT INTO buses(nroPlaca,modeloBuses,marcaBuses,estBuses,rutas_idrutas) values ('AJSK1234','154SAFF','NEW','A','3')
	INSERT INTO buses(nroPlaca,modeloBuses,marcaBuses,estBuses,rutas_idrutas) values ('QWRQA123','141A123','NEW','A','2')
	INSERT INTO buses(nroPlaca,modeloBuses,marcaBuses,estBuses,rutas_idrutas) values ('QWRQAA12','15AS21A','NEW','A','1')
	INSERT INTO buses(nroPlaca,modeloBuses,marcaBuses,estBuses,rutas_idrutas) values ('ASFAWRQ1','5682144','NEW','A','4')
	INSERT INTO buses(nroPlaca,modeloBuses,marcaBuses,estBuses,rutas_idrutas) values ('GREWW132','3QWSS15','NEW','A','1')
	INSERT INTO buses(nroPlaca,modeloBuses,marcaBuses,estBuses,rutas_idrutas) values ('LWPROQ1W','LSPROQ1','NEW','I','')


	SELECT * FROM Personal 
	INSERT INTO Personal(nomPerso,apeperso,tipoDoc,dniperso,nroCelularperso,direcPerso,tipoPerson,estPersona)VALUES('YOSEMIR','LERMO','DNI','36525484','956826598','Cañete','C','A');
	INSERT INTO Personal(nomPerso,apeperso,tipoDoc,dniperso,nroCelularperso,direcPerso,tipoPerson,estPersona)VALUES('CARLOS','ANCAJIMAN','DNI','3652154','956826598','Lima','V','A');
	INSERT INTO Personal(nomPerso,apeperso,tipoDoc,dniperso,nroCelularperso,direcPerso,tipoPerson,estPersona)VALUES('IVAN','LUNA','DNI','6523584','956826598','Chincha','C','A');
	INSERT INTO Personal(nomPerso,apeperso,tipoDoc,dniperso,nroCelularperso,direcPerso,tipoPerson,estPersona)VALUES('JESUS','CASTILLA','CEX','32659845','956826598','Yauyos','C','A');
	INSERT INTO Personal(nomPerso,apeperso,tipoDoc,dniperso,nroCelularperso,direcPerso,tipoPerson,estPersona)VALUES('JOSE','QUISPE','CEX','12358479','956826598','Lima','','A');
	INSERT INTO Personal(nomPerso,apeperso,tipoDoc,dniperso,nroCelularperso,direcPerso,tipoPerson,estPersona)VALUES('EDUARDO','CAMAÑA','DNI','32658945','956826598','Cañete','','I');


	select * from Cliente
insert into Cliente(nomClien,apeClien,tipoDoc,docClien,nroBoleta,fechaReserva,fechaDeViaje,tipoServicio,nroAsientos,Cantidad)
values
('Yosemir','Lermo','DNI','365269','1','10/01/2018','11/01/2018','V','21','2')


