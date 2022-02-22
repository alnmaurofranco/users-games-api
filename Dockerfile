FROM node:lts-alpine

WORKDIR /app

COPY package.json yarn.* tsconfig.json ./

RUN yarn install --production=false --frozen-lockfile

COPY . .