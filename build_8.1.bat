docker build -f Dockerfile-8.1-web -t sync402/docker-php:web-8.1.23 .
docker push sync402/docker-php:web-8.1.23
docker tag sync402/docker-php:web-8.1.23 sync402/docker-php:web-8.1
docker push sync402/docker-php:web-8.1

docker tag sync402/docker-php:web-8.1.23 registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-8.1.23
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-8.1.23
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-8.1.23

docker tag sync402/docker-php:web-8.1.23 registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-8.1
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-8.1
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-8.1

docker tag sync402/docker-php:web-8.1.23 registry.cn-beijing.aliyuncs.com/okami/docker-php:web-8.1.23
docker push registry.cn-beijing.aliyuncs.com/okami/docker-php:web-8.1.23
docker rmi registry.cn-beijing.aliyuncs.com/okami/docker-php:web-8.1.23

docker tag sync402/docker-php:web-8.1.23 registry.cn-beijing.aliyuncs.com/okami/docker-php:web-8.1
docker push registry.cn-beijing.aliyuncs.com/okami/docker-php:web-8.1
docker rmi registry.cn-beijing.aliyuncs.com/okami/docker-php:web-8.1

docker tag sync402/docker-php:web-8.1.23 registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-8.1.23
docker push registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-8.1.23
docker rmi registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-8.1.23

docker tag sync402/docker-php:web-8.1.23 registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-8.1
docker push registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-8.1
docker rmi registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-8.1

docker tag sync402/docker-php:web-8.1.23 registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-8.1.23
docker push registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-8.1.23
docker rmi registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-8.1.23

docker tag sync402/docker-php:web-8.1.23 registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-8.1
docker push registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-8.1
docker rmi registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-8.1

docker tag sync402/docker-php:web-8.1.23 registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-8.1.23
docker push registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-8.1.23
docker rmi registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-8.1.23

docker tag sync402/docker-php:web-8.1.23 registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-8.1
docker push registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-8.1
docker rmi registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-8.1

docker tag sync402/docker-php:web-8.1.23 registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-8.1.23
docker push registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-8.1.23
docker rmi registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-8.1.23

docker tag sync402/docker-php:web-8.1.23 registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-8.1
docker push registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-8.1
docker rmi registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-8.1

docker tag sync402/docker-php:web-8.1.23 registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-8.1.23
docker push registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-8.1.23
docker rmi registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-8.1.23

docker tag sync402/docker-php:web-8.1.23 registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-8.1
docker push registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-8.1
docker rmi registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-8.1

docker rmi sync402/docker-php:web-8.1
docker rmi sync402/docker-php:web-8.1.23

docker build -f Dockerfile-8.1-octane -t sync402/docker-php:octane-8.1.23 .
docker push sync402/docker-php:octane-8.1.23
docker tag sync402/docker-php:octane-8.1.23 sync402/docker-php:octane-8.1
docker push sync402/docker-php:octane-8.1

docker tag sync402/docker-php:octane-8.1.23 registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-8.1.23
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-8.1.23
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-8.1.23

docker tag sync402/docker-php:octane-8.1.23 registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-8.1
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-8.1
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-8.1

docker tag sync402/docker-php:octane-8.1.23 registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-8.1.23
docker push registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-8.1.23
docker rmi registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-8.1.23

docker tag sync402/docker-php:octane-8.1.23 registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-8.1
docker push registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-8.1
docker rmi registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-8.1

docker tag sync402/docker-php:octane-8.1.23 registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-8.1.23
docker push registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-8.1.23
docker rmi registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-8.1.23

docker tag sync402/docker-php:octane-8.1.23 registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-8.1
docker push registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-8.1
docker rmi registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-8.1

docker tag sync402/docker-php:octane-8.1.23 registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-8.1.23
docker push registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-8.1.23
docker rmi registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-8.1.23

docker tag sync402/docker-php:octane-8.1.23 registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-8.1
docker push registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-8.1
docker rmi registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-8.1

docker tag sync402/docker-php:octane-8.1.23 registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-8.1.23
docker push registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-8.1.23
docker rmi registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-8.1.23

docker tag sync402/docker-php:octane-8.1.23 registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-8.1
docker push registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-8.1
docker rmi registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-8.1

docker tag sync402/docker-php:octane-8.1.23 registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-8.1.23
docker push registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-8.1.23
docker rmi registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-8.1.23

docker tag sync402/docker-php:octane-8.1.23 registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-8.1
docker push registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-8.1
docker rmi registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-8.1

docker tag sync402/docker-php:octane-8.1.23 registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-8.1.23
docker push registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-8.1.23
docker rmi registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-8.1.23

docker tag sync402/docker-php:octane-8.1.23 registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-8.1
docker push registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-8.1
docker rmi registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-8.1

docker rmi sync402/docker-php:octane-8.1
docker rmi sync402/docker-php:octane-8.1.23
