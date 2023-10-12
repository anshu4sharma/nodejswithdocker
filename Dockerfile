FROM node:latest

COPY . /home/nodeapp/ 

WORKDIR /home/nodeapp


RUN npm install

# exposing a port 

EXPOSE 3000

CMD [ "node","index" ]

#? command to build image

#? sudo docker build -t myapp . 
# -t myapp is used to add a tag
# . is the current directory ( Dockerfile location)

#? port mapping

# docker run -p 3000:3000 myapp 

# first port is local machine the second is docker port which we have exposed


#! running app wihout port mapping

# sudo docker run -it myapp 


#! running after mapping the port 

#  sudo docker run -p 3000:3000 -it myapp


#! copying all files

# . is the currenct directory 

# COPY . /home/nodeapp/ 

# to ignore copying node_modules create a .dockerignore file


#! copying a single file

# COPY index.js /home/nodeapp/index.js

#! pushing image to docker hub

# docker push username/nodeapp

#! killing a docker container

# docker ps to check all running container 

# docker kill container_name or id