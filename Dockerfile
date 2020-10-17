FROM alpine:3.12
RUN apk add --no-cache git nodejs npm
RUN npm install -g yarn
RUN yarn global add @vue/cli