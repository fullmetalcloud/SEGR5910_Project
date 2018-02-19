VERSION ?= latest
IMAGE_NAME ?= guestbook
DEV_NAME ?= guevarae

.PHONY: build run delete delete-force

build: 
	docker build . -t $(IMAGE_NAME)/$(DEV_NAME):$(VERSION)

run:
	docker run -it -p 0.0.0.0:3000:3000 $(IMAGE_NAME)/$(DEV_NAME):$(VERSION)

delete:
	docker rmi $(IMAGE_NAME)/$(DEV_NAME):$(VERSION)

delete-force:
	docker rmi $(IMAGE_NAME)/$(DEV_NAME):$(VERSION) --force
