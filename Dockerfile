FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY add.js add.test.js ./

CMD ["npm", "test"]