from msilib.schema import tables
import cx_Oracle as O
cn=O.connect('system/root/127.0.0.1/XE')
cr=cn.cursor()
tables=['PERSONNE','TRAITEMENT','MEDECIN','HOPITAL','COMMUNE','DEPARTEMENT','REGION','EQUIPE']
for t in tables:
    f=open('C:\\Users\\DevNas\\Desktop\\BDD\\tp\\%s.csv'%t,'a')
    ecrire=csv.writer(f,delimiter=';')
    cr.execute('SELECT * FROM %s' %t)
    d=cr.fetchall()
    for d in d:
        ecrire.writerow(d)