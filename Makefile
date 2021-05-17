#!/usr/bin/make -f
#
# Build website with environment
#
#

WWW_SITE	 = grillcon.dbwebb.se
WWW_LOCAL	 = local.$(WWW_SITE)
SERVER_ADMIN = mos@dbwebb.se # mos@$(WWW_SITE)

GIT_BASE 	= git/grillcon.dbwebb.se
HTDOCS_BASE = $(HOME)/htdocs
LOCAL_HTDOCS = $(HTDOCS_BASE)/$(WWW_SITE)
ROBOTSTXT	 = robots.txt

# Certificates for https
SSL_APACHE_CONF = /etc/letsencrypt/options-ssl-apache.conf
SSL_PEM_BASE 	= /etc/letsencrypt/live/$(WWW_SITE)

# Theme
LESS 		 = theme/style_grillcon.less
LESS_OPTIONS = --strict-imports --include-path=theme/mos-theme/style/
FONT_AWESOME = theme/mos-theme/style/font-awesome/fonts/



# target: help - Displays help.
.PHONY:  help
help:
	@echo "make [target] ..."
	@echo "target:"
	@egrep "^# target:" Makefile | sed 's/# target: / /g'



# target: clean-cache-anax        - Clean the local anax cache directory.
.PHONY: clean-cache-anax
clean-cache-anax:
	@$(call HELPTEXT,$@)
	-rm -f cache/anax/*



# target: update - Update codebase and publish by clearing the cache.
.PHONY: update
update: codebase-update site-build local-publish-clear



# target: production-publish - Publish latest to the production server.
.PHONY: production-publish
production-publish:
	ssh mos@$(WWW_SITE) -t "cd $(GIT_BASE) && git pull && make update"



# target: update - Publish website to local host.
.PHONY: local-publish
local-publish:
	rsync -av --exclude old --exclude .git --exclude cache --delete "./" $(LOCAL_HTDOCS)
	@[ ! -f $(ROBOTSTXT) ] ||  cp $(ROBOTSTXT) "$(LOCAL_HTDOCS)/htdocs/robots.txt"



# target: local-cache-clear - Clear the cache.
.PHONY: local-cache-clear
local-cache-clear:
	-sudo rm -f $(LOCAL_HTDOCS)/cache/anax/*



#
#
# target: local-publish-clear - Publish website to local host and clear the cache.
.PHONY: local-publish-clear
local-publish-clear: local-cache-clear local-publish



#
# Update codebase
#
.PHONY: codebase-update
codebase-update:
	git pull
	composer update



#
# Update repo with all submodules
#
.PHONY: submodule-init submodule-update
submodule-init:
	git submodule update --init --recursive

submodule-update:
	git pull --recurse-submodules && git submodule foreach git pull origin master



#
# Build
#
.PHONY: prepare-build

prepare-build:
	rm -rf build
	install -d build/css build/lint



# target: less-update - Build less and update site.
.PHONY: less-update
less-update: less local-publish



# target: less-update-clear - Build less and update site and clear cache.
.PHONY: less-update-clear
less-update-clear: less local-publish-clear



# target: less - Build less stylesheet and update the site with it.
.PHONY: less
less: prepare-build
	#lessc $(LESS_OPTIONS) $(LESS) build/css/style.css
	lessc --clean-css $(LESS_OPTIONS) $(LESS) build/css/style.min.css
	#cp build/css/style.css htdocs/css/style.css
	cp build/css/style.min.css htdocs/css/style.min.css

	rsync -av $(FONT_AWESOME) htdocs/fonts/
	rsync -av theme/mos-theme/js/ htdocs/js/mos-theme/



#
# Lint
#
.PHONY: lint

lint: less
	lessc --lint $(LESS) > build/lint/style.less
	- csslint build/css/style.css > build/lint/style.css
	ls -l build/lint/



# target: site-build - Build site structure from codebase.
.PHONY: site-build
site-build:
	# Copy Anax images
	#rsync -av vendor/mos/anax/webroot/img/ htdocs/img/

	# Copy from CImage
	install -d htdocs/cimage
	rsync -av vendor/mos/cimage/webroot/imgd.php htdocs/cimage/imgd.php
	rsync -av vendor/mos/cimage/icc/ htdocs/cimage/icc/
	#rsync -av vendor/mos/cimage/webroot/img/ htdocs/img/cimage/

	# Copy from mos-theme
	#install -d htdocs/js/mos-theme
	#rsync -av theme/mos-theme/js/ htdocs/js/mos-theme/

	# Make cache parts writable
	install --directory --mode 777 cache/cimage cache/anax
	rsync -av "./cache/" $(LOCAL_HTDOCS)/cache/

	# Sync to virtual host dir
	rsync -av --exclude old --exclude .git --exclude cache/ --delete "./" $(LOCAL_HTDOCS)



# target: etc-hosts - Create a entry in the /etc/hosts for local access.
.PHONY: etc-hosts
etc-hosts:
	echo "127.0.0.1 $(WWW_LOCAL)" | sudo bash -c 'cat >> /etc/hosts'
	@tail -1 /etc/hosts



# target: ssl-cert-create - One way to create the certificates.
.PHONY: ssl-cert-create
ssl-cert-create:
	cd $(HOME)/git/letsencrypt
	sudo service apache2 stop
	./letsencrypt-auto certonly --standalone -d $(WWW_SITE) -d www.$(WWW_SITE)
	sudo service apache2 start



# target: ssl-cert-update - Update certificates with new expiray date.
.PHONY: ssl-cert-renew
ssl-cert-update:
	cd $(HOME)/git/letsencrypt
	./letsencrypt-auto renew



# target: install-fresh - Do a fresh installation of a new server.
.PHONY: install-fresh
install-fresh: etc-hosts virtual-host update



# target: virtual-host - Create entries for the virtual host http.
.PHONY: virtual-host

define VIRTUAL_HOST_80
Define site $(WWW_SITE)
ServerAdmin $(SERVER_ADMIN)

<VirtualHost *:80>
	ServerName $${site}
	ServerAlias local.$${site}
	ServerAlias do3.$${site}
	ServerAlias do4.$${site}
	DocumentRoot $(HTDOCS_BASE)/$${site}/htdocs

	<Directory />
		Options Indexes FollowSymLinks
		AllowOverride All
		Require all granted
		Order allow,deny
		Allow from all
	</Directory>

	<FilesMatch "\.(jpe?g|png|gif|js|css|svg)$">
		   ExpiresActive On
		   ExpiresDefault "access plus 1 week"
	</FilesMatch>

	ErrorLog  $(HTDOCS_BASE)/$${site}/error.log
	CustomLog $(HTDOCS_BASE)/$${site}/access.log combined
</VirtualHost>
endef
export VIRTUAL_HOST_80

define VIRTUAL_HOST_80_WWW
Define site $(WWW_SITE)
ServerAdmin $(SERVER_ADMIN)

<VirtualHost *:80>
	ServerName www.$${site}
	Redirect "/" "http://$${site}/"
</VirtualHost>
endef
export VIRTUAL_HOST_80_WWW

virtual-host:
	install --directory $(HOME)/htdocs/$(WWW_SITE)/htdocs
	echo "$$VIRTUAL_HOST_80" | sudo bash -c 'cat > /etc/apache2/sites-available/$(WWW_SITE).conf'
	echo "$$VIRTUAL_HOST_80_WWW" | sudo bash -c 'cat > /etc/apache2/sites-available/www.$(WWW_SITE).conf'
	sudo a2ensite $(WWW_SITE) www.$(WWW_SITE)
	sudo a2enmod rewrite
	sudo apachectl configtest
	sudo service apache2 reload



# target: virtual-host-https - Create entries for the virtual host https.
.PHONY: virtual-host-https

define VIRTUAL_HOST_443
Define site $(WWW_SITE)
ServerAdmin $(SERVER_ADMIN)

<VirtualHost *:80>
	ServerName $${site}
	ServerAlias do3.$${site}
	ServerAlias do4.$${site}
	Redirect "/" "https://$${site}/"
</VirtualHost>

<VirtualHost *:443>
	Include $(SSL_APACHE_CONF)
	SSLCertificateFile 		$(SSL_PEM_BASE)/cert.pem
	SSLCertificateKeyFile 	$(SSL_PEM_BASE)/privkey.pem
	SSLCertificateChainFile $(SSL_PEM_BASE)/chain.pem

	ServerName $${site}
	ServerAlias do3.$${site}
	ServerAlias do4.$${site}
	DocumentRoot $(HTDOCS_BASE)/$${site}/htdocs

	<Directory />
		Options Indexes FollowSymLinks
		AllowOverride All
		Require all granted
		Order allow,deny
		Allow from all
	</Directory>

	<FilesMatch "\.(jpe?g|png|gif|js|css|svg)$">
		   ExpiresActive On
		   ExpiresDefault "access plus 1 week"
	</FilesMatch>

	ErrorLog  $(HTDOCS_BASE)/$${site}/error.log
	CustomLog $(HTDOCS_BASE)/$${site}/access.log combined
</VirtualHost>
endef
export VIRTUAL_HOST_443

define VIRTUAL_HOST_443_WWW
Define site $(WWW_SITE)
ServerAdmin $(SERVER_ADMIN)

<VirtualHost *:80>
	ServerName www.$${site}
	Redirect "/" "https://www.$${site}/"
</VirtualHost>

<VirtualHost *:443>
	Include $(SSL_APACHE_CONF)
	SSLCertificateFile 		$(SSL_PEM_BASE)/cert.pem
	SSLCertificateKeyFile 	$(SSL_PEM_BASE)/privkey.pem
	SSLCertificateChainFile $(SSL_PEM_BASE)/chain.pem

	ServerName www.$${site}
	Redirect "/" "https://$${site}/"
</VirtualHost>
endef
export VIRTUAL_HOST_443_WWW

virtual-host-https:
	echo "$$VIRTUAL_HOST_443" | sudo bash -c 'cat > /etc/apache2/sites-available/$(WWW_SITE).conf'
	echo "$$VIRTUAL_HOST_443_WWW" | sudo bash -c 'cat > /etc/apache2/sites-available/www.$(WWW_SITE).conf'
	sudo a2enmod ssl expires
	sudo apachectl configtest
	sudo service apache2 reload
