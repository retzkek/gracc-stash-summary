.PHONY: image
image:
	docker build -t opensciencegrid/gracc-stash-summary:3.1 .
	docker build -t opensciencegrid/gracc-stash-summary:latest .
	docker build -t retzkek/gracc-stash-summary:3.1 .
	docker build -t retzkek/gracc-stash-summary:latest .

.PHONY: push
push:
	docker push retzkek/gracc-stash-summary:3.1
	docker push retzkek/gracc-stash-summary:latest
