.PHONY: all
all: container

.PHONY: container
container:
	docker build -t builder .

.PHONY: run
run:
	docker run -d -v `cd ../..; pwd`:/builder --hostname=cypb --name=cypb builder

.PHONY: debug
debug:
	docker run -ti -v `cd ../..; pwd`:/builder --hostname=cypb --name=cypb builder
