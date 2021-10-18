.PHONY: db-start db-stop migrate

db-start:
	docker run -d \
  --name postgres \
  -p 5432:5432 \
  -e POSTGRES_PASSWORD=postgres \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_DB=employee \
  postgres:13.4-alpine

db-stop:
	docker rm -f postgres

db:
	docker exec -it postgres psql -U postgres -d employee

clean:
	cd ../flyway && flyway clean

emp:
	docker exec postgres psql -U postgres -d employee -c 'select * from employee'
  
baseline:
	liquibase generate-changelog

status:
	liquibase --changeLogFile=01-changelog.sql history

#
migrate:
	liquibase --changeLogFile=01-changelog.sql tag --tag 00; \
	for ver in `seq -f '%02g' 1 4`; do \
  liquibase --changeLogFile=$$ver-changelog.sql update --labels $$ver ; \
  liquibase --changeLogFile=$$ver-changelog.sql tag --tag $$ver ; \
  done
  
  
rollback:
	for ver in `seq 4 1`; do \
  liquibase --changeLogFile=0$$ver-changelog.sql rollback --tag 0`expr $$ver - 1` ; \
  done
