NAME=thefab/centos-jenkins-slave
VERSION=$(shell ./version.sh)

build:
	docker build -f Dockerfile -t $(NAME):$(VERSION) .

debug: build
	docker run -i -t $(NAME):$(VERSION) bash

release:
	if test "$(VERSION)" != "dev" -a "${DOCKER_PASSWORD}" != ""; then docker login -e="${DOCKER_EMAIL}" -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"; docker push $(NAME):$(VERSION); fi
