FROM node:16.20.2-bullseye-slim as builder
WORKDIR /app
ENV NODE_ENV production
COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json
COPY index.js /app/index.js
COPY model /app/model
RUN npm install && npm run build

FROM dalongrong/graaljs:23.1.0
WORKDIR /app
ENV NODE_ENV production

COPY --from=builder /app/dist/* /app/
COPY model /app/model
ENTRYPOINT [ "node","index.js" ]