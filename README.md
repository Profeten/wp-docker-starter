# wp-docker-starter
Dockerized starting point for Wordpress development including most popular
starter themes. It's created to be used as a laboratory complete with all the
features and server configurations that you'd need in order to be getting
started with your Wordpress development as fast as possible.

## Features
* PHP7.0, NGINX and MariaDB
* Comes with phpMyAdmin
* Comes preloaded with Underscores, Sage 9 and Bones
* Persistence already configured
* Battery included

I've chosen to go with Sage 9 because it's in active development and as such is
perfect for the kind of things that I've created this repository for.

 $ docker-compose up -d

You'll find your Wordpress installation on http://localhost:8080 out of which
you'll be able to access and begin the installation process.

As of database configurations, you'll find them specified in you
docker-compose.yml as such:

 MYSQL_ROOT_PASSWORD: wpdocker
 MYSQL_USER: wpdocker
 MYSQL_PASSWORD: wpdocker
 MYSQL_DATABASE: wpdocker

And as host you'll simply put **mariadb** and you'll be guided to finalise the
installation.

Good luck and happy hacking!
