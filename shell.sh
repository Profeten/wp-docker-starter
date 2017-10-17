#!/bin/bash

#
#	Use this command to build the new js and scss that you've written
#####################

if [ "$1" = "build" ]; then
	docker exec -it wpd-php bash -c 'cd ./wp-content/themes/wpd && yarn build'
fi

#
#	Use this command to get shell access
#####################
if [ "$1" = "shell" ]; then
	docker exec -it wpd-php bash
fi

#
#	Use this command to run composer install
#####################
if [ "$1" = "composer" ]; then
	docker exec -it wpd-php bash -c 'cd ./wp-content/themes/wpd && composer install'
fi
