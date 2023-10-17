FROM node:latest

WORKDIR /home/nodeapp

COPY package* .

RUN npm i -g nodemon

RUN npm install 

COPY . .

CMD ["nodemon", "index.js"]
