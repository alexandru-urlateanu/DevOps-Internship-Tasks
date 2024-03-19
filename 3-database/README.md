To create a MY SQL container I ran the command: 

```docker run --name company -p 3306:3306 -e MYSQL_ROOT_PASSWORD=ROOTpw -d mysql```

After creating the container I accesed the terminal and used the command ```mysql -u root -p``` to login as root.

After logging in, I created a database with the query ```CREATE DATABASE company;```.

To use the database I ran the query ```USE company;```.

To import the company.sql file in the company database I ran the query ```SOURCE company.sql```.

After first trying to run this query I encountered a problem -  in the employees table, the Department column is set as an INT, but in the INSERT statement (row 53), it was trying to insert the value 'Consulting' (which is VARCHAR).
I changed the value with an INT value and managed to import the company.sql file into my database.

![Screenshot of loading the database file](https://github.com/alexandru-urlateanu/DevOps-Internship-Tasks/blob/main/3-database/sql1.png?raw=true)

I created a new user alex by running the commands:

```CREATE USER 'alex'@'%' IDENTIFIED BY 'alexpw';```

```GRANT ALL PRIVILEGES ON company.* TO 'alex'@'%';```

```FLUSH PRIVILEGES;```

After logging in as the alex user, to show the average salary for each department, I ran the query:

```SELECT department, AVG(salary) AS average_salary FROM employees GROUP BY department;```

![Screenshot of running query](https://github.com/alexandru-urlateanu/DevOps-Internship-Tasks/blob/main/3-database/sql2.png?raw=true)

The data from the database is preserved in a volume mounted in the database container.
![Screenshot of database container volume](https://github.com/alexandru-urlateanu/DevOps-Internship-Tasks/blob/main/3-database/sql%20volume.png?raw=true)
