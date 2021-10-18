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

migrate:
	flyway -community migrate

clean:
	flyway -community clean

info:
	flyway -community info
