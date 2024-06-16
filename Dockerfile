FROM php:8.3.8-fpm-alpine

ENV LANG="C.UTF-8"

# Sqlite
RUN apk --no-cache add build-base sqlite-dev sqlite && \
    docker-php-ext-install pdo pdo_sqlite

# MySQL
#RUN apk --no-cache add build-base mysql-dev && \
#    docker-php-ext-install pdo pdo_mysql

# PostgreSQL
#RUN apk --no-cache add build-base postgresql-dev && \
#    docker-php-ext-install pdo pdo_pgsql

# Set working directory.
#WORKDIR /app

#COPY /src .

#EXPOSE 8000

#CMD ["php", "artisan", "serve", "--host=0.0.0.0"]