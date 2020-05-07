FROM node:lts-alpine

LABEL name = "NeteaseCloudMusicApi"
LABEL version ="3.27.0"

WORKDIR /app
COPY . /app

RUN rm -f package-lock.json \
    ; rm -rf .idea \
    ; rm -rf node_modules \
    ; npm config set registry "https://registry.npm.taobao.org/" \
    && npm install

EXPOSE 3000
CMD ["node", "app.js"]
