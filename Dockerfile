FROM node:22

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY . .

RUN npm install
EXPOSE 8080
CMD [ "node", "index.js" ]