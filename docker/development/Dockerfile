FROM node:16 as development

WORKDIR /app
COPY package.json .
RUN yarn
COPY . .
# To run the migration server, comment the line below
RUN yarn build

FROM node:16 as production

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

WORKDIR /app
COPY package.json .
RUN yarn --only=production

COPY --from=development /app/dist ./dist
CMD ["node", "dist/index.js"]