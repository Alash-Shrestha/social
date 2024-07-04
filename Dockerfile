FROM node:9.5.0-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

RUN npm install -g @angular/cli@6.0.5

COPY . /app/

CMD ["ng", "serve", "--host", "0.0.0.0"]
