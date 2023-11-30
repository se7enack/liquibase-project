--liquibase formatted sql



--changeset stephen.burke:1 labels:Rel-0.0.1 context:Release 1.0.0
--comment: Added employees table
create table employees (
    id int primary key auto_increment not null,
    username varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE employees;



--changeset stephen.burke:2 labels:Rel-1.0.0 context:Release 1.0.0
--comment: Added company table
create table company (
    id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE company;



--changeset stephen.burke:3 labels:Rel-1.0.0 context:Release 1.0.0
--comment: Added country table
alter table employees add column country varchar(2)
--rollback ALTER TABLE employees DROP COLUMN country;



--changeset ryan.bradley:4 labels:Rel-2.0.0 context:Release 2.0.0
--comment: Added names table
create table names (
    id int primary key auto_increment not null,
    username varchar(50) not null,
    firstName varchar(50) not null,
    lastName varchar(50) not null
)
--rollback DROP TABLE names;



--changeset ryan.bradley:5 labels:HF-2.0.1 context:Release 2.0.1
--comment: add middle name to names
alter table names add column middleName varchar(50)
--rollback ALTER TABLE person DROP COLUMN middleName;


