docker build -f Dockerfile-8.0-octane -t sync402/docker-php:octane-8.0.30 .
docker push sync402/docker-php:octane-8.0.30
docker tag sync402/docker-php:octane-8.0.30 sync402/docker-php:octane-8.0
docker push sync402/docker-php:octane-8.0

docker tag sync402/docker-php:octane-8.0.30 registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-8.0.30
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-8.0.30
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-8.0.30

docker tag sync402/docker-php:octane-8.0.30 registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-8.0
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-8.0
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-8.0

docker tag sync402/docker-php:octane-8.0.30 registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-8.0.30
docker push registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-8.0.30
docker rmi registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-8.0.30

docker tag sync402/docker-php:octane-8.0.30 registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-8.0
docker push registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-8.0
docker rmi registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-8.0

docker tag sync402/docker-php:octane-8.0.30 registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-8.0.30
docker push registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-8.0.30
docker rmi registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-8.0.30

docker tag sync402/docker-php:octane-8.0.30 registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-8.0
docker push registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-8.0
docker rmi registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-8.0

docker tag sync402/docker-php:octane-8.0.30 registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-8.0.30
docker push registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-8.0.30
docker rmi registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-8.0.30

docker tag sync402/docker-php:octane-8.0.30 registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-8.0
docker push registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-8.0
docker rmi registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-8.0

docker tag sync402/docker-php:octane-8.0.30 registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-8.0.30
docker push registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-8.0.30
docker rmi registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-8.0.30

docker tag sync402/docker-php:octane-8.0.30 registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-8.0
docker push registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-8.0
docker rmi registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-8.0

docker tag sync402/docker-php:octane-8.0.30 registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-8.0.30
docker push registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-8.0.30
docker rmi registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-8.0.30

docker tag sync402/docker-php:octane-8.0.30 registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-8.0
docker push registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-8.0
docker rmi registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-8.0

docker tag sync402/docker-php:octane-8.0.30 registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-8.0.30
docker push registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-8.0.30
docker rmi registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-8.0.30

docker tag sync402/docker-php:octane-8.0.30 registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-8.0
docker push registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-8.0
docker rmi registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-8.0

docker rmi sync402/docker-php:octane-8.0
docker rmi sync402/docker-php:octane-8.0.30

docker build -f Dockerfile-8.0-web -t sync402/docker-php:web-8.0.30 .
docker push sync402/docker-php:web-8.0.30
docker tag sync402/docker-php:web-8.0.30 sync402/docker-php:web-8.0
docker push sync402/docker-php:web-8.0

docker tag sync402/docker-php:web-8.0.30 registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-8.0.30
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-8.0.30
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-8.0.30

docker tag sync402/docker-php:web-8.0.30 registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-8.0
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-8.0
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-8.0

docker tag sync402/docker-php:web-8.0.30 registry.cn-beijing.aliyuncs.com/okami/docker-php:web-8.0.30
docker push registry.cn-beijing.aliyuncs.com/okami/docker-php:web-8.0.30
docker rmi registry.cn-beijing.aliyuncs.com/okami/docker-php:web-8.0.30

docker tag sync402/docker-php:web-8.0.30 registry.cn-beijing.aliyuncs.com/okami/docker-php:web-8.0
docker push registry.cn-beijing.aliyuncs.com/okami/docker-php:web-8.0
docker rmi registry.cn-beijing.aliyuncs.com/okami/docker-php:web-8.0

docker tag sync402/docker-php:web-8.0.30 registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-8.0.30
docker push registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-8.0.30
docker rmi registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-8.0.30

docker tag sync402/docker-php:web-8.0.30 registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-8.0
docker push registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-8.0
docker rmi registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-8.0

docker tag sync402/docker-php:web-8.0.30 registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-8.0.30
docker push registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-8.0.30
docker rmi registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-8.0.30

docker tag sync402/docker-php:web-8.0.30 registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-8.0
docker push registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-8.0
docker rmi registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-8.0

docker tag sync402/docker-php:web-8.0.30 registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-8.0.30
docker push registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-8.0.30
docker rmi registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-8.0.30

docker tag sync402/docker-php:web-8.0.30 registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-8.0
docker push registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-8.0
docker rmi registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-8.0

docker tag sync402/docker-php:web-8.0.30 registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-8.0.30
docker push registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-8.0.30
docker rmi registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-8.0.30

docker tag sync402/docker-php:web-8.0.30 registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-8.0
docker push registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-8.0
docker rmi registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-8.0

docker tag sync402/docker-php:web-8.0.30 registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-8.0.30
docker push registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-8.0.30
docker rmi registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-8.0.30

docker tag sync402/docker-php:web-8.0.30 registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-8.0
docker push registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-8.0
docker rmi registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-8.0

docker rmi sync402/docker-php:web-8.0
docker rmi sync402/docker-php:web-8.0.30

docker rmi php:8.0-cli-alpine
docker rmi php:8.0-fpm-alpine
docker rmi php:8.0.30-cli-alpine
docker rmi php:8.0.30-fpm-alpine