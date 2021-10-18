--liquibase formatted sql

--changeset shyam:01
create table if not exists employee (
	id serial,
	name text,
	location text,
	primary key (id)
);

--rollback drop table employee;
