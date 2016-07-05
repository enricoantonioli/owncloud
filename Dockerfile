FROM owncloud:9.0.0
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y&&apt-get install -y libldap2-dev samba-client 
RUN docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ 
RUN docker-php-ext-install ldap 
