build:
	docker build -f Dockerfile .

debug: build
	docker run -i -t `docker images -q |head -1` bash
