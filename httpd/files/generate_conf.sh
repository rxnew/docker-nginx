#!/bin/sh

conf_dir=/etc/nginx/conf.d
conf_file=${conf_dir}/default.conf
env_file=${conf_dir}/.env

arg=''
while read line;
do
    name=${line%%=*}
    arg=${arg}\$\$${name}
done < $env_file

command envsubst \'${arg}\' < ${conf_file}.template > ${conf_file}
