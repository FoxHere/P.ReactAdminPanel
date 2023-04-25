FROM node:18-alpine as builder

WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]

FROM nginx
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=builder /app .
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]