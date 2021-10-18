.PHONY: db-start db-stop migrate

MIGRATE_CMD := ~/.sdkman/candidates/migrate/3.3.9/bin/migrate

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

migrate:
	$(MIGRATE_CMD) up

clean:
	$(MIGRATE_CMD) down 5

info:
	$(MIGRATE_CMD) status

download:
	curl -o drivers/postgresql-42.2.18.jar \
  -L https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.18/postgresql-42.2.18.jar
