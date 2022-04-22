
from faker import Faker
import mysql.connector
import random
import datetime

mydb = mysql.connector.connect(
  host="localhost",
  user="admin",
  password="1234",
  database="bespoked_bikes"
)

fake = Faker()
cursor = mydb.cursor(buffered=True)

# print(fake.bs())
# print(fake.company())
# print(fake.first_name())
# print(fake.last_name())
# print(fake.address())
# print(fake.phone_number())
# print(round(random.uniform(0, 1000.0), 2))
# print(random.randint(0, 100))
# print(round(random.uniform(0, 100.0), 2))
# print(fake.date())
# cursor.lastrowid
# cursor.execute("SHOW DATABASES")

def insert_products():

    sql = "INSERT INTO `Product`(`Name`, `Manufacturer`, `Style`, `Purchase_Price`, `Sale_Price`, `Qty_On_Hand`, `Commission_Percentage`)\n VALUES \n"

    for i in range(100):

        sql += " ('%s', '%s', '%s', %s, %s, %s, %s)" % (fake.bs(), fake.company(), '', round(random.uniform(0, 1000.0), 2), round(random.uniform(0, 1000.0), 2), random.randint(0, 100), random.randint(0, 100))

        if i != 99:
            sql += ", \n"
        else:
            sql += ";"

    cursor.execute(sql)

    mydb.commit()

    cursor.close()

def insert_sales_person():

    sql = "INSERT INTO `SalesPerson`(`First_Name`, `Last_Name`, `Address`, `Phone`, `Start_Date`, `Termination_Date`, `Manager`)\n VALUES \n"

    for i in range(15):

        manager = ''
        start_date = fake.date_between()
        end_date = ''

        if random.randint(0, 1) == 1:

            end_date = fake.date_between()

            while end_date < start_date:
                end_date = fake.date_between()

        start_date = start_date.strftime('%Y-%m-%d')

        if end_date != '':
            end_date = '\'' + end_date.strftime('%Y-%m-%d') + '\''

        if end_date == '':
            end_date = 'NULL'

        if i > 6 and random.randint(0, 1) == 1:

            manager = random.randint(1, i)

        if manager == '':
            manager = 'NULL'

        sql += " ('%s', '%s', '%s', '%s', '%s', %s, %s)" % (fake.first_name(), fake.last_name(), fake.address(), fake.phone_number(), start_date, end_date, manager)

        if i != 14:
            sql += ", \n"
        else:
            sql += ";"

    cursor.execute(sql)

    mydb.commit()

    cursor.close()


def insert_customers():

    sql = "INSERT INTO `Customer`(`First_Name`, `Last_Name`, `Address`, `Phone`, `Start_Date`)\n VALUES \n"

    for i in range(40):

        start_date = fake.date_between()
        start_date = start_date.strftime('%Y-%m-%d')

        sql += " ('%s', '%s', '%s', '%s', '%s')" % (fake.first_name(), fake.last_name(), fake.address(), fake.phone_number(), start_date)

        if i != 14:
            sql += ", \n"
        else:
            sql += ";"

    # print(sql)
    cursor.execute(sql)

    mydb.commit()

    cursor.close()

def insert_sales():
    sql = "INSERT INTO `Sales`(`Product`, `SalesPerson`, `Customer`, `Sales_Date`)\n VALUES \n"

    for i in range(120):

        sales_date = fake.date_between()
        sales_date = sales_date.strftime('%Y-%m-%d')

        product = random.randint(3, 99)
        sales_person = random.randint(1, 14)
        customer = random.randint(1, 14)

        sql += " (%s, %s, %s, '%s')" % (product, sales_person, customer, sales_date)

        if i != 119:
            sql += ", \n"
        else:
            sql += ";"

    # print(sql)
    cursor.execute(sql)

    mydb.commit()

    cursor.close()

def insert_discounts():
    sql = "INSERT INTO `Discount`(`Product`, `Begin_Date`, `End_Date`, `Discount_Percentage`)\n VALUES \n"

    for i in range(20):

        begin_date = fake.date_between()
        end_date = datetime.datetime(begin_date.year, begin_date.month, begin_date.day)
        end_date = end_date.replace(year=end_date.year + 1)
        end_date = end_date.strftime('%Y-%m-%d')
        # future = datetime.datetime.now() - datetime.timedelta(days=365)

        # print(future)

        # end_date = fake.date_between_dates(date_start=begin_date, date_end=end_date)
        begin_date = begin_date.strftime('%Y-%m-%d')
        product = random.randint(3, 99)

        sql += " (%s, '%s', '%s', %s)" % (product, begin_date, end_date, round(random.uniform(0, 100.0), 2))

        if i != 19:
            sql += ", \n"
        else:
            sql += ";"

    # print(sql)
    cursor.execute(sql)

    mydb.commit()

    cursor.close()

# insert_products()
# insert_sales_person()
# insert_customers()
# insert_sales()
insert_discounts()
