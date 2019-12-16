FROM node:12.13.1-alpine
ENV LANG=C.UTF-8
ARG HEXO_VERSION=3.1.0

RUN apk --update --no-progress add git && \
    adduser -D hexo
WORKDIR /hexo

RUN npm install hexo-cli@${HEXO_VERSION} -g && \
    hexo init . && \
    npm install && \
    npm install --save hexo-generator-sitemap && \
    npm install --save hexo-generator-feed && \
    chown -R hexo /hexo

USER hexo

VOLUME ["/hexo/source","/hexo/themes","/hexo/public"]

EXPOSE 4321

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bin/sh"]