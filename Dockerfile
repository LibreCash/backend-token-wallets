FROM mhart/alpine-node:8.6

WORKDIR /usr/src/app
ADD . /usr/src/app

RUN npm prune --production && \
    npm install --production && \
    rm -rf ./src ./test /root/.npm/_cacache

CMD npm run serve
