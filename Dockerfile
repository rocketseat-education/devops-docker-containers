FROM node:18-slim

WORKDIR /usr/src/app

COPY package.json yarn.lock .yarnrc.yml ./
COPY .yarn ./.yarn

RUN yarn

COPY . .

RUN yarn run build

EXPOSE 3000

CMD ["yarn", "run", "start"]