docker login --username=ap3747a7y@aliyun.com --password=dehua2011 registry.cn-shanghai.aliyuncs.com
docker login --username=ap3747a7y@aliyun.com --password=dehua2011 registry.cn-beijing.aliyuncs.com
docker login --username=ap3747a7y@aliyun.com --password=dehua2011 registry.cn-hangzhou.aliyuncs.com
docker login --username=ap3747a7y@aliyun.com --password=dehua2011 registry.cn-guangzhou.aliyuncs.com
docker login --username=sync402 --password=dehua2011

docker pull php:7.4.33-cli-alpine
docker tag php:7.4.33-cli-alpine php:7.4-cli-alpine

docker pull php:7.4.33-fpm-alpine
docker tag php:7.4.33-fpm-alpine php:7.4-fpm-alpine

docker pull php:8.0.27-cli-alpine
docker tag php:8.0.27-cli-alpine php:8.0-cli-alpine

docker pull php:8.0.27-fpm-alpine
docker tag php:8.0.27-fpm-alpine php:8.0-fpm-alpine

docker pull php:8.1.14-cli-alpine
docker tag php:8.1.14-cli-alpine php:8.1-cli-alpine

docker pull php:8.1.14-fpm-alpine
docker tag php:8.1.14-fpm-alpine php:8.1-fpm-alpine

docker pull php:8.2.1-cli-alpine
docker tag php:8.2.1-cli-alpine php:8.2-cli-alpine

docker pull php:8.2.1-fpm-alpine
docker tag php:8.2.1-fpm-alpine php:8.2-fpm-alpine
