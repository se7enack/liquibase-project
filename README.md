# liquibase-project



## Install Liquibase
```bash
brew install liquibase
```

##### Edit liquibase.properties to point to correct path of mysql-connector-j-8.2.0.jar and change password to match Dockerfile

## Create mysql endpoint
```bash
docker build . -t mysqlvm
docker run -it -p 3306:3306 mysqlvm
```


## Connect to SQL
##### Password in Dockerfile should match liquibase.properties
```bash
mysql -u root -p
```

## Create test db and connect to it
```SQL
CREATE DATABASE liquibasetest;
SHOW DATABASES;
CONNECT liquibasetest
```

## Run Liquibase update from bash
```bash
liquibase update
```

## Check changelog from SQL
```SQL
SHOW TABLES;
SELECT * FROM databasechangelog;
```

## Example
<img src="https://github.com/se7enack/liquibase-project/blob/main/example.png?raw=true" width="1200">


## To create a changelog SQL file from an existing DB
```bash
liquibase generateChangeLog
```
