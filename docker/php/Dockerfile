FROM php:7.3.1
############################################################################
# Install requried libraries
############################################################################
RUN apt-get update \
    && apt-get install -y librabbitmq-dev libssh-dev git libzip-dev zip unzip libxml2-dev \
        htop procps sendmail libpng-dev nano curl wget  \
    && pecl install amqp 

############################################################################
# Install Swoole
############################################################################
RUN pecl install swoole

############################################################################
# Install composer
############################################################################
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer


############################################################################
# Create php.ini inside container and configurate extensions
############################################################################
RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini

ENV php_ini /usr/local/etc/php/php.ini

RUN echo "[PHP]" >> /usr/local/etc/php/php.ini \
    && echo "extension=swoole.so" >> /usr/local/etc/php/php.ini 

#############################################################################
# Install docker extensions
#############################################################################
RUN docker-php-ext-install opcache bcmath sockets \
    && docker-php-ext-enable amqp \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install pcntl \
    && docker-php-ext-install soap \
    && docker-php-ext-configure zip --with-libzip \
    && docker-php-ext-install zip \
    && docker-php-ext-install gd \
    && docker-php-ext-install mysqli && docker-php-ext-enable mysqli \
    && docker-php-ext-enable swoole


############################################################################
# Update Linux app database and install Linux dev tools
############################################################################
RUN apt-get update \
    && apt-get install -y net-tools vim zip unzip zlib1g-dev \
       joe gnupg2 libldap2-dev inetutils-ping


############################################################################
# Generate user inside docker
############################################################################
COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
    