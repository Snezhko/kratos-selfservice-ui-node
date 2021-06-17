FROM node:16.3-alpine3.13

RUN npm install -g npm@7.18.1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ARG LINK=no

RUN adduser -S ory -D -u 10000 -s /bin/nologin

COPY package.json .
COPY package-lock.json .

RUN npm ci

COPY . /usr/src/app

RUN if [ "$LINK" == "true" ]; then (cd ./contrib/sdk/generated; rm -rf node_modules; npm ci; npm run build); \
    cp -r ./contrib/sdk/generated/* node_modules/@ory/kratos-client/; \
    fi

RUN npm run build

RUN chown ory: ./start_ui.sh

USER 10000

ENTRYPOINT ./start_ui.sh

EXPOSE 4455
