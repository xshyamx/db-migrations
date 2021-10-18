update employee set manager_id=(select id from employee where name='Jane Doe') where name = 'John Doe';
