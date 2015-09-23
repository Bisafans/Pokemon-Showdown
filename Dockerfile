FROM node:4-onbuild

RUN	groupadd -r node \
	&& useradd -r -g node node \
	&& chown -R node:node /usr/src/app

USER node

EXPOSE 8000

VOLUME [ "/usr/src/app/config" ]
VOLUME [ "/usr/src/app/logs" ]
