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
  hopiatl VARCHAR2(25) NOT NULL unique
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

-- Les contraintes d'integriter
ALTER TABLE DEPARTEMENT ADD CONSTRAINT fkRegion FOREIGN KEY(idRegion) REFERENCES REGION(idRegion);
ALTER TABLE COMMUNE ADD CONSTRAINT fkDepartement FOREIGN KEY(idDepartement) REFERENCES DEPARTEMENT(idDepartement);
ALTER TABLE PERSONNE ADD CONSTRAINT fkCommune FOREIGN KEY(idCommune) REFERENCES COMMUNE(idCommune);
ALTER TABLE TRAITEMENT ADD CONSTRAINT fkPersonne FOREIGN KEY(idPersonne) REFERENCES PERSONNE(idPersonne);
ALTER TABLE MEDECIN ADD CONSTRAINT fkEquipe FOREIGN KEY(idEquipe) REFERENCES EQUIPE(idEquipe);
ALTER TABLE TRAITEMENT ADD CONSTRAINT fkEquipe FOREIGN KEY(idEquipe) REFERENCES EQUIPE(idEquipe);
ALTER TABLE MEDECIN ADD CONSTRAINT fkHopital FOREIGN KEY(idHopital) REFERENCES HOPITAL(idHopital);
ALTER TABLE REGION ADD CONSTRAINT ckRegion CHECK(REGION IN ('Agadez','Diffa','Dosso','Maradi','Niamey','Tahoua','Tillaberi','Zinder'));
ALTER TABLE PERSONNE ADD CONSTRAINT fkGenre CHECK(genre in(('M','F'));
ALTER table PERSONNE MODIFY nat  default 'NIGERIENNE';
ALTER TABLE PERSONNE ADD CONSTRAINT ckSitMat CHECK(situationMatrimoniale IN ('Marie','Celibataire','Divorcée'));
ALTER table PERSONNE MODIFY nbreEnfant default 0;
ALTER table PERSONNE ADD CONSTRAINT ckEtatEnfant CHECK(nbreEnfant BETWEEN 0 AND 20);
ALTER TABLE TRAITEMENT ADD CONSTRAINT ckEtatsante CHECK(etatSante IN ('gueri','decedé','rechute','traitement','retraitement','disparu'));