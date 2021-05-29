FROM node:8.11-slim

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY ./backend/package.json package.json

RUN npm install 

COPY ./backend/ .

EXPOSE 51005

CMD [ "npm", "start" ]
