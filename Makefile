NAME = alexanderbauer0/beancount-import
VERSION = 1.3.0

.PHONY: all build push

all: build push

build:
	docker build --build-arg BEANCOUNT_IMPORT_VERSION=$(VERSION) -t $(NAME):$(VERSION) .

push:
	docker push $(NAME):$(VERSION)
