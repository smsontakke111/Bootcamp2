# Python program to demonstrate
# writing to CSV


import csv
import datetime
from random import randint,choice
# field names
fields = ['Name', 'Branch', 'Year', 'CGPA', ' bool' , 'div', 'Mob no.', 'Blood group','xyz','pqr']
rows = []

# data rows of csv file
for i in range(0,15000):
    row = ["text{}".format(i),"branch{}".format(i),datetime.datetime.now(),randint(10,100),choice([True,False]),"text{}".format(i),"branch{}".format(i),datetime.datetime.now(),randint(10,100),choice([True,False])]
    rows.append(row)

# name of csv file
filename = "workingfile/sourcefile1.csv"
	
# writing to csv file
with open(filename, 'w') as csvfile:
	# creating a csv writer object
	csvwriter = csv.writer(csvfile)
		
	# writing the fields
	csvwriter.writerow(fields)
		
	# writing the data rows
	csvwriter.writerows(rows)
