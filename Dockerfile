# develop stage
FROM node:14.3-alpine as develop-stage
WORKDIR /app

COPY --chown=1000:1000 package.json ./
COPY --chown=1000:1000 yarn.lock ./

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=1
RUN yarn

COPY --chown=1000:1000 . .

# build stage
FROM develop-stage as build-stage
RUN yarn build

# production stage
FROM nginx:stable as production-stage
WORKDIR /usr/share/nginx/html
COPY --from=build-stage /app/dist .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
