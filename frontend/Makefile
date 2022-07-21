init: start-docker
.PHONY: init

build:
	docker-compose exec frontend sh -c "cd /app; npm run build"
.PHONY: build

start-docker:
	docker-compose up -d
.PHONY: start-docker
