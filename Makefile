build:
	docker-compose build 
stack-up: generate-cert build
	docker-compose up
stack-down:
	docker-compose down
generate-cert:
	./ops/scripts/generate-certs.sh
