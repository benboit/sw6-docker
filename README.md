# Shopware 6 Docker-Setup

## About
This is an alternative docker-setup for the setup provided by shopware. This is
a work-in-progress: expect bugs and things not working!

## Vision
The main idea behind this project is to create an alternative / better setup. These
points will or may be covered in the future:

* a lightweight and fast setup for every docker-environment (linux and macosx)
* an out-of-the box useable development environment
* a set of base-images to use for production / staging environments
* base-images for packaging your shop as a distributable docker-image (builder-image)
* create an easy to understand and use [doc](doc/) on how to do things

## Setup (linux)
Copy or [download](https://raw.githubusercontent.com/benboit/sw6-docker/master/example/docker-compose.yml) the example/docker-compose.yml to your project directory (project-root). Then follow these steps int the cli:

Go to the project-root and start the containers.
 ```
    $ cd PROJECT_ROOT
    $ docker-compose up -d
 ```

Enter the docker cli-container and start the shopware-setup.
 ```
    $ docker-compose exec -u php cli bash
    $ cd /var/www
    $ bin/setup
 ```

Enter whatever details you like, with the exception of the following.
 ```
    Database host [localhost]: mysql
    Database user [app]: root
    Database password: root
 ```

 Create a hosts-entry or your host-machine [/etc/hosts] for shopware.local (or whatever host you configured during install)
 ```
 127.0.0.1 shopware.local
 ```

## Setup (macosx)
For some reasons (filesystem) docker is slow for mounted volumes on macosx in the native version. There are a few known ways to make setups faster on that platform.

### Use docker-machine (docker-toolbox) instead of native macosx-version
Docker-Toolbox starts a virtual-machine [VirtualBox] with an installed docker-environment and configures a local docker-client to use the virtual-machine as a docker-host. All commands available in docker, as well as docker-compose are working in the same way, as if docker was installed locally.

### Use docker-machine-nfs
docker-machine-nfs replaces the virtual-box shares [slow] with nfs-shares, which increase filesystem-performance.

## Progress
See [todo](TODO.md) for detailed information / roadmap
* nginx-image ([benboit/sw6-docker-nginx](https://hub.docker.com/r/benboit/sw6-docker-nginx)) => in progress
* php-fpm image ([benboit/sw6-docker-php](https://hub.docker.com/r/benboit/sw6-docker-php)) => in progress
* builder-image => not yet started
* mysql-image => use of base-image (done)!
* redis-image => use of base-image (done)!

[LICENSE](LICENSE.md)