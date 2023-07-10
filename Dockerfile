FROM node

WORKDIR /app

COPY /package.json .

RUN npm install 

COPY . .

EXPOSE 3000

#docker build -t reactapp .
#docker run --name react_con -d -p 80:3000 reactapp
#docker run --name react_con -d -v "D:\Dir\Office PC\Docker\docker-sanjeev\src":/app/src -p 80:3000 react/app  -- add ":ro" in -v part of container to create readonly var
#docker run --name react_con -v "%cd%\src":/app/src -d -p 80:3000 react/app
CMD [ "npm", "start" ]