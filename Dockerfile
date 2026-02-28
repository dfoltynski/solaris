FROM node:20-alpine

RUN apk add --no-cache libc6-compat
RUN apk update
RUN npm install -g pnpm

WORKDIR /app

COPY package*.json ./
COPY pnpm*.yaml ./
RUN pnpm i --frozen-lockfile

COPY . .

EXPOSE 8181

CMD ["pnpm", "start"]