mkdir -p ./docker/data/mysql ./docker/data/redis ./docker/log/proxy/access.log ./docker/log/proxy/error.log ./docker/log/cgi/error.log

docker cp mysql8:/etc/my.cnf ./docker/config/mysql/my.cnf

docker cp cgi:/usr/local/etc/php/php.ini ./docker/config/php72/php.ini
docker cp cgi:/usr/local/etc/php/php.ini-production ./docker/config/php72/php.ini-production
docker cp cgi:/usr/local/etc/php/php.ini-development ./docker/config/php72/php.ini-development
docker cp cgi:/usr/local/etc/php/conf.d ./docker/config/php72/conf.d

docker cp cgi:/usr/local/etc/php ./docker/config/php72

kill -USR2 1