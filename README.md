# Hexo docker image for serving exising blog posts in markdown

> forked and modified from llfl/docker-hexo

## Pull image

```
docker pull tumluliu/docker-hexo
```

## Launch the container with docker-compose

1. Prepare the `source`, `themes` dir and `_config.yml` global config

2. Run

```
docker-compose up -d
```