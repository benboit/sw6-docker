# Shopware 6 Docker-Setup

## About
This is an alternative docker-setup for the setup provided by shopware. This is
a work-in-progress: expect bugs and things not working

## Vision
The main idea behind this project is to create an alternative / better setup. These
points will or may be covered in the future:

* a lightweight and fast setup for every docker-environment (an environment to run docker)
* an out-of-the box useable development environment
* a set of base-images to use for production / staging environments
* base-images for packaging your shop as a distributable docker-image (builder-image)
* create an easy to understand and use [doc](doc/) on how to do things

## Progress
See [todo](TODO.md) for detailed information / roadmap
* nginx-image => in progress
* php-fpm image => in progress
* builder-image => not yet started
* mysql-image => use of base-image (done)!
* redis-image => use of base-image (done)!
* es-image => use of base-image (done)!

[LICENSE](LICENSE.md)