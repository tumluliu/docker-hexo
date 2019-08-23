#!/bin/sh

if [ "$1" = 's' ] || [ "$1" = 'server' ]; then
    set -- hexo s -p 8080
fi

if [ "$1" = 'd' ] || [ "$1" = 'deploy' ]; then
    set -- hexo cl && hexo d -g
fi

exec "$@"

