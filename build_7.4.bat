docker build -f Dockerfile-7.4-web -t sync402/docker-php:web-7.4.33 .
docker push sync402/docker-php:web-7.4.33
docker tag sync402/docker-php:web-7.4.33 sync402/docker-php:web-7.4
docker push sync402/docker-php:web-7.4

docker tag sync402/docker-php:web-7.4.33 registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-7.4.33
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-7.4.33
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-7.4.33

docker tag sync402/docker-php:web-7.4.33 registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-7.4
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-7.4
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:web-7.4

docker tag sync402/docker-php:web-7.4.33 registry.cn-beijing.aliyuncs.com/okami/docker-php:web-7.4.33
docker push registry.cn-beijing.aliyuncs.com/okami/docker-php:web-7.4.33
docker rmi registry.cn-beijing.aliyuncs.com/okami/docker-php:web-7.4.33

docker tag sync402/docker-php:web-7.4.33 registry.cn-beijing.aliyuncs.com/okami/docker-php:web-7.4
docker push registry.cn-beijing.aliyuncs.com/okami/docker-php:web-7.4
docker rmi registry.cn-beijing.aliyuncs.com/okami/docker-php:web-7.4

docker tag sync402/docker-php:web-7.4.33 registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-7.4.33
docker push registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-7.4.33
docker rmi registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-7.4.33

docker tag sync402/docker-php:web-7.4.33 registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-7.4
docker push registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-7.4
docker rmi registry.cn-hangzhou.aliyuncs.com/okami/docker-php:web-7.4

docker tag sync402/docker-php:web-7.4.33 registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-7.4.33
docker push registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-7.4.33
docker rmi registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-7.4.33

docker tag sync402/docker-php:web-7.4.33 registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-7.4
docker push registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-7.4
docker rmi registry.cn-guangzhou.aliyuncs.com/okami/docker-php:web-7.4

docker tag sync402/docker-php:web-7.4.33 registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-7.4.33
docker push registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-7.4.33
docker rmi registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-7.4.33

docker tag sync402/docker-php:web-7.4.33 registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-7.4
docker push registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-7.4
docker rmi registry.cn-chengdu.aliyuncs.com/okami/docker-php:web-7.4

docker tag sync402/docker-php:web-7.4.33 registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-7.4.33
docker push registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-7.4.33
docker rmi registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-7.4.33

docker tag sync402/docker-php:web-7.4.33 registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-7.4
docker push registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-7.4
docker rmi registry.cn-shenzhen.aliyuncs.com/okami/docker-php:web-7.4

docker tag sync402/docker-php:web-7.4.33 registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-7.4.33
docker push registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-7.4.33
docker rmi registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-7.4.33

docker tag sync402/docker-php:web-7.4.33 registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-7.4
docker push registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-7.4
docker rmi registry.cn-qingdao.aliyuncs.com/okami/docker-php:web-7.4

docker rmi sync402/docker-php:web-7.4
docker rmi sync402/docker-php:web-7.4.33

docker build -f Dockerfile-7.4-octane -t sync402/docker-php:octane-7.4.33 .
docker push sync402/docker-php:octane-7.4.33
docker tag sync402/docker-php:octane-7.4.33 sync402/docker-php:octane-7.4
docker push sync402/docker-php:octane-7.4

docker tag sync402/docker-php:octane-7.4.33 registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-7.4.33
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-7.4.33
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-7.4.33

docker tag sync402/docker-php:octane-7.4.33 registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-7.4
docker push registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-7.4
docker rmi registry.cn-shanghai.aliyuncs.com/okami/docker-php:octane-7.4

docker tag sync402/docker-php:octane-7.4.33 registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-7.4.33
docker push registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-7.4.33
docker rmi registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-7.4.33

docker tag sync402/docker-php:octane-7.4.33 registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-7.4
docker push registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-7.4
docker rmi registry.cn-beijing.aliyuncs.com/okami/docker-php:octane-7.4

docker tag sync402/docker-php:octane-7.4.33 registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-7.4.33
docker push registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-7.4.33
docker rmi registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-7.4.33

docker tag sync402/docker-php:octane-7.4.33 registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-7.4
docker push registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-7.4
docker rmi registry.cn-hangzhou.aliyuncs.com/okami/docker-php:octane-7.4

docker tag sync402/docker-php:octane-7.4.33 registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-7.4.33
docker push registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-7.4.33
docker rmi registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-7.4.33

docker tag sync402/docker-php:octane-7.4.33 registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-7.4
docker push registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-7.4
docker rmi registry.cn-guangzhou.aliyuncs.com/okami/docker-php:octane-7.4

docker tag sync402/docker-php:octane-7.4.33 registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-7.4.33
docker push registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-7.4.33
docker rmi registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-7.4.33

docker tag sync402/docker-php:octane-7.4.33 registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-7.4
docker push registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-7.4
docker rmi registry.cn-chengdu.aliyuncs.com/okami/docker-php:octane-7.4

docker tag sync402/docker-php:octane-7.4.33 registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-7.4.33
docker push registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-7.4.33
docker rmi registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-7.4.33

docker tag sync402/docker-php:octane-7.4.33 registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-7.4
docker push registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-7.4
docker rmi registry.cn-shenzhen.aliyuncs.com/okami/docker-php:octane-7.4

docker tag sync402/docker-php:octane-7.4.33 registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-7.4.33
docker push registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-7.4.33
docker rmi registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-7.4.33

docker tag sync402/docker-php:octane-7.4.33 registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-7.4
docker push registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-7.4
docker rmi registry.cn-qingdao.aliyuncs.com/okami/docker-php:octane-7.4

docker rmi sync402/docker-php:octane-7.4
docker rmi sync402/docker-php:octane-7.4.33
