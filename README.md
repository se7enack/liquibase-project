# liquibase-project

## Create mysql endpoint
```bash
docker build . -t mysqlvm
docker run -it -p 3306:3306 mysqlvm
```

## Install Liquibase
```bash
brew install liquibase
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

