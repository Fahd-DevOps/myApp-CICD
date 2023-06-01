# Use for dev Environment
FROM nginx:latest

WORKDIR /usr/share/nginx/html

COPY app-v2/ .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
