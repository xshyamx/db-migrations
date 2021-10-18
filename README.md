# Database Migrations #

This repository tries to evaluate some of the popular database
migration tools available in the Java ecosystem.

1. [Flyway](https://flywaydb.org/)
2. [MyBatis Migrations](http://mybatis.org/migrations/)
3. [Liquibase](https://www.liquibase.org/)


There are 4 migrations steps 

1. Create employee table
2. Insert 2 records
3. Add a new `manager_id` column with foreign key reference itself (employee)
4. Update 1 record to establish a mananger relationship

## Flyway ##

Observations from the flyway community version 8.0.1

- Standard naming convention for sql files `V{i}__{name}.sql`
- Rollbacks not supported on community edition (only rolling forward)
- Supports baselining existing database
- Can clean entire database
- JDBC Driver jar file has to be copied into flyway install directory
- Easily display currently installed versions
- Single `flyway.conf` configuration file

## MyBatis Migrations ##

Observations from the MyBatis Migrations version 3.3.9

- Fixed directory structure for migration directory
- Standard naming convention for sqls `{id}-{name}.sql` (can be overriden
  by `--idpattern=000` otherwise uses timestamps)
- Rollbacks supported by providing undo sql as part of same sql file
- Supports baselining by providing a default `bootstrap.sql`
- Has lifecycle commands to initialize and create new migrations with templating
- JDBC Driver jar files maintained as part of the `drivers` directory
- Easily display current status & supports back & forth between versions
- Multiple configuration files to support connectivity to multiple environments

## Liquibase ##

Observations from the liquibase community version 4.5.0

- No standard directory structure
- `changeLogFile` needs to be passed for each command so, can follow
  any naming convention (or use same file in case of xml)
- Separate `liquibase.properties` to configure database connectivity
- Can cleanup all objects using `drop-all` command
- Requires tagging of a version before it can be rolled back
- Path to JDBC Driver jar configured in `liquibase.properties`
- Displays history of versions applied
- SQL changelogs have inline rollback SQL instructions
