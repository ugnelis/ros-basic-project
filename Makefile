DOCKER_COMPOSE  ?= docker-compose

.PHONY: dev
start:
	$(DOCKER_COMPOSE) -f docker-compose.yml up

.PHONY: stop
stop:
	$(DOCKER_COMPOSE) -f docker-compose.yml down

.PHONY: ssh
ssh:
	$(DOCKER_COMPOSE) exec dev /bin/bash
