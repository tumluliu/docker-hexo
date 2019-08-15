FROM node:alpine

RUN \
    apk --update --no-progress add git openssh

WORKDIR /hexo

RUN \
    npm install hexo-cli -g \
    && npm install -g cnpm

CMD ["/bin/bash"]
