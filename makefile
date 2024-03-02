.PHONY: build
build: docker-build
	docker run --rm --privileged -v /dev:/dev -v ${PWD}:/build my-packer:latest  raspios-lite.pkr.hcl

.PHONY: docker-build
docker-build:
	docker build  -t my-packer:latest .
