FROM node:latest
RUN apt-get update -y
RUN apt-get install -y curl
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3000
ENTRYPOINT ["node", "index.js"]