#!/bin/sh

a2ensite swarm.conf

a2enmod rewrite
a2enmod ssl
a2enmod headers
a2enmod proxy_wstunnel
a2enmod proxy_http 
a2enmod proxy
a2enmod proxy_balancer
a2enmod lbmethod_byrequests

# Enable the swarm.conf configuration

# Restart Apache to apply changes
apachectl -D FOREGROUND