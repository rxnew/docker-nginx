#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: ${0} [port]"
    exit 1
fi

export NGINX_EXTERNAL_PORT=${1}
command docker-compose up -d
