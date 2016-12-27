# Overview #

[Homebrew](http://brew.sh)-formulae to install **Java** tools and libraries, in case Maven is not the best solution.


## Why not Maven? ##

In general, Maven is a perfect tool to deal with dependencies during the development of a Java project.
It is also possible to create software packages including all dependencies with Maven.
But there are a lot of software packages available that may use some libraries.
In this case Maven is quite a hard choice to manage these libraries.

* **derby**
 - Apache Derby database
* **hsqldb**
 - HSQL database
* **mysql-connector-java**
 - The MySQL Connector/J to connect to a MySQL database
* **postgresql-jdbc**
 - The PostgreSQL JDBC driver to connect to a PostgreSQL database
* **sqlite-jdbc**
 - A JDBC driver for SQLite databases

## Install ##

* `brew tap gbeine/homebrew-java`
* `brew install mysql-connector-java`
