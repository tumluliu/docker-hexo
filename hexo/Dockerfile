FROM node:alpine
ENV LANG=C.UTF-8

RUN apk --update --no-progress add git openssh
WORKDIR /hexo

RUN npm install hexo-cli -g \
    && hexo init . \
    && npm install \
    && npm install hexo-generator-sitemap --save \
    && npm install hexo-generator-feed --save

VOLUME ["/hexo/source","/hexo/themes","/hexo/public"]

EXPOSE 8080

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
# ENTRYPOINT ["/usr/bin/hexo d -g"]
CMD ["/bin/sh"]
#CMD [ "hexo d -g" ]