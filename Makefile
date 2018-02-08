all:
	docker build -t oleggorj/presto-base:latest presto-base
	docker build -t oleggorj/presto-coordinator:latest presto-coordinator
	docker build -t oleggorj/presto-worker:latest presto-worker
	docker-compose build

.PHONY: test clean

run:
	docker-compose up -d
	echo ">>>  Go to address http://localhost:8080"

down:
	docker-compose down
