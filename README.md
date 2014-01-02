# Overview #

[Homebrew](http://brew.sh)-formulae to install **Java** tools and libraries, in case Maven is not the best solution.


## Why not Maven? ##

In general, Maven is a perfect tool to deal with dependencies during the development of a Java project.
It is also possible to create software packages including all dependencies with Maven.
But there are a lot of software packages available that may use some libraries.
In this case Maven is quite a hard choice to manage these libraries.

*   **mysql-connector-java**
    -   3rd party tools need the MySQL Connector/J to connect to a MySQL database
*   **postgresql-java**
    -   3rd party tools need the PostgreSQL JDBC driver to connect to a PostgreSQL database

## Install ##

*   `brew tap gbeine/homebrew-java`
*   `brew install mysql-connector-java`
