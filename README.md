# Project : "XM TEST"

## Application Deployment Steps

#### 1

    Copy .env.dist to .env in main and api derictory

#### 2

    Execute `make buildup` command

#### 3

    Execute `make migrate` command
make
#### 4

    Execute `make get_companies`

## BASIC

Build whole project:

    make buildup

Get the composer and npm dependencies, respectively:

    make composer c=install
    make npm c=install

Create a new migration and fill in migrations :

    make make_migration
    make migrate

Up or down project:

    make up
    make down

Check condition of containers:

     make ps

Execute some command inside container of php :

    make console c=

Go inside the container by name SERVICE:

    make exec_docker c=

Clean cache of Symfony api:

    make clear_cache

Set companies to DB from remote json for hints:

    make get_companies

Execute tests for project:

    make test f=

Profiler at: `http://localhost/_profiler/`

Mailer at: `http://localhost:1080/`

## Possible incidents

### 1

    If any NGINX or PostgreSQL services are already running on the same ports,
        then the up of containers will not happen.

### 2

    If there is no SERVICE name in docker-compose or docker compose,
        the console co  mmand will not start, because the command is launched in the container by it.

### 3

    Commands that connected with docker mightn't execute without sudo.
         Depends on how you configured docker before