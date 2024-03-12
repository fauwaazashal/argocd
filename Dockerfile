FROM node:18.2.0-alpine as builder

WORKDIR app

COPY . .

RUN npm i

RUN npm run build

FROM nginx:alpine

COPY --from=builder /app/build /usr/share/nginx/html

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
