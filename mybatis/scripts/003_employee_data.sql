-- // employee data
-- Migration SQL that makes the change goes here.
insert into employee
  (name,location) values
  ('John Doe', 'Texas');

insert into employee
  (name,location) values
  ('Jane Doe', 'Texas');

-- //@UNDO
-- SQL to undo the change goes here.

delete from employee where name='John Doe';

delete from employee where name='Jane Doe';
