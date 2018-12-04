FROM php:7.1-fpm

RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-utils \
    zip \
    unzip \
    ssh \
    g++ \
    git \
    curl \
    libcurl4-gnutls-dev \
    libpq-dev \
    libicu-dev \
    zlib1g-dev


RUN docker-php-ext-install \
    intl \
    curl \
    bcmath \
    gettext \
    mbstring \
    zip

RUN pecl install xdebug && docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php \
        && mv composer.phar /usr/local/bin/ \
        && ln -s /usr/local/bin/composer.phar /usr/local/bin/composer

RUN echo 'alias phpunit="cd /var/www/html && ./vendor/bin/phpunit -d memory_limit=-1"' >> ~/.bashrc
RUN echo 'alias phpcs="cd /var/www/html && ./vendor/bin/phpcs"' >> ~/.bashrc

WORKDIR /var/www/html
