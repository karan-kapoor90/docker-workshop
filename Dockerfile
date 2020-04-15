FROM node:13-alpine

COPY package-lock.json package-lock.json

RUN npm install

COPY . .

ARG app-port
ENV PORT=$app-port

ENTRYPOINT ["node"]
CMD ["index.js"]