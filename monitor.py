#!/usr/bin/env python
# -*- coding: utf-8 -*-

import socket
import sys
import cmd
import time
import datetime
from datetime import datetime
import re
import os
from os import system
import subprocess
#import commands
import smtplib
from importlib import reload
import string
import xlsxwriter
import csv
import openpyxl
from time import time, sleep
import psycopg2
import email
import mimetypes

from email.mime.application import MIMEApplication
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.utils import COMMASPACE, formatdate
from email.mime.base import MIMEBase
from email import encoders
#from email.MIMEBase import MIMEBase
#from email.MIMEMultipart import MIMEMultipart
#from email.Utils import formatdate
from openpyxl import Workbook
from openpyxl.styles import Color, PatternFill, Font, Border
from openpyxl.styles import colors
from openpyxl.cell import Cell


buff = ''
resp = ''

i = datetime.now()
datetime = i.strftime('%Y/%m/%d %H:%M:%S')

my_file = open("/home/enki/monitor/services.txt", "rb")
ths = open('/home/enki/monitor/results.txt', 'w')
#s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)  #Create a TCP/datetime socket
conn=psycopg2.connect(database="dbname", user="dbuser", password="dbpassword", host="127.0.0.1", port="pgsqlport")
cur = conn.cursor()

for line in my_file:
		l = [i.strip() for i in line.decode().split(' ')]
		servicename = l[0]
		try:
			output = subprocess.check_output('service --status-all | grep %s'%(servicename),shell=True)
		except Exception:
			output = None
		#print output
		output = str(output)
		if 'running' in output:
			status = 'UP'
			ths.write('%s %s is UP\n'%(datetime,servicename))
			sql = """INSERT INTO monitor_table (datetime,servicename,status)VALUES ('%s','%s','%s')""" % (datetime, servicename, status)
			try:
				cur.execute(sql)
				conn.commit()
				print ('%s %s is UP AND Record INSERTED to DB'%(datetime,servicename))
			except:
				print ("Error in DB connection or insert query(UP)")
		elif 'ON' in output:
			status = 'ON'
			ths.write('%s %s is ON\n'%(datetime,servicename))
			sql = """INSERT INTO monitor_table (datetime,servicename,status)VALUES ('%s','%s','%s')""" % (datetime, servicename, status)
			try:
				cur.execute(sql)
				conn.commit()
				print ('%s %s is ON AND Record INSERTED to DB'%(datetime,servicename))
			except:
				print ("Error in DB connection or insert query(UP)")
		elif 'OFF' in output:
			status = 'OFF'
			ths.write('%s %s is OFF\n'%(datetime,servicename))
			sql = """INSERT INTO monitor_table (datetime,servicename,status)VALUES ('%s','%s','%s')""" % (datetime, servicename, status)
			try:
				cur.execute(sql)
				conn.commit()
				print ('%s %s is OFF AND Record INSERTED to DB'%(datetime,servicename))
			except:
				print ("Error in DB connection or insert query(UP)")
			
		else:
			status = 'DOWN'
			ths.write('%s %s is DOWN\n'%(datetime,servicename))
			sql = """INSERT INTO monitor_table (datetime,servicename,status)VALUES ('%s','%s','%s')""" % (datetime, servicename, status)
			try:
				cur.execute(sql)
				conn.commit()
				print ('%s %s is DOWN AND Record INSERTED to DB'%(datetime,servicename))
			except:
				print ("Error in DB connection or insert query(DOWN)")
	
conn.close()	
ths.close()
my_file.close()


my_file = open("/home/enki/monitor/services.txt", "rb")
ths = open('/home/enki/monitor/service_status.txt', 'w')
ths.close()
for line in my_file:
		ths = open('/home/enki/monitor/service_status.txt', 'a')
		l = [i.strip() for i in line.decode().split(' ')]
		servicename = l[0]
		conn=psycopg2.connect(database="dbname", user="goksin", password="dbpassword", host="127.0.0.1", port="5432")
		cur = conn.cursor()
		sql = """SELECT datetime,servicename,status from monitor_table where servicename = '%s' ORDER BY datetime DESC LIMIT 2""" % (servicename)
		try:
			cur.execute(sql)
			results = cur.fetchall()
			results = list(results)
			datetimelast = results[0][0]
			servicenamelast = results[0][1]
			statuslast = results[0][2]
			datetimepenultimate = results[1][0]
			servicenamepenultimate = results[1][1]
			statuspenultimate = results[1][2]
			statuslast = str(statuslast)
			statuspenultimate = str(statuspenultimate)
			if "ON" in statuslast and "OFF" in statuspenultimate or "OFF" in statuslast and "ON" in statuspenultimate:
				ths.write('%s Service %s is %s now, it was %s at %s\n'%(datetime,servicename,statuslast,statuspenultimate,datetimepenultimate))
				ths.close()
				filePath = r'/home/enki/monitor/service_status.txt'
				
				def sendEmail(TO = "admin@mailadress.com",
					CC = "test@mailadress.com",
					FROM = "test@mailadress.com"):
					HOST = "mail.mailadress.com"
					
					msg = MIMEMultipart()
					msg["From"] = FROM
					msg["To"] = TO
					msg["Cc"] = CC
					msg["Subject"] = "Service Monitor Alarm!"#.decode("utf-8")
					msg['Date']    = formatdate(localtime=True)
					body = "One or more services status changed. Please check the attachment for details."
					msg.attach(MIMEText(body, 'plain'))
					# attach a file
					part = MIMEBase('application', "octet-stream")
					part.set_payload( open(filePath,"rb").read() )
					email.encoders.encode_base64(part)
					part.add_header('Content-Disposition', 'attachment; filename="%s"' % os.path.basename(filePath))
					msg.attach(part)
					
					server = smtplib.SMTP(HOST)
					server.login("test@mailadress.com", "mailpassword")  # optional
					
					try:
						failed = server.sendmail(FROM, TO, msg.as_string())
						server.close()
					except Exception as e:
						errorMsg = "Unable to send email. Error: %s" % str(e)
				
				if __name__ == "__main__":
					sendEmail()
					print ("One or more services status changed.A warning e-mail has been sent successfully.")

			elif "UP" in statuslast and "DOWN" in statuspenultimate or "DOWN" in statuslast and "UP" in statuspenultimate:
				ths.write('%s Service %s is %s now, it was %s at %s\n'%(datetime,servicename,statuslast,statuspenultimate,datetimepenultimate))
				ths.close()
				filePath = r'/home/enki/monitor/service_status.txt'
				
				def sendEmail(TO = "admin@mailadress.com",
					CC = "test@mailadress.com",
					FROM = "test@mailadress.com"):
					HOST = "mail.mailadress.com"
					
					msg = MIMEMultipart()
					msg["From"] = FROM
					msg["To"] = TO
					msg["Cc"] = CC
					msg["Subject"] = "Service Monitor Alarm!"#.decode("utf-8")
					msg['Date']    = formatdate(localtime=True)
					body = "One or more services status changed. Please check the attachment for details."
					msg.attach(MIMEText(body, 'plain'))
					# attach a file
					part = MIMEBase('application', "octet-stream")
					part.set_payload( open(filePath,"rb").read() )
					email.encoders.encode_base64(part)
					part.add_header('Content-Disposition', 'attachment; filename="%s"' % os.path.basename(filePath))
					msg.attach(part)
					
					server = smtplib.SMTP(HOST)
					server.login("test@mailadress.com", "mailpassword")  # optional
					
					try:
						failed = server.sendmail(FROM, TO, msg.as_string())
						server.close()
					except Exception as e:
						errorMsg = "Unable to send email. Error: %s" % str(e)
				
				if __name__ == "__main__":
					sendEmail()
					print ("One or more services status changed.A warning e-mail has been sent successfully.")

			else:
				print ("%s There is no service status change for %s! No action needed."%(datetime,servicename))
				ths.close()
		except:
			print ("Error in DB connection or insert query(UP)")

conn.close()	
my_file.close()


