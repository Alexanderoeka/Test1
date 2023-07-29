.SILENT:

############# DOCKER
buildup:
	./npm.sh install
	docker compose up --build
	./composer.sh install

build:
	docker compose build
up:
	docker compose up -d

down:
	docker compose down

exec_docker:
	docker compose exec -ti $(c) sh

ps:
	docker compose ps
############# DOCKER


############# PHP
clear_cache:
	./console.sh cache:clear

composer:
	docker compose run php composer $(c)
	docker compose rm php -f

console:
	docker compose exec -ti php php bin/console $(f)
############# PHP


############# PHP UTILS
get_companies:
	./console.sh get:companies

make_migration:
	./console.sh doctrine:migrations:diff

migrate:
	./console.sh doctrine:migrations:migrate

test:
	docker compose exec -ti php php bin/phpunit $(f)
############# PHP UTILS


############# NODE
npm:
	docker compose run node npm $(c)
	docker compose rm node -f
############# NODE




