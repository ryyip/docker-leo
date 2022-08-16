FROM nginx:1.22.0-alpine-perl

RUN echo '这是一个本地构建的nginx镜像' > /index.html

RUN mkdir -p /data/www

COPY docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# CMD ["/usr/local/bin/docker-entrypoint.sh"]