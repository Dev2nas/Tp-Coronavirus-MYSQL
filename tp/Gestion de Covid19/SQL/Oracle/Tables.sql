-- TABLE REGION
CREATE TABLE REGION
(
    idRegion NUMBER primary key,
    region VARCHAR2(9) NOT NULL unique
);
-- TABLE DEPARTEMENT
CREATE TABLE DEPARTEMENT
(
idDepartement NUMBER primary key ,
departement NUMBER VARCHAR2(50) NOT NULL unique,
idRegion NUMBER NOT NULL
);
-- TABLE COMMUNE
-- Create a new relational table with 3 columns
CREATE TABLE COMMUNE 
(
  idCommune NUMBER primary key ,
  commune VARCHAR2(25),
  idDepartement NUMBER NOT NULL
);
-- TABLE PERSONNE
CREATE TABLE PERSONNE 
(
  idPersonne NUMBER primary key ,
  nom VARCHAR2(50),
  prenom VARCHAR2(50),
  dateNaissance date NOT NULL,
  lieuNaissance VARCHAR2(50),
  genre char(1) NOT NULL,
  nat VARCHAR2(25),
  telephone NUMBER(8)NOT NULL,
  situationMatrimoniale VARCHAR2 (10) NOT NULL,
  profession VARCHAR2(50),
  nbreEnfant NUMBER(2),
  idCommune NUMBER NOT NULL
);
-- TABLE HOPITAL
-- Create a new relational table with 3 columns
CREATE TABLE HOPITAL 
(
  idHopital NUMBER primary key ,
  hopital VARCHAR2(25) NOT NULL unique
);
-- TABLE EQUIPE
-- Create a new relational table with 3 columns
CREATE TABLE EQUIPE 
(
  idEquipe NUMBER primary key ,
  numEquipe NUMBER(4) NOT NULL unique
);
-- TABLE TRAITEMENT
CREATE TABLE TRAITEMENT 
(
  idTrait NUMBER primary key ,
  traitement VARCHAR2(100) NOT NULL,
  etatSante VARCHAR2(15) NOT NULL,
  jour date NOT NULL,
  symtome text NOT NULL,
  idPersonne NUMBER NOT NULL
  idEquipe NUMBER NOT NULL
);
-- TABLE MEDECIN
CREATE TABLE MEDECIN 
(
  idMedecin NUMBER primary key ,
  nomMedecin VARCHAR2(50) NOT NULL,
  prenomMedecin VARCHAR2(15) NOT NULL,
  garde VARCHAR2(50) NOT NULL,
  specialisation VARCHAR2(50) NOT NULL,
  idHopital NUMBER NOT NULL,
  idEquipe NUMBER NOT NULL
);