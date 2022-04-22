
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="admin",
  password="1234",
  database="bespoked_bikes"
)

cursor = mydb.cursor()

cursor.execute("SHOW DATABASES")

for x in cursor:
  print(x)

# print(mydb)
