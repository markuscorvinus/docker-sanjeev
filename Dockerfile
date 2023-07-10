FROM node

WORKDIR /app

COPY /package.json .

RUN npm install 

COPY . .

ENV REACT_APP_NAME=myName

EXPOSE 3000

#docker build -t reactapp .
#docker run --name react_con -d -p 80:3000 react/app
#docker run --name react_con -d -v "D:\Dir\Office PC\Docker\docker-sanjeev\src":/app/src -p 80:3000 react/app  
#-- add ":ro" in -v part of container to create readonly var 
#--- example v "D:\Dir\Office PC\Docker\docker-sanjeev\src":/app/src:ro
#docker run --name react_con -v "%cd%\src":/app/src -d -p 80:3000 react/app
#-- add "-e REACT_APP_NAME=Makoto" for passing env variable via cli
#-- add "-env-file ./.env" for passing env file directly to container. You may add .env variables to .env file

CMD [ "npm", "start" ]