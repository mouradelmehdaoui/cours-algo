#copyright by mourad altrh

#suppression de la base si elle existe
drop database if exists CompagnieAerienne;

#création de la base de données dbgestion
create database CompagnieAerienne;

#connection de la base
use CompagnieAerienne;


#------------------------------------------------- ----------TABLE CONSRTUCTEUR

DROP TABLE IF exists Constructeur;

create table Constructeur
(
	idconstructeur	int(5) auto_increment not null,
	nomConstructeur varchar(30) not null,
	primary key (idconstructeur)
	
);

INSERT INTO Constructeur (nomConstructeur)

VALUES 

		("Aérospatiale"),
		("Boeing"),
		("Cessna"),
		("Douglas");

#-------------------------------------------------------------TABLE TYPE 

drop table if exists type;

create table Type
(
	TypeAvion varchar(6)  not null ,

	/* VERIFIER LA CAPACITER DU CHAMPS */
	Capacite int(5)  DEFAULT 100 CHECK (Capacite < 400 AND CAPACITE > 50 ),
	idconstructeur 	int(5) not null,
	primary key (TypeAvion)
	
);

/* CONTRAINTE */

ALTER TABLE type
ADD CONSTRAINT FK_idconstructeur
FOREIGN KEY (idconstructeur)
REFERENCES Constructeur (idconstructeur);

#INSERER LES VALEURS DANS LA TABLE

INSERT INTO type (TypeAvion, Capacite, idconstructeur) 
VALUES 
("A320",300,1), 
("A340",350,1), 
("ATR42",50,1), 
("B707",250,2), 
("B727",300,2), 
("B747",400,2), 
("DC10",200,4);



# -----------------------------------------------------------TABLE AVION 


DROP TABLE IF exists Avion;

create table Avion
(
	NumAvion int(5) auto_increment not null,
	typeAvion varchar(5),
	baseAeroport char(5),
	
	primary key (NumAvion)
	
);


ALTER TABLE avion
AUTO_INCREMENT=100,  /* AUTO INCREMENT A PARTIR DE 100*/
ADD CONSTRAINT type_avion
FOREIGN KEY (TypeAvion)
REFERENCES type (TypeAvion),
ADD CONSTRAINT base_aeroport
FOREIGN KEY (baseAeroport)
REFERENCES Aeroport(idAeroport);

INSERT INTO avion (typeAvion, baseAeroport)

VALUES 

		("A320",	"NIC"),
		("B707",	"CDG"),
		("A302",	"BLA"),
		("DC10",	"BLA"),
		("B747",	"ORL"),
		("A320",	"GRE"),
		("ATR42",	"CDG"),
		("B727",	"LYS"),
		("B727",	"NAN"),
		("A340",	"BAS");


# --------------------------------------------------------- TABLE AEROPORT 

DROP TABLE IF exists Aeroport;
create table Aeroport
(
	idAeroport varCHAR(5) not null,
	NomAeroport varchar(30) not null,
	NomVilleDesservie varchar(30),
	
	primary key (idAeroport)
	
);

INSERT INTO Aeroport 
VALUES
		("BAS",	"Poretta",				"Bastia"),
		("BLA",	"Blagnac",				"Toulouse"),
		("BRI",	"Brive",				"Brive"),
		("CDG",	"Roissy",				"Paris"),
		("GRE",	"Saint Geoir",			"Grenoble"),
		("LYS",	"Saint exupéry",		"Lyon"),
		("NAN",	"Saint Herblain	",		"Nantes"),
		("NIC",	"Nice cote d'azur",		"Nice"),
		("ORL",	"Orly",					"Paris");

#-----------------------------------------------------------TABLE VOL

DROP TABLE IF EXISTS vol;

create table vol
(
	
	NumVol int(4) not null auto_increment CHECK (NumVol LIKE "IT[0-9][0-9][0-9]"),
	AeroportDept varCHAR(4) not null,
	Hdepart time(5) not null,
	AeroportArr varCHAR(4) not null,
	Harrivee time(5) not null,

	primary key (NumVol)
	
);

ALTER TABLE vol
auto_increment = 100,
ADD CONSTRAINT fkdept
FOREIGN KEY (AeroportDept)
REFERENCES AEROPORT(IdAeroport),
ADD CONSTRAINT fkdarr
FOREIGN KEY (AeroportArr)
REFERENCES AEROPORT(IdAeroport);


INSERT INTO vol (AeroportDept,Hdepart,AeroportArr,Harrivee)
VALUES 

		("NIC",	"7:00",		"CDG",	"9:00"),
		("ORL",	"11:00",	"BLA",	"12:00"),
		("CDG",	"12:00",	"NIC",	"14:00"),
		("GRE",	"9:00",		"BLA",	"11:00"),
		("BLA",	"17:00",	"GRE",	"19:00"),
		("LYS",	"6:00",		"ORL",	"7:00"),
		("BAS",	"10:00",	"ORL",	"13:00"),
		("NIC",	"7:00",		"BRI",	"8:00"),
		("BRI",	"19:00",	"ORL",	"20:00"),
		("NIC",	"18:00",	"BRI",	"19:00"),
		("ORL",	"15:00",	"NIC",	"16:00"),
		("NIC",	"17:00",	"NAN",	"19:00");



#------------------------------------------------------- TABLE AFFECTATION


DROP TABLE IF EXISTS Affectation;

create table Affectation
(
	NumVol int(4) not null AUTO_INCREMENT,
	DateVol date DEFAULT "1000-01-01" not null,
	NumAvion  int(5) DEFAULT 000 not null,
	idPilote int(3) DEFAULT null,
	
	PRIMARY KEY (DateVol,NumVol)
);

ALTER TABLE Affectation
ADD CONSTRAINT FK_numVol
FOREIGN KEY (NumVol)
REFERENCES vol (NumVol),
ADD CONSTRAINT fk_numAvion
FOREIGN KEY (NumAvion)
REFERENCES Avion(NumAvion),
ADD CONSTRAINT fk_pilote
FOREIGN KEY (idPilote)
REFERENCES Pilote(idPilote);


INSERT INTO Affectation 
VALUES 
("100","2001-04-06",100,1),
("100","2001-04-07",101,2),
("101","2001-04-06",100,2),
("101","2001-04-07",103,4),
("102","2001-04-06",101,1),
("102","2001-04-07",102,3),
("103","2001-04-06",105,3),
("103","2001-04-07",104,2),
("104","2001-04-06",105,3),
("104","2001-04-07",107,8),
("105","2001-04-06",107,7),
("105","2001-04-07",107,7),
("106","2001-04-06",109,8),
("106","2001-04-07",104,5),
("107","2001-04-06",106,9),
("107","2001-04-07",103,8),
("108","2001-04-06",106,9),
("108","2001-04-07",106,5),
("109","2001-04-06",107,7),
("109","2001-04-07",105,1);


#---------------------------------------------------------- TABLE PILOTE

DROP TABLE IF EXISTS Pilote;

create table Pilote
(
	idPilote int(3) auto_increment not null,
	NomPilote varchar(30) not null,
	PrenomPilote varchar(30) not null,
	primary key (idPilote)
	
);

INSERT INTO Pilote (NomPilote,PrenomPilote)
VALUES

	("GAINSBOURB", "Serge"),
	("FERRAT", "Jean"),
	("NOUGARO", "Claude"),
	("SHUMMAN", "Robert"),
	("STROGOFF", "Michel"),
	("SORREL", "Lucien"),
	("TAVERNIER", "Bertand"),
	("FAYOLLE", "Marc"),
	("LECU", "Regis");









/*ALTER TABLE DESERVIR
ADD CONSTRAINT FK_MONUMENT
FOREIGN KEY ( fk_id_monument)
REFERENCES MONUMENT (id_monument),
ADD CONSTRAINT FK_STATION
FOREIGN KEY ( fk_id_station)
REFERENCES STATION (id_station)*/
