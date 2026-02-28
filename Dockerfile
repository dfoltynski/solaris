FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
COPY pnpm*.yaml ./
RUN npm ci --omit=dev

COPY . .

EXPOSE 8181

CMD ["node", "index.js"]