FROM node:lts-alpine

RUN mkdir -p /app
WORKDIR /app
COPY package*.json ./
RUN apk --no-cache add --virtual builds-deps build-base python3 git runuser
RUN npm install
COPY . .
ENV NODE_ENV=prod
ENV NODE_ICU_DATA=node_modules/full-icu

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
CMD ["npm", "start"]
