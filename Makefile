init:
	docker-compose build --no-cache
	make up

up:
	make down
	docker-compose up $(OPT)

down:
	docker-compose down -v

sql:
	@docker-compose exec oracle bash -c 'sqlplus $$PDB_USERNAME/$$PDB_PASSWORD@//localhost:1521/$$PDB_DATABASE'
