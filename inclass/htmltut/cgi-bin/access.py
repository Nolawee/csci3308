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
cur.execute("SELECT * FROM store")
print "<table border=1px dashed black>"
print "<tr><th>Quantity</th><th>Price</th><th>Cost</th></tr>"
sum=0
for row in cur.fetchall() :
    #print row[0]
    #print row[1]
    qty = row[2]
    price = row[3]
    sum=sum+qty*price
    print "<tr><td>", qty, "</td><td>", price, "</td><td>", (qty*price), "</td></tr>"
print"</table>"
print "Total inventory cost: $", sum

print "DONE"
