FROM node:20-alpine

RUN apk add --no-cache libc6-compat
RUN apk update
RUN npm install -g pnpm
ENV PNPM_HOME=/pnpm-test/.pnpm
ENV PATH=$PATH:$PNPM_HOME

WORKDIR /app

COPY package*.json ./
COPY pnpm*.yaml ./
RUN pnpm i --frozen-lockfile

COPY . .

EXPOSE 8181

CMD ["node", "index.js"]