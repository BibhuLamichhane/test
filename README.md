**INDIVIDUAL CONTRIBUTION**
| CWID | Name | Contribution (description) | Percent Contribution |
| :--: | :--: | :------------------------- | :------------------: |
| A20605331 | Vishesh Gupta | - wrote main python script <br> - created git repo | 33%
| A20455536 | Nishant Kabra | - helped with file organization  <br> - created the README | 33%
| A20598376 | Bibhu Lamichhane | - added error handling <br> - helped with python script | 33%

**DATABASE SETUP**

In order for this script to run, you need to first have a copy of the database.
You can create the database by running the following commands:

Firstly, change your directory so that you're in the backend folder.
``` shell
cd backend
```
Then, access your MySQL server installation through the CLI.
``` shell
mysql -u root -p
```
Enter your MySQL's root password when prompted. Then enter:
``` sql
CREATE DATABASE payrollManagementDB;
EXIT;
```
Now that your database is created, you can enter the following command to replicate the database schema.
``` shell
mysql -u root -p payrollManagementDB < payroll.sql
```
Enter your root password when prompted.

You'll also create a user by which the script accesses the database.
This is important because a script should not utilize the root user, alongside being able to manage which privileges the script should be able to have.
Go back into the server with the root user, and enter the following SQL commands:
``` sql
CREATE USER 'student'@'localhost' IDENTIFIED BY 'illinoistech';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, REFERENCES, INDEX, ALTER ON `payrollmanagementdb`.* TO `student`@`localhost`
FLUSH PRIVILEGES;
EXIT;
```
Now your database should be setup as required.

**BACKEND ENVIRONMENT SETUP**

In order to run this program, it is suggested to be using Python version 3.12.5 or higher.
There is no guarantee that a lower version will be able to run the program as intended.

You'll first need to install the required packages by running
``` shell
pip install -r requirements.txt
```

After that, you can start the Django backend by running the following command.
``` shell
python manage.py runserver
```

**FRONTEND SETUP**

In order to actually access the user interface of the application, you'll need to have installed Node.js.
This project was compiled on v20.18.0, and there's no guarantee of the project's compatibility with other versions.

Once you have Node.js installed, then you can run the following commands to get the application up and running.

Firstly, make sure you're located in the base directory (deliverable-5). Then run:
``` shell
npm install
npm run dev
```
It should then say that the program is running on http://localhost:5173/ and by accessing that website, you should see the application.