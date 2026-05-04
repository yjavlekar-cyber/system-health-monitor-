FROM nginx:alpine
WORKDIR /app
COPY jenkinsbuild.html /usr/share/nginx/html/index.html
