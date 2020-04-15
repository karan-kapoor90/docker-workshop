FROM node:13-alpine

COPY package.json package.json

RUN npm install

COPY . .

ENTRYPOINT ["node"]
CMD ["index.js"]

EXPOSE 3000