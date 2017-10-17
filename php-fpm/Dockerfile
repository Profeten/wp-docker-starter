FROM php:7.1-fpm
MAINTAINER johan@pledger.se

# Install modules
RUN buildDeps="wget git unzip libpq-dev libzip-dev libicu-dev curl" && \
    apt-get update && \
    apt-get install -y $buildDeps --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* && \
    docker-php-ext-install \
        pdo \
        mysqli \
        sockets \
        intl \
        zip

# Installing nodejs, npm and yarn

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y nodejs && \
    npm install npm@latest -g && \
    npm install -g yarn

# Install Composer.
ENV COMPOSER_HOME /root/composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
ENV PATH $COMPOSER_HOME/vendor/bin:$PATH

RUN usermod -u 1000 www-data

WORKDIR /var/www/html

CMD ["php-fpm"]

EXPOSE 9000
