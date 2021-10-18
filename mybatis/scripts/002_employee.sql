-- // employee.
-- Migration SQL that makes the change goes here.

create table if not exists employee (
	id serial,
	name text,
	location text,
	primary key (id)
);

-- //@UNDO
-- SQL to undo the change goes here.

drop table employee;
