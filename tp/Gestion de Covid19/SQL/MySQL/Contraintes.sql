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
ALTER table PERSONNE alter nat set default 'nigerienne';
ALTER TABLE PERSONNE ADD constraint ckSitMat CHECK(situationMatrimoniale IN ('Marie','Celibataire','Divorcée'));
ALTER table PERSONNE ALTER nbreEnfant set default 0;
ALTER table PERSONNE ADD constraint ckEtatEnfant CHECK(nbreEnfant BETWEEN 0 AND 20);
ALTER TABLE TRAITEMENT ADD constraint ckEtatsante CHECK(etatSante IN ('gueri','decedé','rechute','traitement','retraitement','disparu'));
ALTER table TRAITEMENT ADD constraint ckJour CHECK(jour <=sysdate());
