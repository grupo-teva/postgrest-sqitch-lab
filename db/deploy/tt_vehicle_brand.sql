-- Deploy lab-postgrest-sqitch:tt_vehicle_brand to pg
-- requires: appschema

BEGIN;

CREATE TABLE IF NOT EXISTS "public".tt_vehicle_brand ( 
    id          smallserial NOT NULL,
    id_dgt      char(5),
    txt_name    text NOT NULL,
    CONSTRAINT pk_tt_vehicle_brand_id PRIMARY KEY ( id )
);

CREATE INDEX IF NOT EXISTS ind_tt_vehicle_brand_id_dgt ON "public".tt_vehicle_brand ( id_dgt );

COMMENT ON TABLE "public".tt_vehicle_brand IS 'Master table of brands of vehicles, according to the DGT data.';
COMMENT ON COLUMN "public".tt_vehicle_brand.id IS 'Brand id.';
COMMENT ON COLUMN "public".tt_vehicle_brand.id_dgt IS 'DGT brand internal code.';
COMMENT ON COLUMN "public".tt_vehicle_brand.txt_name IS 'Name of the brand.';

-- DGT data
INSERT INTO "public".tt_vehicle_brand ( id_dgt, txt_name ) VALUES
 ('24562','CARROCERIAS CARRAÑACA')
,('06470','MVAUGUSTA')
,('06345','K-55')
,('00028','AERO')
,('00086','A.M.S.')
,('00073','ALVIS')
,('00210','BEDFORD')
,('07016','BMW I')
,('04946','MOTOR HISPANIA')
,('02460','NEW HOLLAND')
,('02581','SEAT FIAT')
,('01612','ROYAL ENFIELD')
,('07160','TSD')
,('27162','GRUAU IBERICA')
,('04932','FACTORY')
,('31257','MITT')
,('10660','DINALPIN-RENAULT')
,('11802','REGA')
,('12100','MICRO COMPACT CAR SMART')
,('15140','TALLERES JOFRAUTO')
,('21103','CARROCERAS VIC')
,('29982','CITROËN')
,('34382','HITRAVI')
,('34982','SILENCE')
,('01984','VESPA')
,('04194','LEXUS')
,('06937','KINGLONG')
,('03188','LAND')
,('00573','EBRO')
,('06406','SKYTEAM')
,('04936','MOTOGAC')
,('19380','GUZZI-HISPANIA')
,('06564','JONWAYITALIA')
,('04928','ARCTICCAT')
,('05593','ZEROMOTORCYCLES')
,('06362','VDLBUS')
,('04416','SALVADORCAETANO')
,('04973','MANATICMOTORS')
,('02963','IBERICA')
,('01118','LIEBHERR')
,('06438','SUMOMOTOR')
,('29062','LAND ROVER')
,('03825','TEC')
,('33103','NIU')
,('03073','KRONE')
,('02081','ZUNDAPP')
,('03796','TTURO')
,('06749','POLINIMOTORI')
,('06938','TMRACING')
,('06640','KMZ')
,('31322','AUTOCARAVANASRIMORSPA')
,('01208','MARTIN')
,('03046','INTERCONSULT')
,('04604','FIATHITACHI')
,('01186','MANITOU')
,('24782','TEMA')
,('06301','JIMECA')
,('06926','TECNOVE SECURITY')
,('01759','S.M.')
,('04340','FORD TRANSIT')
,('05913','DAIMLER AG')
,('05900','CARROCERIACICA')
,('29782','AGUINAGA')
,('31934','CARROCERIASCITY')
,('05853','CARROZADOSTECAI')
,('01252','MERCEDES')
,('06853','BURSTNER GMBH')
,('29882','ASTIKAR')
,('05238','ROLLER TEAM')
,('05452','SUN LIVING')
,('13562','THERMOEUROP')
,('06805','INCAMAN')
,('32382','ADRIAMOBIL')
,('17320','HERCOV')
,('06764','FORD/CHALLENGER')
,('05788','MCLAREN')
,('19560','GARCIABLAZQUEZMORENO')
,('27902','CARROCERIASJANKAR')
,('04309','YAGUE')
,('00974','JAGUAR')
,('03670','IVECO')
,('18040','VOLKSWAGEN V W')
,('13727','CARROCERIAS SANCA')
,('01551','RENAULT')
,('12281','LAIKA CARAVANS SPA')
,('11160','MASH')
,('13340','TAGASA')
,('13560','SUBIELA')
,('13461','FORD CNG TECHNIK')
,('13641','PROTEC FIRE')
,('14442','GALO HEREDIA')
,('14461','IGLUVAN')
,('14840','CARROCEROS DE BURGOS')
,('14921','CAYBA')
,('14942','AUTOBALERMA')
,('19200','FUSO')
,('19780','SCOMADI')
,('15760','LAND ROVER SANTANA')
,('15321','TECNOVE UMTV')
,('15520','FIAT AUTO SPA')
,('24422','ORCAL')
,('25502','KSR MOTO')
,('29323','KSR MOTO AUSTRIA')
,('29262','TUK TUK FACTORY')
,('29322','BRIXTON')
,('05872','AUSTIN ROVER')
,('29962','LECAPITAINE INDUSTRIE')
,('33602','CARROCERIAS CITY')
,('21542','IVECO BUS')
,('25062','IVECO DAILY')
,('24242','JAGUAR CARS LTD')
,('13561','SCANIA CVAB')
,('06866','JOMAN')
,('06996','TECNOVEFIBERGLASS')
,('05153','KASEA')
,('06572','GIOTTLINE')
,('29444','NOBELART')
,('06912','ESCARDA')
,('20983','TESLA MOTORS')
,('04859','SOMMER')
,('06992','LUISGARCIA')
,('01476','PEUGEOT')
,('00678','FIAT')
,('01428','OPEL')
,('01761','SMART')
,('01291','MITSUBISHI')
,('04117','SSANGYONG')
,('02011','VOLVO')
,('06244','INFINITI')
,('00388','CITROEN')
,('01382','NISSAN')
,('02749','DACIA')
,('00143','AUDI')
,('01253','MERCEDES-BENZ')
,('00704','FORD')
,('01608','ROVER')
,('06929','DOGMA')
,('01755','SKODA')
,('01885','TOYOTA')
,('01235','MAZDA')
,('02555','HYUNDAI')
,('00886','HONDA')
,('01880','TORROT')
,('02512','B.M. VOLVO VIKING')
,('01746','SIMCA')
,('02061','YAMAHA')
,('01914','TRIUMPH')
,('00956','IRIZAR')
,('01814','SUBARU')
,('01029','KAWASAKI')
,('01504','PORSCHE')
,('06196','IRISBUS')
,('03862','DAELIM')
,('04478','KIA')
,('01827','SUZUKI')
,('00378','CHRYSLER')
,('03797','PIAGGIO')
,('00542','DODGE')
,('04439','TATA')
,('04745','KYMCO')
,('00147','AUSTIN-HEALEY')
,('01058','KTM')
,('01081','LANCIA')
,('05160','ELNAGH')
,('03974','GAS-GAS')
,('00965','ISUZU')
,('00215','BENELLI')
,('01629','SAAB')
,('19260','KIA MOTOR (ROK)')
,('01181','MAN')
,('04693','QUATTRO')
,('06409','KEEWAY')
,('02692','SCANIA')
,('04428','FOIMA')
,('04198','MINI')
,('00470','DAF')
,('01077','LAMBRETTA')
,('01211','MASERATI')
,('00501','DERBI')
,('05745','TRANSPOL')
,('01085','LANDROVER')
,('03919','MAHINDRA')
,('03863','APRILIA')
,('00829','GUZZI')
,('04812','HYOSUNG')
,('05917','RODRIGUEZLOPEZAUTO')
,('00301','BUICK')
,('00947','INNOCENTI')
,('01152','LOTUS')
,('05622','TESLA')
,('03673','RANGEROVER')
,('00764','GILERA')
,('00777','GMC')
,('05275','LML')
,('06316','JINLUN')
,('06949','HANWAY')
,('03954','LECITRAILER')
,('04448','SUNSUNDEGUI')
,('00990','J.C.B.')
,('05848','RIDE')
,('00908','HUSQVARNA')
,('00220','BENTLEY')
,('02744','SCATTOLINI')
,('00170','AVIA')
,('06689','HUATIAN')
,('05419','CASTROSUA')
,('04984','BOMBARDIER')
,('01469','PEGASO')
,('00303','BULTACO')
,('02549','LADA')
,('01321','MORRIS')
,('01310','MONTESA')
,('02026','WARTBURG')
,('00986','JAWA')
,('01440','OSSA')
,('00743','GARELLI')
,('01102','LAVERDA')
,('00473','DAIHATSU')
,('01969','VAUXHALL')
,('05780','QUADRO')
,('01737','SIATA')
,('02141','BENIMAR')
,('02558','MALAGUTI')
,('05870','WOTTAN')
,('00311','CADILLAC')
,('05851','SERVICAR')
,('06625','AIYUMO')
,('01680','SAVA')
,('01514','PUCH')
,('01662','SANGLAS')
,('06748','KENROD')
,('06325','QINGQI')
,('00196','BARREIROS')
,('00151','AUTOBIANCHI')
,('06675','CAPRON')
,('03172','BETA')
,('04038','ACURA')
,('01565','RIEJU')
,('00670','FERRARI')
,('05907','TATAHISPANO')
,('04056','DAEWOO')
,('00556','DUCATI')
,('02480','TALBOTSIMCA')
,('01667','SANTANA')
,('06957','ERIDER,VESPINO')
,('04958','VESPINO')
,('06472','MONKEYBIKES')
,('06941','JAGUARLANDROVERLIMIT')
,('05206','TECNOBUSS.P.A.')
,('00995','JEEP-VIASA')
,('01726','SETRA')
,('02112','EBROSIATA50S')
,('05918','COINPOL')
,('01304','MONCAYO')
,('03799','FSO')
,('05674','SANYOU')
,('05219','ROSENBAUER')
,('02559','CAGIVA')
,('00481','DATSUN')
,('02148','DAF-HERMANNS')
,('04413','RIMOR')
,('01393','NORTON')
,('03276','ADRIA')
,('01502','PONTIAC')
,('02561','SWM')
,('04779','BUELL')
,('05991','SCUTUM')
,('01494','PLYMOUTH')
,('01305','MONDIAL')
,('06614','ZNEN')
,('05572','TAZZARI')
,('06603','XINGYUE')
,('06629','MINELLI')
,('05128','TGB')
,('06571','JIAXIN')
,('06208','SUMCO')
,('02086','ARO')
,('06270','LIFAN')
,('01413','OLDSMOBILE')
,('01886','TRABANT')
,('01320','MORINI')
,('01047','KOMATSU')
,('01125','LINCOLN')
,('04068','MBK')
,('06725','LEONART')
,('04890','LIGIER')
,('10780','TALLERES PRAT RUSIÑOL')
,('00145','A.U.S.A.')
,('05979','LECAPITAINE')
,('11060','GORBEA')
,('11080','DEL VALLE')
,('04175','ENCABO')
,('06850','SEMICARFRANSL')
,('06903','CAYVOL')
,('01226','MATRA')
,('02071','ZASTAVA')
,('11181','ZNYHUG')
,('01964','VANHOOL')
,('11281','ARB ARBUCIES')
,('00507','DETHLEFFS')
,('05943','RIYA')
,('03962','BERTONE')
,('01292','MITSUBISHIFUSO')
,('06844','UM')
,('05146','GOUPIL')
,('11301','FAVELIM')
,('01710','SEATSIATA')
,('01985','VESPACAR')
,('02048','WILLYS')
,('11540','TNT MOTOR')
,('11560','JUAN FERIA')
,('00574','EBROSIATA')
,('06650','KANDI')
,('11580','CARSUR CARROZADOS SL')
,('11721','JULEN')
,('15240','SIGLER')
,('11844','PLA')
,('11921','REVOLSA')
,('11960','PONIENTE')
,('12141','CARROCERIAS FRIGORIFICA')
,('12221','FRANCAL')
,('12761','BAYCAR')
,('12862','HUPPER')
,('12880','CARROCERIAS MINDA')
,('13201','BENITEZ GIVICA')
,('13220','MYCSA')
,('13232','CAMPIÑA')
,('13321','AEBI-SCHMIDT')
,('13322','CARROSSERIES TOLOSA')
,('13421','TECNOCARSA SLL')
,('13440','PRONATC')
,('13441','SARTRUCK')
,('13462','LA JUNQUERA')
,('13501','FURCAR')
,('13540','TERRADAS')
,('13564','CACESA')
,('13642','GEESINKNORBA')
,('13645','COMPOSITES REFORZADOS')
,('13680','ALFOZ')
,('13781','FEGAMAR')
,('13822','TALLERES AGUILAR')
,('13823','UNIBUS')
,('13942','PEYCAR')
,('13961','CARROCERIAS HNOS VIEL')
,('14020','MOTRAC')
,('14140','CARROCERIAS JAZ')
,('14221','BESER Y ALTAVA')
,('14222','MEBAUTO')
,('14280','VALLOR')
,('14521','VEMASUR')
,('14560','ROBLES')
,('14661','VOLQUETES DEL SUR')
,('14760','CARROCERIAS DAFER')
,('14761','EQUIPDRAULIC')
,('14763','OLGAN')
,('14801','FARID INDUSTRIE')
,('14821','3 CARROCEROS')
,('15081','INCASE')
,('15180','CUBY')
,('15300','ERJOMA')
,('15340','ASTIZ')
,('15401','FRIGOASTUR')
,('15460','CARROCERIAS SEVILLA')
,('15680','REMAOP')
,('15780','ROTOMAR')
,('15840','VLOCON')
,('15880','PANNONIA')
,('16180','VALSAT')
,('16241','TAMBRE')
,('16520','COLD CAR')
,('16521','VECTIA')
,('16620','SORTIMO')
,('16760','CIBAD')
,('17040','CARROCERIAS OURENSE')
,('17120','CHT')
,('17340','ALIGRUAS')
,('17380','EGA')
,('17780','CARROCERIAS CONRADO')
,('17820','FERROSITE')
,('17920','CARROCERIAS REY')
,('17960','CRASTIR')
,('18000','IBERICA DE ISOTERMIZ')
,('18240','CICA')
,('18641','TRIPOD')
,('18660','CAR RAFAEL MIRALLES')
,('18780','CARROCERIAS SIGLER')
,('19240','TRAPISER')
,('19280','ITT BOX SOLUTIONS')
,('19340','DIAZCUTILLAS')
,('19500','I.I.C.')
,('19680','TECME')
,('19760','NOROESTE')
,('19801','DS')
,('20000','FRUMECAR')
,('20080','VOLQUE Y CARROC GALICIA')
,('20201','AUTO RIBEIRO')
,('20322','DIVOLCA')
,('20324','CARROCERIAS CORRAL')
,('20325','VOLQUETES Y CAR GALICIA')
,('20421','MOTO SPA')
,('20502','CARROCERIAS JEREZ')
,('20642','TRUCK DEAL')
,('20661','MEDITERRANEO VOLQUETES')
,('20882','TECNOCARROCERA')
,('12340','CAPRON GMBH')
,('14041','ERIBA-HYMER')
,('21042','INDIAN MOTORCYCLE')
,('21602','TALLERES ORDIALES')
,('21662','ANCOA')
,('21722','SUCARRATS')
,('21902','KIVI SRL')
,('22003','CAJISA')
,('22122','GALPE')
,('22342','YUTONG')
,('22402','ILUSION')
,('05127','TELCO')
,('22982','CARR IND Y FRIGORIFICAS')
,('23042','THERMOBUS')
,('23422','VICTOR HERNANDEZ')
,('23482','ESCALANTE')
,('23863','SCORA')
,('24003','TALLERES MAGO')
,('24262','VERTIGO MOTORS')
,('28162','CARROCERIAS SANCA SA')
,('24642','TALLERES GAMEZ SANCHEZ')
,('24662','BUS-PRESTIGE')
,('24842','TRS')
,('25063','ITS SYSTEM')
,('25182','TEMSA')
,('25242','BLUCAMP')
,('25262','TMMA')
,('25362','HENALES')
,('26042','SALEO-KRANE')
,('26162','CONGRUAL')
,('26462','CARSUR')
,('26582','RYT')
,('26782','DERCONSA')
,('26822','MANUEL ZUÑIGA MARTINEZ')
,('28222','HUDSON BOSS')
,('28362','CENTO BUS')
,('28542','TOTH ES FIAI')
,('28702','MONCAR EUROPA')
,('29182','PALVI')
,('29582','RECAPOL')
,('29762','CARROCERIAS FRIGOASTUR')
,('30822','PALFINGER')
,('31382','HONLING')
,('31684','ASKOLL')
,('31762','ERDUMAN')
,('31882','FISKER')
,('32142','TIANDA')
,('32622','FRAMIREZ')
,('33422','RTF')
,('34182','MAXUS')
,('34622','VEAP')
,('36014','VACA LIMOUSINES')
,('28942','VICTORY MOTORCYCLES DIV')
,('04362','ABLBOCKMANN')
,('04356','MOBILVETTA')
,('22682','VICTORY MOTOR DIVISION')
,('06013','MCLOUIS')
,('30554','SILENCE')
,('06648','GENERIC')
,('06981','DFSK')
,('05562','VICTORY')
,('05600','GOVECS')
,('04384','HYMER')
,('05701','ITINEO')
,('04039','PGO')
,('05516','INDCAR')
,('04105','POLARIS')
,('06348','PIONEER')
,('04867','SANYANG')
,('05466','UNVI')
,('06165','HUMMER')
,('01076','LAMBORGHINI')
,('02161','KNAUS')
,('03041','ENFIELD')
,('02908','HERRERO')
,('01935','U.M.M.')
,('05177','COMARTH')
,('31883','AUTOMOBILILAMBORGHINI')
,('06865','GOINGGREENSL')
,('04601','KWANG-YANG')
,('03809','TECNOVE')
,('04394','LEYLANDDAF')
,('02085','ALPINA')
,('06651','MX')
,('02899','MOSKVICH')
,('01319','MORGAN')
,('06054','LDV')
,('06601','ZEALSUN')
,('06902','DAIMLERBENZ')
,('00258','BMC')
,('06239','MOBILVETTADESINGSPA')
,('04829','SIAMOTO')
,('03950','RAVO')
,('02129','FRUAPORSCHE')
,('01801','STEYR-PUCH')
,('03798','NEOPLAN')
,('06950','ERIDERPDT')
,('03178','FREIGHTROVER')
,('06737','FORD/HYMER')
,('30942','JAGUAR LAND ROVER')
,('31703','JAGUAR LAND ROVER LTD')
,('05558','AUTOCARAVANS RIMOR')
,('14201','RENAULT TECH')
,('15640','RENAULT TRUCKS')
,('02009','VOLKSWAGEN')
,('04390','IVECO PEGASO')
,('06065','GALLOPER')
,('25842','HYUNDAI MOTOR')
,('00261','BMW')
,('00374','CHEVROLET')
,('05635','MERCEDES-AMG')
,('01709','SEAT')
,('04917','DAIMLERCHRYSLER')
,('01838','TALBOT')
,('04868','MICROCOMPACTCAR')
,('18260','CHRYSLER LLC DODGE')
,('02339','JEEP')
,('00146','AUSTIN')
,('02036','WESTFALIA')
,('05819','CARROCERACASTROSUASA')
,('04939','S.Y.M')
,('03961','AYATS')
,('06593','YIBEN')
,('06919','JIMINI')
,('03795','ZAMARBU')
,('01236','M.B.')
,('03782','BURSTNER')
,('04412','REWACO')
,('00474','DAIMLER')
,('05033','HYOUNG')
,('06785','VECTRIX')
,('01110','LECIÑENA')
,('04076','SAMRO')
,('06546','BRP')
,('02286','ALFA')
,('04771','FERMEC')
,('02164','MONTENEGRO')
,('01802','STILL')
,('05790','ERKE')
,('05720','INTEGRALIA')
,('05340','VIKERS')
,('01266','M.G.')
,('00539','D.K.W.')
,('04372','COVALCA')
,('02562','URAL')
,('01775','SORIANO')
,('22942','DREAMER')
,('06976','JEANJE')
,('05676','BREDAMENARINIBUS')
,('06078','KL')
,('04945','G.A.C.')
,('17360','SCION')
,('05896','TRIGANOVDL')
,('00221','BENZ')
,('06932','ROMU')
,('04933','HM')
,('06266','CHALLENGER')
,('01115','LEYLAND')
,('00162','AUTO-UNION')
,('01396','N.S.U.')
,('00641','FANTICMOTOR')
,('06833','SHENKE')
,('06243','FACTORYBIKE')
,('05935','INDUSAUTO')
,('06743','BOMBARDIERRECPRODINC')
,('04007','HUSABERG')
,('36210','AVEURO')
,('06588','WANGYE')
,('03816','TRUEBA')
,('00921','I.F.A.')
,('05539','NOGE')
,('01352','M.Z.')
,('01533','RANGER')
,('05883','SPY')
,('05396','BOWLER')
,('01162','MACK')
,('01811','STUDEBAKER')
,('01073','L.A.I.')
,('03239','MAZ')
,('01370','NAZAR')
,('06052','AEON')
,('06536','TMRACINGSPA')
,('02116','READTITAN')
,('06708','MDL')
,('06673','SKYGO')
,('01576','ROA')
,('06672','MVAGUSTA')
,('02114','JAPAUTO')
,('06425','GOES')
,('06516','KINROAD')
,('06479','FAZTEK')
,('00131','ASTRA')
,('06754','JONWAY')
,('06281','LONCIN')
,('00751','GAZ')
,('05737','SCHMITZCARGOBULL')
,('06154','LINHAI')
,('06680','MTR')
,('06510','HAMMEL')
,('05007','JINCHENG')
,('06927','EQUIPFRED')
,('06612','HSUN')
,('06306','CSR')
,('02697','MOTOBI')
,('02124','ITALJET')
,('01445','PACKARD')
,('04901','SHERCO')
,('01070','LAGONDA')
,('01325','MOTOBIC')
,('06424','YIYING')
,('06702','HAWAI')
,('05207','SAMADA')
,('06507','LEDOW')
,('06475','DORTON')
,('00987','J.B.')
,('04715','NOOTEBOOM')
,('04665','ACM')
,('23403','ZONTES')
,('05645','V-MOTO/E-MAX')
,('00788','GOMEZ')
,('15940','PERIANES')
,('05494','OTOKAR')
,('00802','GRAU')
,('06647','FUXIN')
,('01529','RAMBLER')
,('05803','CAR-BUS.NET')
,('00783','GOLDHOFER')
,('20962','INDUCAE')
,('00480','DAT')
,('06989','CARROCERIASGRANADA')
,('04397','MANNESMANNDEMAG')
,('03871','G.M.E.')
,('24622','BULLFUEGO')
,('00723','FRUEHAUF')
,('13740','TALLERESLASGANDARAS')
,('06922','SOMONTE')
,('06914','CARROCERIASELGALLO')
,('06428','MEKO')
,('19860','SOLTRAVI')
,('01911','TRIMAK')
,('01822','SUNBEAM')
,('00068','ALPINE')
,('04877','JMG')
,('00295','B.S.A.')
,('01175','MAICO')
,('02949','FERQUI')
,('05946','IZH')
,('03949','RAPIDO')
,('04355','ROBUSTEKAIS')
,('06223','IMOTO')
,('02540','MOVEX')
,('02394','SCHMIDT')
,('00314','CALSA')
,('04221','HUMBAUR')
,('04631','GONZALO-GARCIA')
,('06649','JAXIN')
,('03964','CHEREAU')
,('05508','SORIBERICA')
,('31122','JIAYUAN')
,('06942','TRANSVOLCAR')
,('05477','EFUN')
,('06955','QUAZZAR')
,('31683','STILCONVERSION')
,('00940','INDIAN')
,('04558','BOECKMANN')
,('06915','ANGELBRUGUERAFONT')
,('10380','POESSL')
,('02489','1000SM')
,('06857','BARBANY')
,('01506','PRAGA')
,('06018','MGMOTOREMPORDA')
,('07011','SOLARIS')
,('05577','AUTOSTAR')
,('06332','MACBOR')
,('05837','SOCAGE')
,('05324','ARORA')
,('06496','SHINERAY')
,('06586','GSMOON')
,('15500','TOMCISA')
,('06525','ADLYMOTO')
,('05383','MHMOTORCYCLES')
,('06951','COCAR')
,('05088','KEWET')
,('06422','ZHONGNENG')
,('05281','HAOJIN')
,('05996','SPYKER')
,('00677','F.H.C.')
,('06693','LINGBEN')
,('27222','LIDERKIT')
,('05798','BERGADANA')
,('05785','GARIA')
,('06652','ODES')
,('06508','QINGQUI')
,('06262','VOLTRAILER')
,('05259','DONGFANG')
,('07072','INDOSAUTO')
,('06829','TBQ')
,('01415','OLEOPEL')
,('00950','INTERNATIONAL')
,('06798','YINXIANG')
,('00015','ACHICE')
,('01707','S.D.')
,('06370','CLIPIC')
,('06674','STANDARMOTOR')
,('06799','AEONMOTORCO.LTD')
,('01603','ROS-ROCA')
,('06739','YJ')
,('06500','MOTIVAS')
,('04064','LAMBERET')
,('07001','CARROCERIASALAMOS')
,('06783','LANVERTTI')
,('03741','MIROFRET')
,('06802','BUNKERTRIKE')
,('06353','DAZON')
,('01422','O.M.')
,('06454','CASEIH')
,('17240','APICZ')
,('01724','SERRANO')
,('06558','BASHAN')
,('06830','TIANMA')
,('06339','ZONGSHEN')
,('06747','FROILAN')
,('34042','MALCOR')
,('10760','CLUBCAR,LLC')
,('06863','VOLQUETESGONZALVEZ')
,('06574','JMSTAR')
,('05682','GAZA')
,('00363','C.H.')
,('06443','BEYOND')
,('01214','MASSEY-FERGUSON')
,('01596','ROMERO')
,('06493','EMFMOTOR')
,('00812','GROVE')
,('06669','XGJAO')
,('05735','LINTEX')
,('14295','ZHONGTONG')
,('01498','POCLAIN')
,('06387','AXR')
,('00602','E.R.F.')
,('36175','PROCHASIS')
,('16060','MULTITEL')
,('01403','O.A.F.')
,('05225','POSSL')
,('05348','CHONGQINGJIANSHE')
,('01858','TERROT')
,('06464','CHUANL')
,('04871','BAJAJ')
,('06410','XINLING')
,('02944','TRIGANO')
,('06433','BAYER.MOT.WERKE-D')
,('06813','BTM')
,('05260','SENKE')
,('06235','ZHONGYU')
,('04097','MUSTANG')
,('06074','SEA')
,('17821','JOVENESCARROCEROS')
,('05162','GRUIVOL')
,('00836','HANOMAG')
,('05653','DANGEL')
,('01348','M.V.')
,('06144','JOINT')
,('05060','GINAF')
,('14941','ATIS')
,('05515','WEINSBERG')
,('04798','MEGA')
,('05315','MEGELLI')
,('00440','CORD')
,('32522','AHORN')
,('05810','KARMANN-MOBIL')
,('00013','A.C.E.')
,('00449','COUNTY')
,('06924','DIGAL')
,('06618','JOYNER')
,('00065','ALONSO')
,('06762','ZENTAURUS')
,('06943','ROMETMOTORS')
,('02762','BUERSTNER')
,('06141','CAMI')
,('04838','F.X.MEILLER')
,('05714','CELIS')
,('05691','THEAULT')
,('35205','OEAFGRAEFU.ST.')
,('06095','PUTZMEISTER')
,('06135','FLIEGL')
,('04625','TAMAME')
,('00329','CARAVELAIR')
,('04326','JUCAL')
,('06125','LIDER')
,('03810','RODASUR')
,('06004','NEUSON')
,('05121','NG')
,('00339','CASE')
,('02763','HOBBY')
,('06554','DADYW')
,('04970','VALLEJO')
,('31542','DERCKS')
,('03842','KUBOTA')
,('17720','AMGENERALCORP')
,('22882','SOLIS')
,('06505','GRANALU')
,('06373','LONGCHANG')
,('06759','MOTORMANIA')
,('01146','LOHR')
,('18340','FRANCO LECIÑENA')
,('02156','INDOX')
,('03650','AGRIVIC')
,('00953','I.P.V.')
,('06867','CARTEMET')
,('00056','ALFA ROMEO')
,('29522','ALPINE RENAULT')
,('01592','ROLLS ROYCE')
,('00840','HARLEY DAVIDSON')
,('05951','GOING GREEN')
,('06786','MOTO GUZZI')
,('06686','CAN AM')
,('02476','SIN MARCA')
,('00130','ASTON MARTIN')
,('01007','JOHN DEERE')
,('03739','SUZUKI SANTANA')
,('08530','QUADRO VEHICLES')
,('06263','CF MOTO')
,('01503','PONY')
,('05919','CAFRAN')
,('29473','CARAVANS INT TRIGANO')
,('06983','CARROCERIAS CREVILLENTE');

COMMIT;
