FROM node:lts-alpine

# master | develop | ...
ARG ETHERPAD_VERSION=master

ARG DIR=/etherpad
ARG TMP=/tmp/etherpad.tar.gz

ENV NODE_ENV=production

WORKDIR ${DIR}

RUN echo "Getting version: ${ETHERPAD_VERSION}" && \
	apk add --no-cache git && \
	git clone --branch ${ETHERPAD_VERSION} git://github.com/ether/etherpad-lite.git .

ADD start.sh .

CMD ["sh", "start.sh"]