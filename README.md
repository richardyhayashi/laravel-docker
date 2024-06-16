# Laravel App Docker

## Create Laravel Project with Composer

`$ composer create-project laravel/laravel src`

or

`$ composer global require laravel/installer`
`$ laravel new src`

### Get Laravel Version

In Laravel src directory
`$ php artisan --version`

### Start Laravel

In Laravel src directory
`$ php artisan serve`

## Initialize Database

* Setup Database depending on what is used below.
* Modify .env in src/ for 

`$ docker compose exec php php /var/www/html/artisan migrate`

### Sqlite

* Uncomment Sqlite section "RUN apk --no-cache add build-base ..." while commenting other sections in docker-compose.yaml file.

* Setp src/.env:
    DB_CONNECTION=sqlite
    # DB_HOST=127.0.0.1
    # DB_PORT=3306
    # DB_DATABASE=laravel
    # DB_USERNAME=root
    # DB_PASSWORD=

### MySQL

* Uncomment MySQL section "RUN apk --no-cache add build-base ..."  while commenting other sections in docker-compose.yam

* Setp src/.env:
    DB_CONNECTION=mysql
    DB_HOST=mysql
    DB_PORT=3306
    DB_DATABASE=laravel
    DB_USERNAME=someuser
    DB_PASSWORD=secret

### PostgreSQL

* Uncomment PostgreSQL section "RUN apk --no-cache add build-base ..." while commenting other sections in docker-compose.yam

* Setp src/.env:
    DB_CONNECTION=postgres
    DB_HOST=postgres
    DB_PORT=5432
    DB_DATABASE=laravel
    DB_USERNAME=someusesr
    DB_PASSWORD=secret

## Instructions Taken From:

### Andrew Schmelyun
* Create a local Laravel dev environment with Docker
