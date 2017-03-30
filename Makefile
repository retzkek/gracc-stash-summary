.PHONY: image
image:
	docker build -t opensciencegrid/gracc-stash-summary:3.2-transfer .
	docker build -t opensciencegrid/gracc-stash-summary:transfer .
	docker build -t retzkek/gracc-stash-summary:3.2-transfer .
	docker build -t retzkek/gracc-stash-summary:transfer .

.PHONY: push
push:
	docker push retzkek/gracc-stash-summary:3.2-transfer
	docker push retzkek/gracc-stash-summary:transfer
