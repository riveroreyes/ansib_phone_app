FROM php:7.3.1
RUN apt-get update && \
    apt-get install -y librabbitmq-dev libssh-dev git libzip-dev zip unzip libxml2-dev htop procps sendmail libpng-dev && \
    docker-php-ext-install opcache bcmath sockets && \
    pecl install amqp && \
    docker-php-ext-enable amqp && \
    docker-php-ext-install pdo_mysql && \
    docker-php-ext-install pcntl && \
    docker-php-ext-install soap && \
    docker-php-ext-configure zip --with-libzip && \
    docker-php-ext-install zip && \
    docker-php-ext-install gd

RUN yes | pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.default_enable = 1" >> /usr/local/etc/php/conf.d/xdebug.ini  \
    && echo "xdebug.remote_enable = 1" >> /usr/local/etc/php/conf.d/xdebug.ini  \
    && echo "xdebug.remote_autostart = 1" >> /usr/local/etc/php/conf.d/xdebug.ini  \
    && echo "xdebug.remote_host = 172.17.0.1" >> /usr/local/etc/php/conf.d/xdebug.ini  \
    && echo "xdebug.remote_port = 9000" >> /usr/local/etc/php/conf.d/xdebug.ini   \
    && echo "xdebug.remote_handler = dbgp" >> /usr/local/etc/php/conf.d/xdebug.ini   \
    && echo "xdebug.remote_connect_back = 0" >> /usr/local/etc/php/conf.d/xdebug.ini   \
    && echo "xdebug.idekey = 0" >> /usr/local/etc/php/conf.d/xdebug.ini   \
    && echo "xdebug.profiler_enable = VSCODE" >> /usr/local/etc/php/conf.d/xdebug.ini   \
    && echo "xdebug.remote_log = /src/xdebug.log" >> /usr/local/etc/php/conf.d/xdebug.ini 
    