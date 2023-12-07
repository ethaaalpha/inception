all:
	docker compose -f src/docker-compose.yml up --build 

clean:
	sh todelete.sh