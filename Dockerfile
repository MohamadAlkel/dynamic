# installer image
FROM node:14-slim AS installer
WORKDIR /app

COPY . .

RUN yarn install --pure-lockfile && \
    yarn cache clean

# builder image
FROM node:14-slim AS builder
WORKDIR /app

COPY --from=installer /app/ /app/

RUN yarn build:production && \
    rm -rf node_modules && \ 
    yarn install --pure-lockfile --production=true && \
    yarn cache clean

# final image
FROM node:14-slim AS app
WORKDIR /app


COPY --from=builder /app/node_modules /app/node_modules
COPY --from=builder /app/dist /app/dist
COPY --from=builder /app/src /app/src
COPY package.json yarn.lock ./
