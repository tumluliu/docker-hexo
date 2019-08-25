#!/bin/sh

if [ "$1" = 's' ] || [ "$1" = 'server' ]; then
    set -- hexo s -p 8080
fi

if [ "$1" = 'd' ] || [ "$1" = 'deploy' ]; then
    set -- hexo d -g
fi

if [ "$1" = 'cl' ] || [ "$1" = 'clean' ]; then
    set -- hexo cl
fi

if [ "$1" = 'g' ] || [ "$1" = 'generate
' ]; then
    set -- hexo generate
fi

exec "$@"

