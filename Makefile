VERSION ?= latest
IMAGE_NAME ?= guestbook
DEV_NAME ?= guevarae

FULL_IMAGE_NAME=$(IMAGE_NAME)/$(DEV_NAME):$(VERSION)
PORT_NAME=0.0.0.0:3000:3000

.PHONY: build run build-run delete delete-force

build: 
	docker build . -t $(FULL_IMAGE_NAME)

run:
	docker run -it -p $(PORT_NAME) $(FULL_IMAGE_NAME)

build-run:
	docker build . -t $(FULL_IMAGE_NAME)
	docker run -it -p $(PORT_NAME) $(FULL_IMAGE_NAME)

delete:
	docker rmi $(FULL_IMAGE_NAME)

delete-force:
	docker rmi $(FULL_IMAGE_NAME) --force
