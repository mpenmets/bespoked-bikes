
from flask import Flask, render_template, request, redirect
import traceback
import mysql.connector

app = Flask(__name__)

mydb = mysql.connector.connect(
  host="localhost",
  user="admin",
  password="1234",
  database="bespoked_bikes"
)

@app.route('/')
def home():

    return 'Hello, World'

@app.route('/salesperson', methods=['GET'])
def salesperson():
    cursor = mydb.cursor()
    cursor.execute('SELECT * FROM SalesPerson')

    data = list(cursor)

    cursor.close()

    return render_template('salesperson.html', data=data, update=False)

@app.route('/salesperson/<id>', methods=['GET', 'POST'])
def salesperson_update(id):

    if request.method == 'GET':
        cursor = mydb.cursor()

        cursor.execute('SELECT * FROM SalesPerson WHERE id=' + str(id))

        data = list(cursor)

        cursor.close()
        if len(data) > 0:

            return render_template('salesperson.html', data=data[0], update=True)

        else:
            return 'Invalid Id'
    else:

        form = request.form

        try:
            fname = form['fname']
            lname = form['lname']
            address = form['address']
            phone = form['phone']
            start_date = form['start_date']
            termination_date = form['termination_date']

            sql = "Update SalesPerson SET First_name='%s', Last_Name='%s', Address='%s', Phone='%s', Start_Date='%s', Termination_Date='%s' WHERE id=%s" % (fname, lname, address, phone, start_date, termination_date, str(id))

            cursor = mydb.cursor()

            cursor.execute(sql)
            mydb.commit()

            return redirect('/salesperson/' + str(id))
        except:
            print(traceback.format_exc())
            return 'An error occurred while processing your request.'


@app.route('/products', methods=['GET'])
def products():
    cursor = mydb.cursor()

    cursor.execute('SELECT * FROM Product')

    data = list(cursor)

    cursor.close()

    print(data)
    return render_template('products.html', data=data, update=False)

@app.route('/products/<id>', methods=['GET', 'POST'])
def produts_update(id):

    if request.method == 'GET':
        cursor = mydb.cursor()

        cursor.execute('SELECT * FROM Product WHERE id=' + str(id))

        data = list(cursor)

        cursor.close()
        if len(data) > 0:

            return render_template('products.html', data=data[0], update=True)

        else:
            return 'Invalid Id'
    else:

        form = request.form

        try:
            pname = form['pname']
            manufacturer = form['manufacturer']
            style = form['style']
            pprice = form['pprice']
            sprice = form['sprice']
            qty = form['qty']
            cpercent = form['cpercent']

            sql = "Update Product SET Name='%s', Manufacturer='%s', Style='%s', Purchase_Price=%s, Sale_Price=%s, Qty_On_Hand=%s, Commission_Percentage=%s WHERE id=%s" % (pname, manufacturer, style, pprice, sprice, qty, cpercent, str(id))

            cursor = mydb.cursor()

            cursor.execute(sql)
            mydb.commit()

            return redirect('/products/' + str(id))

            # print(sql)
            # print(request.form)
        except:
            print(traceback.format_exc())
            return 'An error occurred while processing your request.'

if __name__ == '__main__':

    app.run(debug=True)
