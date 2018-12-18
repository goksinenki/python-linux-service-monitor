# python-linux-service-monitor

Linux System Automation - System Monitoring - Sysops

That script checks all the linux services status, save all service status data in postgresql database and notify admins if the status changes via email.

INSTALLATION (Tested in Linux Servers - RHEL - Centos)

Installation

Just install the required modules/libraries to your python project directory if you do not have them

xlsxwriter psycopg2 email smtplib

For example:

pip install psycopg2

Then, edit services.txt and replace the lines with the service names that you'd like to monitor and execute monitor.py

If you like you can make a cron as well.

Also, you can use that script for all devices/servers/clients that you can connect via SSH.

That's all !


Description:

I have prepared a monitoring script in Python Programming Language. I have made it with Python 3 and PostgreSQL database. That script checks the status of any services that you’d like to monitor, it saves datetime, servicename and status data to a postgresql database also it sends an e-mail if the status of services has changed. (ON/OFF or UP/DOWN).

monitor.py has 2 main parts actually.
In part 1, monitor.py is reading the “services.txt” file line by line which is in the same directory and check each services with the command “service --status-all | grep servicename” so you can use that script for any of services that you’d like. 

After checking the status monitor.py creates a temporary file named results.txt, print the results to console and save the data to monitor_db database. 
In part 2, monitor.py sends a query to monitor_db to checking the database for each service and looking for last 2 status values, if the current status and previous status of a service is different (Up/Down or On/Off) it prints the issue to console and also sends an e-mail to the recipient e-mail addresses which is in the code. If the current status and previous status of a service is same if  just prints the status to console and do not send e-mail.

You can see the screenshots  below. I have stopped the Textractor services. The script prints the status of service to console  and save the data to database.

![alt text](https://github.com/goksinenki/python-linux-service-monitor/blob/master/servicemonitor1.png)

![alt text](https://github.com/goksinenki/python-linux-service-monitor/blob/master/servicemonitor2.png)

Also it sends an e-mail with an attachment (log file) as below because one or more services status has been changed.

![alt text](https://github.com/goksinenki/python-linux-service-monitor/blob/master/servicemonitor3.png)

We executed the script again to understand what it is doing when nothing changed. It says no action needed when there is no service status change.

![alt text](https://github.com/goksinenki/python-linux-service-monitor/blob/master/servicemonitor4.png)


We have started the services again and then we have executed the script again. It says status changed and it sends e-mail again for status change.
Also, it save the data to database as you can see below.

![alt text](https://github.com/goksinenki/python-linux-service-monitor/blob/master/servicemonitor5.png)

![alt text](https://github.com/goksinenki/python-linux-service-monitor/blob/master/servicemonitor6.png)

Notes:  For SMTP I have used my external smtp server you can changed the code as you like.
For Database I have created the  user and database from terminal and grant access after that I have  installed phpPgAdmin for  easy management.
I have modified postgresql.conf to listen all ip addresses.

Thank you for reading ! :)


