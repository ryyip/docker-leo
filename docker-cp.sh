mkdir -p ./docker/data/mysql ./docker/data/redis ./docker/data/rabbitmq 

docker cp mysql8:/etc/my.cnf ./docker/config/mysql/my.cnf
docker cp cgi:/usr/local/etc/php/php.ini ./docker/config/php72/php.ini
docker cp cgi:/usr/local/etc/php/php.ini-production ./docker/config/php72/php.ini-production
docker cp cgi:/usr/local/etc/php/php.ini-development ./docker/config/php72/php.ini-development
# 复制docker container文件夹的, 必须是同名，否则会多创一层文件夹
docker cp cgi:/usr/local/etc/php/conf.d ./docker/config/php72/conf.d

docker cp proxy:/var/log/nginx/access.log ./docker/log/proxy/access.log
docker cp proxy:/var/log/nginx/error.log ./docker/log/proxy/error.log
docker cp cgi:/var/log/php-fpm/error.log ./docker/log/cgi/error.log

# Restart PHP-fpm
kill -USR2 1