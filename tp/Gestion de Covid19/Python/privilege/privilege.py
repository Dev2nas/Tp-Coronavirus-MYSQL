import cx_Oracle as O
cn=O.connect('system/root/127.0.0.1/XE')
cr=cn.cursor()
with open('C:\Users\DevNas\Desktop\BDD\tp\data\privilege.csv') as f:
        for ligne in f:
            l=ligne.split(';')
            x=l[2].split(',')
            for j in x:
                i=x.split(',')
            cr.execute('''GRANT %s ON %s TO''' %(l[0],l[1]),i)
            cn.commit()
            
