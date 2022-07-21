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
	
	sed -i 's/"10","SCORE","-","595","812","1055","-","597","806","1105","-","-","5","8","10","-","5","8","10","-","-","5","8","10","-","5","8","10","-"/"10","SCORE","-","595","812","1055","-","597","806","1105","-","-","5","8","10","-","5","8","10","-"/' workspace/data/notes.csv
	sed -i 's/"17","Do Back Burn","-","364","728","1078","-","456","788","1096","-","-","4","7","10","-","5","9","10","-","-","4","7","10","-","5","9","10","-"/"17","Do Back Burn","-","364","728","1078","-","456","788","1096","-","-","4","7","10","-","5","9","10","-"/' workspace/data/notes.csv
	sed -i 's/"7","Somebody Like You","-","376","606","933","-","375","603","937","-","-","4","7","9","-","4","7","9","-","-","4","7","9","-","4","7","9","-"/"7","Somebody Like You","-","376","606","933","-","375","603","937","-","-","4","7","9","-","4","7","9","-"/' workspace/data/notes.csv

	rm -rf .tmp
.PHONY: get-score-csv

start-docker:
	docker-compose up -d
.PHONY: start-docker