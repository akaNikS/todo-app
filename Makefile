start-db:
	docker run --name=todo-db -e POSTGRES_PASSWORD='qwerty1' -p 5436:5432 -d --rm postgres
db-migrate:
	migrate -path ./schema -database 'postgres://postgres:qwerty1@localhost:5436/postgres?sslmode=disable' up