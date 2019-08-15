FROM node:alpine

RUN apk --update --no-progress add git openssh
WORKDIR /hexo

RUN npm install hexo-cli -g \
    && hexo init . \
    && npm install \
    && npm install hexo-generator-sitemap --save \
    && npm install hexo-generator-feed --save \
    && npm install hexo-deployer-git --save

VOLUME ["/hexo/source", "/hexo/themes", "/root/.ssh"]

EXPOSE 8080

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["/bin/bash"]