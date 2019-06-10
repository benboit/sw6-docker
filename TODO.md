# Todo

* bad
  * currently node is required in the container (shopware builds css / js using it) => This inreases the image-size and ships build resources, which are for example not need in production. Build time is also increased dramatically (no alpine package)

* medium prio
  * change static user and group mapping for macosx to dynamic solution

* Low prio
  * bad => nginx is statically bound with php-fpm on host php
