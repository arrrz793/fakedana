FROM node:18-slim

RUN apt-get update && apt-get install -y \
    libfontconfig1 \
    libfreetype6 \
    libpng-dev \
    libjpeg-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

CMD ["node", "server.js"]
