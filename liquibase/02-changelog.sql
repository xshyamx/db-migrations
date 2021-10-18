--liquibase formatted sql
				
--changeset shyam:02
insert into employee
  (name,location) values
  ('John Doe', 'Texas');

insert into employee
  (name,location) values
  ('Jane Doe', 'Texas');

--rollback delete from employee where name='John Doe';

--rollback delete from employee where name='Jane Doe';
