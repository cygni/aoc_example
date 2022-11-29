FROM node:18-slim as installer
WORKDIR /app
COPY package.json package-lock.json tsconfig.json ./
RUN npm install

FROM node:18-slim as builder
WORKDIR /app
COPY --from=installer ./app .
COPY *.ts *.txt ./
RUN npm run build

FROM node:18-slim as runner

WORKDIR /app
COPY --from=builder --chown=1000:1000 /app/dist ./dist
COPY --from=builder --chown=1000:1000 /app/node_modules ./node_modules
COPY --from=builder --chown=1000:1000 /app/*.txt .
USER 1000

CMD node dist/index.js
