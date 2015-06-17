#!/usr/bin/env python
import MySQLdb

print "Content-type: text/html"
print
print "<title>Test CGI</title>"
print "<p>Hello World!</p>"

# NEVER EVER STORE PASSWORDS HERE DAWG
db = MySQLdb.connect(host= 'localhost',
        user='dylan',
        passwd='sparky1993',
        db='lab')
#create cursor object
cur = db.cursor()
#use all SQL you want
cur.execute("SELECT * FROM Dept")

for row in cur.fetchall() :
    print row[0]
print "DONE"
