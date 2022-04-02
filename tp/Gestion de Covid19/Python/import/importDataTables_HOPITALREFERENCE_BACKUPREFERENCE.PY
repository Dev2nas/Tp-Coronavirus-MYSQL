from msilib.schema import tables
import cx_Oracle as O
cn=O.connect('system/root/127.0.0.1/XE')
cr=cn.cursor()
table=['PERSONNE','TRAITEMENT','MEDECIN','HOPITAL','COMMUNE','DEPARTEMENT','REGION','EQUIPE']
for t in table:
            cr.execute("CREATE TABLE BACKUPREFERENCE.%s AS SELECT * FROM HOPITALREFERENCE.%s" %(t,t))
            cn.commit()
            
