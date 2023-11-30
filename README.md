# liquibase-project



## Install Liquibase
```bash
brew install liquibase
```


## Create mysql endpoint
```bash
docker build . -t mysqlvm
docker run -it -p 3306:3306 mysqlvm
```


## Connect to SQL
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
