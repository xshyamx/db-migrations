-- // manager data
-- Migration SQL that makes the change goes here.

update employee set manager_id=(select id from employee where name='Jane Doe') where name = 'John Doe';

-- //@UNDO
-- SQL to undo the change goes here.

update employee set manager_id=null where name = 'John Doe';
