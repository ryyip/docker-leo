mkdir -p ./docker/data/mysql ./docker/data/redis ./docker/data/rabbitmq 

docker cp mysql8:/etc/my.cnf ./docker/config/mysql/my.cnf
docker cp php72:/usr/local/etc/php/php.ini ./docker/config/php72/php.ini
docker cp php72:/usr/local/etc/php/php.ini-production ./docker/config/php72/php.ini-production
docker cp php72:/usr/local/etc/php/php.ini-development ./docker/config/php72/php.ini-development
# 复制docker container文件夹的, 必须是同名，否则会多创一层文件夹
docker cp php72:/usr/local/etc/php/conf.d ./docker/config/php72/conf.d

docker cp nginx:/var/log/nginx/access.log ./docker/log/nginx/access.log
docker cp nginx:/var/log/nginx/error.log ./docker/log/nginx/error.log
docker cp php72:/var/log/php-fpm/error.log ./docker/log/php72/error.log

# Restart PHP-fpm
kill -USR2 1