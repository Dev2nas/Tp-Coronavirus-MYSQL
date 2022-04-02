# @copyright 2022 DEVNAS
* Web developper
* devnas.inc@gmail.com
* +227 99 32 63 08
* My githbub: Dev2nas
#
## L'objectif de ce TP est pouvoir mettre en place une d'aplication de GESTION DE COVID

## Require
- Python ~3.*
- Installer les modules(cx_Oracle, psycopg2(pymysql(pour MySQL, cx_Oracle pour Oracle et psycopg2 pour
PostgreSQL)))
- Sur terminal ou console : pip install pymysql cx_Oracle psycopg2 
## SGBD
- Oracle,
- MySQL,
- PostgreSQL
# Programation 
- Python

# Server MySQL
- Database   :HNN
- Tables     : - REGION
               - DEPARTEMENT
               - COMMUNE
               - PERSONNE
               - HOPITAL
               - EQUIPE
               - TRAITEMENT
               - MEDECIN
- Index      : - ckRegion
               - fkDepartement
               - fkCommune
               - fkEquipe
               - fkPersonne
               - fkHop
               - ckRegion
               - ckGenre
               - ckSitMat
               - cknbreEnafant
               - ckEtatSante
               - ckJour

# Server Oracle
* SCHEMA : HOPITALREFERENCE
- Tables     : - REGION
               - DEPARTEMENT
               - COMMUNE
               - PERSONNE
               - HOPITAL
               - EQUIPE
               - TRAITEMENT
               - MEDECIN
- Index      : - ckRegion
               - fkDepartement
               - fkCommune
               - fkEquipe
               - fkPersonne
               - fkHop
               - ckRegion
               - ckGenre
               - ckSitMat
               - cknbreEnafant
               - ckEtatSante
               - ckJour

# GESTION DES UTILISATEURS
_____________________________________________________________________
# NAME      |PASSWORD |DEFAULT TABLESPACE|QUOTA     |ACCOUNT|PASSWORD|
|depisteur  |iro      |SYSTEM            |300M      |UNLOCK |EXPIRE  |
|consultant |hadi     |USERS             |450M      |LOCK   |EXPIRE  |
|traiteur   |falal    |USERS             |250K      |UNLOCK |EXPIRE  |
|superviseur|Kaka     |SYSTEM            |UNLIMITED |UNLOCK |EXPIRE  |
|admin      |laouali  |SYSTEM            |250M      |UNLOCK |EXPIRE  |
|regulateur |salissou |SYSTEM            |UNLIMITED |UNLOCK |EXPIRE  |
|correcteur |ladid    |USERS             |UNLIMITED |LOCK   |EXPIRE  |

## LES GRANDS POINT :
- Création des bases données ;
- Création des tables ;
- Importer et Exporter les data
- Backup
