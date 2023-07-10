FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY *.js .

CMD ["node", "app.js"]
