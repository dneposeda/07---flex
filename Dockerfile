FROM ubuntu:16.04

MAINTAINER Denis Tivikov

RUN apt-get -yqq update
RUN apt-get -yqq install nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN mkdir /var/www/

COPY dist /var/www/
WORKDIR /var/www/

RUN npm install

#RUN npm run build

EXPOSE 80

CMD [ "npm", "run", "server" ]