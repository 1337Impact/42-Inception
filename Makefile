USER=mbenkhat


all: data
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d

data:
	@mkdir -p /home/${USER}/data/wordpress
	@mkdir -p /home/${USER}/data/mariadb

build:
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env build -d

down:
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env down

clean: down
	@rm -rf /home/${USER}/data
	@docker system prune

fclean: clean
	@docker stop $(docker ps -qa)
	@docker image rm -f $(docker image ls -aq)
	@docker network prune
	@docker volume prune


re: down all