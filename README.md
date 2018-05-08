GrillCon at dbwebb (website)
================================

[![Join the chat at https://gitter.im/mosbth/dbwebb](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/dbwebb-se/grillcon?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[Website grillcon.dbwebb.se](https://grillcon.dbwebb.se) for the annual event for students and alumni, mainly at the education program Web programming at BTH. Together with some software engineers.




For developers and maintainers
--------------------------------

This is how I do it on Debian/Linux.

Inspect the Makefile to find out whats actually happens.



### Dependencies

* Apache2 and PHP5 (with pecl and GD)

```
$ sudo apt-get install apache2 php5 libapache2-mod-php5 php5-dev php-pear php5-gd
```

* [Composer](https://getcomposer.org/download/)
* [Yaml](https://dbwebb.se/t/5244)



### Fresh install

Start by preparing your local development environment.

```
$ git clone <the original or your forked repo>
$ cd <the original or your forked repo>
$ make etc-hosts
$ make virtual-host
$ make update
```

Now open your browser at `local.grillcon.dbwebb.se` and browse the website.

If you need to upgrade your existing installation you can just redo it all.

```
$ make etc-hosts virtual-host update
```



### Keep updated

Update the code base, the external packages and publish locally.

```
$ make update
```



### Develop and test locally

Make changes in your repo, publish using `make local-publish` and reload your browser.

```
# Do changes and then publish them locally.
$ make local-publish

# Clear the cache when publishing
$ make local-publish-clear
```



### Install all submodules

Some content is available in external submodules. To install them, where you have the properties to do so, do like this.

```
$ make submodule-init local-publish
```

To keep updated, including all submodules.

```
$ make update-all
```



### Help me

* [Install YAML on Debian/Linux](http://dbwebb.se/t/5244).



```                                                            
 .                                                             
..:  Copyright (c) 2016 Mikael Roos, mos@dbwebb.se   
```                                                            
