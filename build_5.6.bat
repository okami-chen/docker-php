@REM 版本[cli-pure]构建
docker build -f 5.6/cli-pure/Dockerfile -t sync402/docker-php:cli-pure-5.6.40 .
docker push sync402/docker-php:cli-pure-5.6.40
docker rmi sync402/docker-php:cli-pure-5.6
docker tag sync402/docker-php:cli-pure-5.6.40 sync402/docker-php:cli-pure-5.6
docker push sync402/docker-php:cli-pure-5.6

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-pure-5.6.40
docker tag sync402/docker-php:cli-pure-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-pure-5.6.40
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-pure-5.6.40
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-pure-5.6.40

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-pure-5.6
docker tag sync402/docker-php:cli-pure-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-pure-5.6
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-pure-5.6
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-pure-5.6

@REM 版本[cli-amqp]构建
docker build -f 5.6/cli-amqp/Dockerfile -t sync402/docker-php:cli-amqp-5.6.40 .
docker push sync402/docker-php:cli-amqp-5.6.40
docker rmi sync402/docker-php:cli-amqp-5.6
docker tag sync402/docker-php:cli-amqp-5.6.40 sync402/docker-php:cli-amqp-5.6
docker push sync402/docker-php:cli-amqp-5.6

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-amqp-5.6.40
docker tag sync402/docker-php:cli-amqp-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-amqp-5.6.40
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-amqp-5.6.40
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-amqp-5.6.40

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-amqp-5.6
docker tag sync402/docker-php:cli-amqp-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-amqp-5.6
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-amqp-5.6
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-amqp-5.6

@REM 版本[cli]构建
docker build -f 5.6/cli/Dockerfile -t sync402/docker-php:cli-5.6.40 .
docker push sync402/docker-php:cli-5.6.40
docker rmi sync402/docker-php:cli-5.6
docker tag sync402/docker-php:cli-5.6.40 sync402/docker-php:cli-5.6
docker push sync402/docker-php:cli-5.6

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-5.6.40
docker tag sync402/docker-php:cli-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-5.6.40
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-5.6.40
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-5.6.40

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-5.6
docker tag sync402/docker-php:cli-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-5.6
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-5.6
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-5.6

@REM 版本[cli-swoole]构建
docker build -f 5.6/cli-swoole/Dockerfile -t sync402/docker-php:cli-swoole-5.6.40 .
docker push sync402/docker-php:cli-swoole-5.6.40
docker rmi sync402/docker-php:cli-swoole-5.6
docker tag sync402/docker-php:cli-swoole-5.6.40 sync402/docker-php:cli-swoole-5.6
docker push sync402/docker-php:cli-swoole-5.6

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-swoole-5.6.40
docker tag sync402/docker-php:cli-swoole-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-swoole-5.6.40
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-swoole-5.6.40
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-swoole-5.6.40

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-swoole-5.6
docker tag sync402/docker-php:cli-swoole-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-swoole-5.6
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-swoole-5.6
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-swoole-5.6

@REM 版本[cli-mongo]构建
docker build -f 5.6/cli-mongo/Dockerfile -t sync402/docker-php:cli-mongo-5.6.40 .
docker push sync402/docker-php:cli-mongo-5.6.40
docker rmi sync402/docker-php:cli-mongo-5.6
docker tag sync402/docker-php:cli-mongo-5.6.40 sync402/docker-php:cli-mongo-5.6
docker push sync402/docker-php:cli-mongo-5.6

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-mongo-5.6.40
docker tag sync402/docker-php:cli-mongo-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-mongo-5.6.40
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-mongo-5.6.40
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-mongo-5.6.40

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-mongo-5.6
docker tag sync402/docker-php:cli-mongo-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-mongo-5.6
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-mongo-5.6
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:cli-mongo-5.6

@REM 版本[fpm-pure]构建
docker build -f 5.6/fpm-pure/Dockerfile -t sync402/docker-php:fpm-pure-5.6.40 .
docker push sync402/docker-php:fpm-pure-5.6.40
docker rmi sync402/docker-php:fpm-pure-5.6
docker tag sync402/docker-php:fpm-pure-5.6.40 sync402/docker-php:fpm-pure-5.6
docker push sync402/docker-php:fpm-pure-5.6

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-pure-5.6.40
docker tag sync402/docker-php:fpm-pure-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-pure-5.6.40
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-pure-5.6.40
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-pure-5.6.40

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-pure-5.6
docker tag sync402/docker-php:fpm-pure-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-pure-5.6
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-pure-5.6
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-pure-5.6

@REM 版本[fpm-amqp]构建
docker build -f 5.6/fpm-amqp/Dockerfile -t sync402/docker-php:fpm-amqp-5.6.40 .
docker push sync402/docker-php:fpm-amqp-5.6.40
docker rmi sync402/docker-php:fpm-amqp-5.6
docker tag sync402/docker-php:fpm-amqp-5.6.40 sync402/docker-php:fpm-amqp-5.6
docker push sync402/docker-php:fpm-amqp-5.6

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-amqp-5.6.40
docker tag sync402/docker-php:fpm-amqp-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-amqp-5.6.40
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-amqp-5.6.40
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-amqp-5.6.40

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-amqp-5.6
docker tag sync402/docker-php:fpm-amqp-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-amqp-5.6
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-amqp-5.6
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-amqp-5.6

@REM 版本[fpm-mongo]构建
docker build -f 5.6/fpm-mongo/Dockerfile -t sync402/docker-php:fpm-mongo-5.6.40 .
docker push sync402/docker-php:fpm-mongo-5.6.40
docker rmi sync402/docker-php:fpm-mongo-5.6
docker tag sync402/docker-php:fpm-mongo-5.6.40 sync402/docker-php:fpm-mongo-5.6
docker push sync402/docker-php:fpm-mongo-5.6

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-mongo-5.6.40
docker tag sync402/docker-php:fpm-mongo-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-mongo-5.6.40
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-mongo-5.6.40
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-mongo-5.6.40

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-mongo-5.6
docker tag sync402/docker-php:fpm-mongo-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-mongo-5.6
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-mongo-5.6
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-mongo-5.6

@REM 版本[fpm]构建
docker build -f 5.6/fpm/Dockerfile -t sync402/docker-php:fpm-5.6.40 .
docker push sync402/docker-php:fpm-5.6.40
docker rmi sync402/docker-php:fpm-5.6
docker tag sync402/docker-php:fpm-5.6.40 sync402/docker-php:fpm-5.6
docker push sync402/docker-php:fpm-5.6

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-5.6.40
docker tag sync402/docker-php:fpm-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-5.6.40
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-5.6.40
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-5.6.40

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-5.6
docker tag sync402/docker-php:fpm-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-5.6
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-5.6
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:fpm-5.6

@REM 版本[nginx]构建
docker build -f 5.6/nginx/Dockerfile -t sync402/docker-php:nginx-5.6.40 .
docker push sync402/docker-php:nginx-5.6.40
docker rmi sync402/docker-php:nginx-5.6
docker tag sync402/docker-php:nginx-5.6.40 sync402/docker-php:nginx-5.6
docker push sync402/docker-php:nginx-5.6

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-5.6.40
docker tag sync402/docker-php:nginx-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-5.6.40
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-5.6.40
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-5.6.40

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-5.6
docker tag sync402/docker-php:nginx-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-5.6
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-5.6
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-5.6

@REM 版本[nginx-pure]构建
docker build -f 5.6/nginx-pure/Dockerfile -t sync402/docker-php:nginx-pure-5.6.40 .
docker push sync402/docker-php:nginx-pure-5.6.40
docker rmi sync402/docker-php:nginx-pure-5.6
docker tag sync402/docker-php:nginx-pure-5.6.40 sync402/docker-php:nginx-pure-5.6
docker push sync402/docker-php:nginx-pure-5.6

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-pure-5.6.40
docker tag sync402/docker-php:nginx-pure-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-pure-5.6.40
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-pure-5.6.40
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-pure-5.6.40

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-pure-5.6
docker tag sync402/docker-php:nginx-pure-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-pure-5.6
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-pure-5.6
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-pure-5.6

@REM 版本[nginx-amqp]构建
docker build -f 5.6/nginx-amqp/Dockerfile -t sync402/docker-php:nginx-amqp-5.6.40 .
docker push sync402/docker-php:nginx-amqp-5.6.40
docker rmi sync402/docker-php:nginx-amqp-5.6
docker tag sync402/docker-php:nginx-amqp-5.6.40 sync402/docker-php:nginx-amqp-5.6
docker push sync402/docker-php:nginx-amqp-5.6

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-amqp-5.6.40
docker tag sync402/docker-php:nginx-amqp-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-amqp-5.6.40
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-amqp-5.6.40
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-amqp-5.6.40

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-amqp-5.6
docker tag sync402/docker-php:nginx-amqp-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-amqp-5.6
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-amqp-5.6
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:nginx-amqp-5.6

@REM 版本[octane]构建
docker build -f 5.6/octane/Dockerfile -t sync402/docker-php:octane-5.6.40 .
docker push sync402/docker-php:octane-5.6.40
docker rmi sync402/docker-php:octane-5.6
docker tag sync402/docker-php:octane-5.6.40 sync402/docker-php:octane-5.6
docker push sync402/docker-php:octane-5.6

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-5.6.40
docker tag sync402/docker-php:octane-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-5.6.40
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-5.6.40
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-5.6.40

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-5.6
docker tag sync402/docker-php:octane-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-5.6
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-5.6
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-5.6

@REM 版本[octane-pure]构建
docker build -f 5.6/octane-pure/Dockerfile -t sync402/docker-php:octane-pure-5.6.40 .
docker push sync402/docker-php:octane-pure-5.6.40
docker rmi sync402/docker-php:octane-pure-5.6
docker tag sync402/docker-php:octane-pure-5.6.40 sync402/docker-php:octane-pure-5.6
docker push sync402/docker-php:octane-pure-5.6

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-pure-5.6.40
docker tag sync402/docker-php:octane-pure-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-pure-5.6.40
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-pure-5.6.40
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-pure-5.6.40

docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-pure-5.6
docker tag sync402/docker-php:octane-pure-5.6.40 registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-pure-5.6
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-pure-5.6
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-pure-5.6
