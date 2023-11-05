FROM oven/bun:latest

COPY package.json bun.lockb tsconfig.json ./

RUN  bun install --production

COPY index.ts ./
COPY input.txt ./

CMD bun index.ts