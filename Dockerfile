FROM node:13-alpine

RUN npm install

COPY . .

ARG app-port
ENV PORT=$app-port

ENTRYPOINT ["node"]
CMD ["index.js"]