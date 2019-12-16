#!/bin/sh

if [ "$1" = 's' ] || [ "$1" = 'server' ]; then
    set -- hexo s -p 4321
fi

if [ "$1" = 'd' ] || [ "$1" = 'deploy' ]; then
    set -- hexo d -g
fi

if [ "$1" = 'cl' ] || [ "$1" = 'clean' ]; then
    set -- hexo cl
fi

if [ "$1" = 'g' ] || [ "$1" = 'generate' ]; then
    set -- hexo generate
fi

if [ "$1" = 'n' ] || [ "$1" = 'new' ]; then
    set -- hexo new $2
fi

exec "$@"
