import cx_Oracle as O , psycopg2 as P
cnO=O.connect('system/root/127.0.0.1/XE')
cnP=P.connect("host='127.0.0.1' user='postgres' dbname='HOPITALREFERENCE' password='root'")
crO=cnO.cursor()
crP=cnP.cursor()
tables=['PERSONNE','TRAITEMENT','MEDECIN','HOPITAL','COMMUNE','EQUIPE','DEPARTEMENT','REGION']
for t in tables:
    crO.execute("SELECT * FROM %s" %t)
    d=crO.fetchall()
    for d in d:
        if t=='REGION' :
            crP.execute("INSERT INTO REGION VALUES(%s,'%s')"%(d[0],d[1]))
        elif t=='DEPARTEMENT':
             crP.execute("INSERT INTO DEPARTEMENT VALUES(%s,'%s')"%(d[0],d[1],d[2]))
        elif t=='COMMUNE':
             crP.execute("INSERT INTO COMMUNE VALUES(%s,'%s',%s)"%(d[0],d[1],d[2]))
        elif t=='PERSONNE':
             crP.execute('''INSERT INTO PERSONNE VALUES(%s,'%s',%s,%s,'%s',%s,%s,'%s',%s,%s,'%s',%s)'''%(d[0],d[1],d[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12]))
        elif t=='HOPITAL':
             crP.execute("INSERT INTO HOPITAL VALUES(%s,'%s')"%(d[0],d[1]))
        elif t=='EQUIPE':
             crP.execute("INSERT INTO EQUIPE VALUES(%s,'%s')"%(d[0],d[1]))
        elif t=='TRAITEMENT':
             crP.execute('''INSERT INTO TRAITEMENT VALUES(%s,'%s',%s,%s,'%s','%s',%s)'''%(d[0],d[1],d[2],[3],[4],[5],[6]))
        elif t=='MEDECIN':
             crP.execute('''INSERT INTO MEDECIN VALUES(%s,'%s',%s,%s,'%s','%s','%s')'''%(d[0],d[1],d[2],[3],[4],[5],[6]))
             cnP.commit()
             
# METHODE 2
import cx_Oracle as O , psycopg2 as P,csv
cnO=O.connect('system/root/127.0.0.1/XE')
cnP=P.connect("host='127.0.0.1' user='postgres' dbname='HOPITALREFERENCE' password='root'")
crO=cnO.cursor()
crP=cnP.cursor()
tables=['PERSONNE','TRAITEMENT','MEDECIN','HOPITAL','COMMUNE','EQUIPE','DEPARTEMENT','REGION']
for t in tables:
    with open('C:\\Users\\DevNas\\Desktop\\BDD\\tp\\%s.csv'%t,'a') as f:
            dl=csv.writer(f,delimiter=';')
            crO.execute('SELECT * FROM %s' %t)
            for d in crO.fetchall():
                dl.writerow(d)
    crP.execute("copy %s FROM C:\\Users\\DevNas\\Desktop\\BDD\\tp\\%s.csv WITH DELIMITER ';'"%(t,t))
    cnP.commit()