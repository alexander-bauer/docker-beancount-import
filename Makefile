NAME = alexanderbauer0/beancount-import
VERSION = 1.3.0

.PHONY: all build

all: build

build:
	docker build --build-arg BEANCOUNT_IMPORT_VERSION=$(VERSION) -t $(NAME):$(VERSION) .
