# inception

A 42School project for working with docker 

The project aims to create several docker containers from scratch, and then orchestrate them with docker compose.

## Process
 - Create three containers (Nginx, WordPress and MariaDB)
 - Each container must handle one working process
 - Running `make` must build and run the containers
 - Only the NGINX container is accessible using port 443

## Resources
DOCKER:
- https://docs.docker.com/reference/
- https://docs.docker.com/compose/
- https://docs.docker.com/engine/security/rootless/
- https://docs.docker.com/engine/reference/commandline/run/
- https://www.bmc.com/blogs/docker-cmd-vs-entrypoint/
- https://sysdig.com/blog/dockerfile-best-practices/
- https://cloud.google.com/architecture/best-practices-for-building-containers
- https://www.docker.com/blog/intro-guide-to-dockerfile-best-practices/
- https://codeopolis.com/posts/25-basic-docker-commands-for-beginners/
- https://github.com/hexops/dockerfile
- https://iximiuz.com/en/posts/container-networking-is-simple/
- https://iximiuz.com/en/posts/container-learning-path/
- https://jpetazzo.github.io/2021/11/30/docker-build-container-images-antipatterns/
- https://medium.com/factualopinions/docker-compose-tricks-and-best-practices-5e7e43eba8eb
- https://blog.phusion.nl/2015/01/20/docker-and-the-pid-1-zombie-reaping-problem/
- https://github.com/docker/labs/blob/master/networking/A2-bridge-networking.md
- https://mariadb.com/kb/en/installing-and-using-mariadb-via-docker/
 
NGINX:
- https://www.nginx.com/resources/wiki/start/topics/examples/full/
 
WORDPRESS:
- https://developer.wordpress.org/cli/commands/
 
PHP-FPM:
- https://gist.github.com/lidaobing/673798

