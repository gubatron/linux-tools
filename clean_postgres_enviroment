# -*- encoding: utf-8 -*-
#This script will erase all your test dbs on a postgres server
#Use carefully, and JUST on testing enviroments.
'''
How to use:
1.- Log a postgres user:
$sudo su postgres
2.- Go to postgres home:
$cd
3.- Copy this script on this location.
$cp /path/clean_postgres_enviroment.py .
4.- Change the variable: exclude to avoid delete productions not desired dbs
5.- Comment Line 29 and mae a try.
6.- Stop you OpenERP or Servers using your testing dbs.
7.- Run it.
$python clean_postgres_enviroment.py
'''
import os
os.popen('psql -l > /tmp/dblisttoclean.txt')
arch = open('/tmp/dblisttoclean.txt','r')
cou=0
#List of dbs that will be excluded
exclude = ['template0','template1','postgres']
for a in arch.readlines():
    li=a.split('\n')[0].replace(' ','')
    if len(li.split('|')) >= 2:
        g = [li.split('|')[0] for e in exclude if li.split('|')[0] not in exclude]
        if g:
            back = os.popen('dropdb %s' % g[0])
            print "Deleted %s" % g[0]
