FROM node

# If this is not set, ROOT is the working directory in the container
WORKDIR /app 

COPY ./package.json .

RUN npm install

COPY . .

# This part is optional but best practice and highly encouraged
EXPOSE 80 

CMD ["node", "server.js"]