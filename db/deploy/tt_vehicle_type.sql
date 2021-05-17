-- Deploy lab-postgrest-sqitch:tt_vehicle_type to pg
-- requires: appschema

BEGIN;

CREATE TABLE IF NOT EXISTS "public".tt_vehicle_type ( 
    id              char(2) NOT NULL,
    txt_description text NOT NULL,
    CONSTRAINT pk_tt_vehicle_type_id PRIMARY KEY ( id )
);

COMMENT ON TABLE "public".tt_vehicle_type IS 'Master table of types of vehicles, according to the DGT data.';
COMMENT ON COLUMN "public".tt_vehicle_type.id IS 'Type of the vehicle id.';
COMMENT ON COLUMN "public".tt_vehicle_type.txt_description IS 'Description of the type of the vehicle.';

-- DGT data
INSERT INTO "public".tt_vehicle_type ( id, txt_description ) VALUES
 ('- ','SIN ESPECIFICAR')
,('00','CAMION')
,('01','CAMION PLATAFORMA')
,('02','CAMION CAJA')
,('03','CAMION FURGON')
,('04','CAMION BOTELLERO')
,('05','CAMION CISTERNA')
,('06','CAMION JAULA')
,('07','CAMION FRIGORIFICO')
,('08','CAMION TALLER')
,('09','CAMION PARA CANTERA')
,('0A','CAMION PORTAVEHICULOS')
,('0B','CAMION MIXTO')
,('0C','CAMION PORTACONTENEDORES')
,('0D','CAMION BASURERO')
,('0E','CAMION ISOTERMO')
,('0F','CAMION SILO')
,('0G','VEHICULO MIXTO ADAPTABLE')
,('10','CAMION ARTICULADO')
,('11','CAMION ARTIC.PLATAFORMA')
,('12','CAMION ARTICULADO CAJA')
,('13','CAMION ARTICULADO FURGON')
,('14','CAMION ARTICUL.BOTELLERO')
,('15','CAMION ARTICUL.CISTERNA')
,('16','CAMION ARTICULADO JAULA')
,('17','CAMION ARTIC.FRIGORIFICO')
,('18','CAMION ARTICULADO TALLER')
,('19','CAMION ARTI.PARA CANTERA')
,('1A','VEHIC. ARTICUL. VIVIENDA')
,('1C','VEHICL.ARTIC.HORMIGONERA')
,('1D','CAMION BASCULANTE')
,('1E','CAMION GRUA')
,('1F','CAMION CONTRA INCENDIOS')
,('20','FURGONETA')
,('21','FURGONETA MIXTA')
,('22','AMBULANCIA')
,('23','COCHE FUNEBRE')
,('24','CAMIONETA')
,('25','TODO TERRENO')
,('30','AUTOBUS')
,('31','AUTOBUS ARTICULADO')
,('32','AUTOBUS MIXTO')
,('33','BIBLIOBUS')
,('40','TURISMO')
,('50','MOTOCICL.2 RUEDAS S.SID.')
,('51','MOTOCICLETA CON SIDECAR')
,('52','MOTOCARRO')
,('53','AUTOMOVIL DE 3 RUEDAS')
,('54','CUATRICICLO')
,('60','COCHE INVALIDO')
,('70','VEHICULO ESPECIAL')
,('71','PALA CARGADORA')
,('72','PALA EXCAVADORA')
,('74','MOTONIVELADORA')
,('79','QUITANIEVES')
,('7A','VEHICULO VIVIENDA')
,('7B','BARREDORA')
,('7C','HORMIGONERA')
,('7D','VEHICULO BASCULANTE')
,('7E','VEHICULO GRUA')
,('7F','SERVICIO CONTRA INCENDIO')
,('7G','ASPIRADORA DE FANGOS')
,('7I','MAQ.AGRIC.AUTOMOTRIZ')
,('80','TRACTOR')
,('81','TRACTOCAMION')
,('82','TRACTOCARRO')
,('S0','SEMIRREMOLQUE')
,('34','AUTOBUS LABORATORIO')
,('S1','SEMIRREMOLQUE PLATAFORMA')
,('RA','REMOLQUE VIVIENDA O CARAVANA')
,('7J','PALA CARGADORA-RETROEXCAVADORA')
,('73','CARRETILLA ELEVADORA')
,('75','COMPACTADORA')
,('76','APISONADORA')
,('77','GIROGRAVILLADORA')
,('78','MACHACADORA')
,('7H','MOTOCULTOR')
,('90','CICLOMOTOR DE 2 RUEDAS')
,('91','CICLOMOTOR DE 3 RUEDAS')
,('92','CUATRICICLO LIGERO')
,('EX','EXTRANJERO')
,('R0','REMOLQUE')
,('R1','REMOLQUE PLATAFORMA')
,('R2','REMOLQUE CAJA')
,('R3','REMOLQUE FURGÓN')
,('R4','REMOLQUE BOTELLERO')
,('R5','REMOLQUE CISTERNA')
,('R6','REMOLQUE JAULA')
,('R7','REMOLQUE FRIGORIFICO')
,('R8','REMOLQUE TALLER')
,('R9','REMOLQUE PARA CANTERAS')
,('RB','REMOLQUE DE VIAJEROS O DE AUTOBUS')
,('RC','REMOLQUE HORMIGONERA')
,('RD','REMOLQUE VOLQUETE DE CANTERA')
,('RE','REMOLQUE DE GRUA')
,('RF','REMOLQUE CONTRA INCENDIOS')
,('RH','MAQ.AGRICOLA ARRASTRADA DE 2 EJES')
,('S2','SEMIRREMOLQUE CAJA')
,('S3','SEMIRREMOLQUE FURGON')
,('S4','SEMIRREMOLQUE BOTELLERO')
,('S5','SEMIRREMOLQUE CISTERNA')
,('S6','SEMIRREMOLQUE JAULA')
,('S7','SEMIRREMOLQUE FRIGORIFICO')
,('S8','SEMIRREMOLQUE TALLER')
,('S9','SEMIRREMOLQUE CANTERA')
,('SA','SEMIRREMOLQUE VIVIENDA O CARAVANA')
,('SB','SEMIRREMOLQUE VIAJEROS O AUTOBUS')
,('SC','SEMIRREMOLQUE HORMIGONERA')
,('SD','SEMIRREMOLQUE VOLQUETE DE CANTERA')
,('SE','SEMIRREMOLQUE GRUA')
,('SF','SEMIRREMOLQUE CONTRA INCENDIOS')
,('SH','MAQ.AGRICOLA ARRASTRADA DE 1 EJE')
,('7K','TREN HASTA 160 PLAZAS')
,('35','AUTOBUS TALLER')
,('36','AUTOBUS SANITARIO');

COMMIT;