# Stage 4: Setup Nginx
FROM nginx:stable-alpine
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
WORKDIR /var/www/static

# Define entrypoint and command
CMD ["nginx", "-g", "daemon off;"]
