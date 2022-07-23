init: start-docker
.PHONY: init

deploy: build
	rm -rf ../docs
	mv app/build ../docs
.PHONY: deploy

build: start-docker
	docker-compose exec frontend sh -c "cd /app; npm run build"
.PHONY: build

start-docker:
	docker-compose up -d
.PHONY: start-docker
