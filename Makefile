COMPOSE = docker-compose
COMPOSE_FILE=srcs/docker-compose.yml

all:
	docker-compose -f $(COMPOSE_FILE) up -d

build:
	docker-compose -f $(COMPOSE_FILE) up -d --build

down:
	docker-compose -f $(COMPOSE_FILE) down

re:	down
	docker-compose -f $(COMPOSE_FILE) up -d --build

clean: down
	docker system prune -a

fclean:
	docker stop $$(docker ps -qa)
	docker system prune --all --force --volumes
	docker network prune --force
	docker volume prune --force

.PHONY	: all build down re clean fclean