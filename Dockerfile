FROM node:6-alpine
LABEL Description="This is jenkins image." Vendor="Q2Web GmbH" Version="0.1.0"

ADD . /app

RUN apk update &&\
	apk add tini &&\
	cd /app &&\
	npm install &&\
	npm run build &&\
#Cleanup
	rm -rf /var/cache/apk/*

EXPOSE 3000

WORKDIR /app
ENTRYPOINT ["/sbin/tini", "-g", "--"]
CMD ["npm","start"]
