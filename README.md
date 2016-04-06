grillcon at dbwebb (website)
================================

[![Join the chat at https://gitter.im/mosbth/dbwebb](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/mosbth/dbwebb?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[Website grillcon.dbwebb.se](http://grillcon.dbwebb.se) for the annual event for students and alumni, mainly at the education program Web programming at BTH. Together with some software engineers.




For developers and maintainers
--------------------------------

This is how I develop and maintain the website. Feel free to join in.



###Fresh install

Start by preparing your local development environment.

```
$ git clone <the original or your forked repo>
$ cd <the original or your forked repo>
$ make create-local-structure
$ make etc-hosts
$ make virtual-host
$ make update
```

Now open your browser at `local.grillcon.dbwebb.se` and browse the website.



###Keep updated

Keep your code base up to date, including the external packages and do a publish locally.

```
$ make update
```



###Develop and test locally

Make changes in your repo, publish using `make local-publish` and reload your browser.

```
# Do changes and then publish them locally.
$ make local-publish

# Clear the cache when publishing
$ make local-publish-clear
```



###Help me

* [Install YAML on Debian/Linux](http://dbwebb.se/t/5244).



```                                                            
 .                                                             
..:  Copyright (c) 2016 Mikael Roos, mos@dbwebb.se   
```                                                            
