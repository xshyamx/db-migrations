-- // manager
-- Migration SQL that makes the change goes here.
alter table employee add column manager_id int references employee(id);


-- //@UNDO
-- SQL to undo the change goes here.

alter table employee drop column manager_id;
