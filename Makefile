.PHONY: test
test:
	docker-compose -f docker-compose.yml -f docker-compose.test.yml run app sh -c "mix test" --rm

.PHONY: down
down:
	docker-compose down -v --remove-orphans

.PHONY: up
up: down
	docker-compose up

.PHONY: build
build:
	docker-compose build --no-cache