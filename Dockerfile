FROM node:18.2.0-alpine

WORKDIR app

COPY . .

RUN npm i

RUN cd src/

EXPOSE 3000

CMD ["node", "App.js"]
