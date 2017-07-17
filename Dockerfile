FROM node:6.11-wheezy

MAINTAINER Chris Robertson https://github.com/electronicsleep

RUN mkdir -p /usr/src/app

ADD package.json /usr/src/app
ADD app.js /usr/src/app
ADD public /usr/src/app/public

WORKDIR /usr/src/app
RUN npm install
EXPOSE 8000
CMD ["node", "app.js"]
