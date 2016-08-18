#!/usr/bin/perl

my @environments = (
    'GITBUCKET_CONTAINER_NAME',
    'GITBUCKET_NETWORK_NAME'
);

my $arg = '';
foreach $var(@environments){$arg = "$arg\$\$$var"}
system("envsubst '$arg' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'")
