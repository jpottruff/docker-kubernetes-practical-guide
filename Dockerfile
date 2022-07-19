FROM node

# If this is not set, ROOT is the working directory in the container
WORKDIR /app 

COPY ./dummy-app .

RUN npm install

# This part is optional but best practice and highly encouraged
EXPOSE 80 

CMD ["node", "server.js"]