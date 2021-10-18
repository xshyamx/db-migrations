--liquibase formatted sql
				
--changeset shyam:04
update employee set manager_id=(select id from employee where name='Jane Doe') where name = 'John Doe';

--rollback update employee set manager_id=null where name = 'John Doe';
