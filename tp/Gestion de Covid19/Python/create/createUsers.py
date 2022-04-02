import cx_Oracle as O
cn=O.connect('system/root/127.0.0.1/XE')
cr=cn.cursor()
with open('C:\\Users\\DevNas\\Desktop\\BDD\\tp\\data\\user.csv') as f:
        for ligne in f:
            l=ligne.split(';')
            cr.execute('''CREATE USER %s IDENTIFIED BY %s DEFAULT TABLESPACE %s QUOTA %s ON %s ACCOUNT %S PASSWORD %s'''%(l[0],l[2],l[3],l[2],l[4],l[5],))
            cn.commit()