FROM node:16-alpine as development

WORKDIR /usr/src/app
COPY package.json .
RUN yarn
COPY . .
RUN yarn build

FROM node:16-alpine as production

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}
WORKDIR /usr/src/app
COPY package.json .
RUN yarn --only=production
COPY --from=development /usr/src/app/dist ./dist
CMD ["node", "dist/index.js"]


