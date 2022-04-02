--SQBD MYSQL
-- TABLE REGION
CREATE TABLE REGION
(
    idRegion INT primary key auto_increment,
    region varchar(9) NOT NULL unique
);
-- TABLE DEPARTEMENT
CREATE TABLE DEPARTEMENT
(
idDepartement INT primary key auto_increment,
departement varchar(50) NOT NULL unique,
idRegion INT not null
);
-- TABLE COMMUNE
-- Create a new relational table with 3 columns
CREATE TABLE COMMUNE
(
  idCommune int primary key auto_increment,
  commune VARCHAR(50) NOT NULL,
  idDepartement int not null
);
-- TABLE PERSONNE
CREATE TABLE PERSONNE 
(
  idPersonne int primary key auto_increment,
  nom VARCHAR(50),
  prenom VARCHAR(50),
  dateNaissance date not null,
  lieuNaissance VARCHAR(50) not null,
  genre char(1) not null,
  nat VARCHAR(25) not null,
  telephone int(8)not null,
  situationMatrimoniale varchar (10) not null,
  profession VARCHAR(50),
  nbreEnfant int(2),
  idCommune int not null
);
-- TABLE HOPITAL
-- Create a new relational table with 3 columns
CREATE TABLE HOPITAL 
(
  idHopital int primary key auto_increment,
  hopiatl VARCHAR(25) not null unique
);
-- TABLE EQUIPE
-- Create a new relational table with 3 columns
CREATE TABLE EQUIPE 
(
  idEquipe int primary key auto_increment,
  numEquipe int(4) not null unique
);
-- TABLE TRAITEMENT
CREATE TABLE TRAITEMENT 
(
  idTrait int primary key auto_increment,
  traitement VARCHAR(50) not null,
  etatSante varchar(15) not null,
  jour date not null,
  symtome text not null,
  idPersonne int not null
  idEquipe int not null
);
-- TABLE MEDECIN
CREATE TABLE MEDECIN 
(
  idMedecin int primary key auto_increment,
  nomMedecin VARCHAR(50) not null,
  prenomMedecin varchar(50) not null,
  grade varchar(50) not null,
  specialisation VARCHAR(50) not null,
  idHopital int not null,
  idEquipe int not null
);