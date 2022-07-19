init: get-score-csv \
			start-docker
.PHONY: init

get-score-csv:
	mkdir -p workspace/data/

	mkdir -p .tmp; \
	cd .tmp; \
	git clone https://github.com/MasaoBlue/MasaoBlue.github.io.git; \
	cd MasaoBlue.github.io/iidx-top-rankers-viewer/versions/; \
	mv 27/ ../../../../workspace/data/; \
	mv 28/ ../../../../workspace/data/; \
	mv 29/ ../../../../workspace/data/; \
	cd ../; \
	mv notes.csv ../../../workspace/data/

	rm -rf .tmp
.PHONY: get-score-csv

start-docker:
	docker-compose up -d
.PHONY: start-docker