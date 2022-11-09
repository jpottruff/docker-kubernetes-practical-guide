FROM node:latest

WORKDIR /app

COPY ./package.json .

RUN npm install

COPY . .

EXPOSE 80

# remember the WORKDIR here
VOLUME [ "/app/feedback" ]

CMD ["node", "server.js"]