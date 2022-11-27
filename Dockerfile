FROM node:16

WORKDIR /app
# to optimize caching, we will add the other files after npm install
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 3000

CMD [ "node", "server.js" ]
