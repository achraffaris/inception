COMPOSE = docker compose
COMPOSE_FILE=srcs/docker-compose.yml

down:
	$(COMPOSE) -f $(COMPOSE_FILE) down 

build:
	$(COMPOSE) -f $(COMPOSE_FILE) build --no-cache 
run: build
	$(COMPOSE) -f $(COMPOSE_FILE) up 

	
	