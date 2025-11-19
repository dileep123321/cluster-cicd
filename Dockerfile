# simple nginx static server as an example
FROM nginx:alpine
COPY ./static /usr/share/nginx/html
EXPOSE 80
