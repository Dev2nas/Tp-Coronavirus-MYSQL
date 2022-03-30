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
departement int varchar(50) NOT NULL unique,
idRegion INT not null
);
-- TABLE COMMUNE
-- Create a new relational table with 3 columns
CREATE TABLE COMMUNE 
(
  idCommune int primary key auto_increment,
  commune VARCHAR(25),
  idDepartement int not null
);
-- TABLE PERSONNE
CREATE TABLE PERSONNE 
(
  idPersonne int primary key auto_increment,
  nom VARCHAR(50),
  prenom VARCHAR(50),
  dateNaissance date not null,
  lieuNaissance VARCHAR(50),
  genre char(1) not null,
  nat VARCHAR(25),
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
  prenomMedecin varchar(15) not null,
  garde varchar(50) not null,
  specialisation VARCHAR(50) not null,
  idHopital int not null,
  idEquipe int not null
);

-- Les contraintes d'integriter
ALTER TABLE DEPARTEMENT ADD constraint fkRegion FOREIGN KEY(idRegion) REFERENCES REGION(idRegion);
ALTER TABLE COMMUNE ADD constraint fkDepartement FOREIGN KEY(idDepartement) REFERENCES DEPARTEMENT(idDepartement);
ALTER TABLE PERSONNE ADD constraint fkCommune FOREIGN KEY(idCommune) REFERENCES COMMUNE(idCommune);
ALTER TABLE TRAITEMENT ADD constraint fkPersonne FOREIGN KEY(idPersonne) REFERENCES PERSONNE(idPersonne);
ALTER TABLE MEDECIN ADD constraint fkEquipe FOREIGN KEY(idEquipe) REFERENCES EQUIPE(idEquipe);
ALTER TABLE TRAITEMENT ADD constraint fkEquipe FOREIGN KEY(idEquipe) REFERENCES EQUIPE(idEquipe);
ALTER TABLE MEDECIN ADD constraint fkHopital FOREIGN KEY(idHopital) REFERENCES HOPITAL(idHopital);
ALTER TABLE REGION ADD constraint ckRegion CHECK(REGION IN ('Agadez','Diffa','Dosso','Maradi','Niamey','Tahoua','Tillaberi','Zinder'));
ALTER TABLE PERSONNE ADD constraint fkGenre CHECK(genre in(('M','F'));
ALTER table PERSONNE alter nat set default ;
ALTER TABLE PERSONNE ADD constraint ckSitMat CHECK(situationMatrimoniale IN ('Marie','Celibataire','Divorcée'));
ALTER table PERSONNE ALTER nbreEnfant set default ;
ALTER table PERSONNE ADD constraint ckEtatEnfant CHECK(nbreEnfant BETWEEN 0 AND 20);
ALTER TABLE TRAITEMENT ADD constraint ckEtatsante CHECK(etatSante IN ('gueri','decedé','rechute','traitement','retraitement','disparu'));
ALTER table TRAITEMENT ADD constraint ckJour CHECK(jour<=sysdate());



php phpDocumentor.phar run -d C:\wamp\www\eService\documentation -t C:\wamp\www\eService\documentation\doc