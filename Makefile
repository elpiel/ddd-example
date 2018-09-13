USER_ID = $(shell id -u)
USER_GROUP = $(shell id -g)

.PHONY: composer-install
composer-install:
	docker run \
	--rm \
	--interactive \
	--tty \
	--env COMPOSER_HOME='/home/www-data' \
	--volume ${PWD}:/app \
#	--volume ${HOME}/.cache/composer:/tmp \
	--user $(USER_ID):$(USER_GROUP) \
	composer install
