FROM node:16.20.2-bullseye-slim
WORKDIR /app
ENV NODE_ENV production
COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json
COPY index.js /app/index.js
COPY model /app/model
RUN npm install
ENTRYPOINT [ "node","index.js" ]