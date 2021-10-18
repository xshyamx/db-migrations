--liquibase formatted sql
				
--changeset shyam:03
alter table employee add column manager_id int references employee(id);

--rollback alter table employee drop column manager_id;
