FROM node:stretch

WORKDIR /app



COPY . .
RUN yarn 
RUN yarn build








FROM nginx:1.16
COPY --from=0 /app/build /etc/nginx/www/
COPY nginx.conf /etc/nginx/nginx.conf
CMD /bin/bash -c "exec nginx -g 'daemon off;'"
