CONTAINER_NAME=crontab

status:
	docker compose ls
	docker container ls
	docker volume ls
	docker network ls

watch:
	watch -n 5 make status 

shutdown:
	docker-compose down

shutdown_volumes:
	docker-compose down -v

start: shutdown
	docker compose up

exec:
	docker exec -it $(CONTAINER_NAME) /bin/bash