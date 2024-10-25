FROM ubuntu:20.04
RUN apt-get update && apt-get install -y nginx
RUN service nginx stop
WORKDIR /etc/nginx/
COPY nginx.conf /etc/nginx/nginx.conf
CMD ["nginx", "-g", "daemon off;"]
