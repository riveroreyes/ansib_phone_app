#!/bin/bash

# check who owns the working directory
USER_ID=$(stat -c "%u" $PWD)

# set the python run uid to the user id we just retrieved
PHP_RUN_UID=${PHP_RUN_UID:=${USER_ID}}
PHP_RUN_USER=${PHP_RUN_USER:=user}
PHP_RUN_GROUP=${PHP_RUN_GROUP:=user}

# test to see if the user already exists
PHP_RUN_USER_TEST=$(grep "[a-zA-Z0-9\-\_]*:[a-zA-Z]:${PHP_RUN_UID}:" /etc/passwd)


# Update the user to the configured UID and group
if [ -n "${PHP_RUN_USER_TEST}" ]; then
    echo "Update user '$PHP_RUN_USER'"

    usermod -l ${PHP_RUN_USER} $(id -un ${PHP_RUN_UID})
    usermod -u $PHP_RUN_UID -g $PHP_RUN_GROUP $PHP_RUN_USER

# Else create the user with the configured UID and group
else
    echo "Create user '$PHP_RUN_USER'"

    # Create the user with the corresponding group
    mkdir /home/$PHP_RUN_USER
    groupadd $PHP_RUN_GROUP
    useradd -u $PHP_RUN_UID -g $PHP_RUN_GROUP -d /home/$PHP_RUN_USER $PHP_RUN_USER
    chown $PHP_RUN_USER:$PHP_RUN_GROUP /home/$PHP_RUN_USER
fi

export HOME=/home/$PHP_RUN_USER



echo "Running command '$*'"
exec su -p - ${PHP_RUN_USER} -s /bin/bash -c "$*"