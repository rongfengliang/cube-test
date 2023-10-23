FROM node:16.20.2-bullseye-slim as builder
WORKDIR /app
ENV NODE_ENV production
COPY package.json /app/package.json
COPY index.js /app/index.js
RUN npm install 

FROM dalongrong/graaljs:23.1.0
WORKDIR /app
ENV NODE_ENV production

COPY --from=builder /app/node_modules /app/node_modules
COPY --from=builder /app/index.js /app/index.js
COPY model /app/model
ENTRYPOINT [ "node","index.js" ]