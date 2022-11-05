FROM nginx:alpine

COPY ./nginx.conf /etc/nginx/nginx.conf

## Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

ENTRYPOINT ["nginx", "-g", "daemon off;"]