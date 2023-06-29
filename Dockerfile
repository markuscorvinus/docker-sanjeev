FROM node

WORKDIR /app

COPY /package.json .

RUN npm install 

COPY . .

EXPOSE 3000

#docker build -t reactapp .
#docker run --name react_con -d -p 80:3000 reactapp
CMD [ "npm", "start" ]