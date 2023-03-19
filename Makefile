USER=mbenkhat


all: mkdirs
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d

mkdirs:
	@mkdir -p /home/${USER}/data/wordpress
	@mkdir -p /home/${USER}/data/mariadb

build:
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env build -d

down:
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env down

clean: down
	@docker system prune -f


fclean: clean
	@rm -rf /home/${USER}/data
	@docker image rm -f $$(docker image ls -aq)
	@docker volume rm -f $$(docker volume ls -q)

re: down all