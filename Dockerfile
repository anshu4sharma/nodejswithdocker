FROM node:latest

COPY . /home/nodeapp/

WORKDIR /home/nodeapp

RUN npm install 

RUN npm i -g nodemon

CMD ["nodemon", "index.js"]
