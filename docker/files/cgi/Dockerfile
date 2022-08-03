FROM php:7.2-fpm

# apt-get
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    g++ \
    memcached \
    wget \
    unzip \
    vim \
    curl \
    dnsutils \
    procps

RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini

# php-extension-installer
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions gd xdebug mysqli pdo_mysql sockets redis imap tidy zip opcache swoole bcmath gmp exif mongodb soap intl apcu_bc

# Composer
RUN curl -sSL https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

# GIT
# RUN apt update && apt-get install git

# Nodejs 
# RUN apt update && apt-get install gnupg nodejs 

# yarn
# curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
# echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
# sudo apt update
# sudo apt install yarn

# COPY docker-entrypoint.sh /usr/local/bin/
# RUN chmod +x /usr/local/bin/docker-entrypoint.sh
# CMD ["/usr/local/bin/docker-entrypoint.sh"]