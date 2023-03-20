# all targets are phony
# https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html
.PHONY: default rm rmi rmv clean down build up logs prod-down prod-up prod-logs

 # default 'make' command uses docker-compose.yaml to build, up -d and logs -f
.DEFAULT_GOAL := default

# remove all containers
rm:
	docker ps -aq |  xargs docker rm -f

# remove all images
rmi:
	docker images -aq | xargs docker rmi -f

# build the image
build:
	docker-compose build

# run containers in background
up:
	docker-compose up -d

# follow the logs
logs:
	docker-compose logs -f