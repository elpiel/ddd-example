USER_ID = $(shell id -u)
USER_GROUP = $(shell id -g)

.PHONY: composer-install
composer-install:
	docker run \
	-it \
	--rm \
	--tty \
	-v ${PWD}:/app \
	-u $(USER_ID):$(USER_GROUP) \
	composer install

.PHONY: unit-tests
unit-tests:
	docker-compose exec \
	-u $(USER_ID):$(USER_GROUP) \
	-w /app \
	php \
	./bin/phpunit
