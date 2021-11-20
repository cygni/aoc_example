FROM node:17-slim
COPY . /app
WORKDIR /app
RUN npm install -g coffeescript

CMD coffee /app/index.coffee
