FROM php:7.3-alpine

# Install Composer a Dependency Manager for PHP
# then use it to install the Laravel Installer Tool
# and create a laravel user for app development
WORKDIR /opt/composer
COPY scripts/install-composer.sh ./
RUN ./install-composer.sh \
    && ln -s $(pwd)/composer.phar /usr/local/bin/composer \
    && apk add zlib-dev libzip-dev \
    && docker-php-ext-install -j$(nproc) zip \
    && export COMPOSER_HOME="$(pwd)" \
    && composer global require "laravel/installer" \
    && ln -s $(pwd)/vendor/bin/laravel /usr/local/bin/laravel \
    && mkdir /code \
    && adduser -h /code -s /bin/ash -D -H laravel \
    && chown laravel.laravel /code

WORKDIR /code
USER laravel

CMD [ "/bin/ash" ]
