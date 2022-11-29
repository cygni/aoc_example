FROM node:18-slim as installer
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install

FROM node:18-slim as builder
WORKDIR /app
COPY --from=installer ./app .
COPY tsconfig.json .
COPY src src
RUN npm run build

FROM node:18-slim as runner
WORKDIR /app
COPY --from=builder --chown=1000:1000 /app/dist ./dist
COPY --from=builder --chown=1000:1000 /app/node_modules ./node_modules
COPY *.txt .
USER 1000

CMD node dist/index.js
