<?php

$version = [
    '7.0.33','7.1.33','7.2.34','7.3.33','7.4.33','8.0.30', '8.1.23', '8.2.10','8.3.0RC1'
];

class Docker
{
    protected array $cmds = [

    ];

    protected array $images = [
        'docker login --username=ap3747a7y@aliyun.com --password=dehua2011 registry.cn-shanghai.aliyuncs.com',
        'docker login --username=ap3747a7y@aliyun.com --password=dehua2011 registry.cn-beijing.aliyuncs.com',
        'docker login --username=ap3747a7y@aliyun.com --password=dehua2011 registry.cn-hangzhou.aliyuncs.com',
        'docker login --username=ap3747a7y@aliyun.com --password=dehua2011 registry.cn-guangzhou.aliyuncs.com',
        'docker login --username=ap3747a7y@aliyun.com --password=dehua2011 registry.cn-chengdu.aliyuncs.com',
        'docker login --username=ap3747a7y@aliyun.com --password=dehua2011 registry.cn-shenzhen.aliyuncs.com',
        'docker login --username=ap3747a7y@aliyun.com --password=dehua2011 registry.cn-qingdao.aliyuncs.com',
        'docker login --username=sync402 --password=dehua2011',
    ];

    protected array $push = [

    ];

    protected string $namespace = 'sync402/docker-php';

    protected array $namespaces = [
        'registry.cn-shanghai.aliyuncs.com/okami/docker-php',
        'registry.cn-beijing.aliyuncs.com/okami/docker-php',
        'registry.cn-hangzhou.aliyuncs.com/okami/docker-php',
        'registry.cn-guangzhou.aliyuncs.com/okami/docker-php',
        'registry.cn-chengdu.aliyuncs.com/okami/docker-php',
        'registry.cn-shenzhen.aliyuncs.com/okami/docker-php',
        'registry.cn-qingdao.aliyuncs.com/okami/docker-php',
    ];

    /**
     * 大版本号
     * @var int $bigVersion
     */
    protected int $bigVersion = 0;

    /**
     * 小版本号
     * @var int $smallVersion
     */
    protected int $smallVersion = 0;

    /**
     * 小版本号
     * @var string $lastVersion
     */
    protected string $lastVersion = '';

    /**
     * 当前版本最新
     * @var bool $isLastVersion
     */
    protected bool $isLastVersion = true;

    /**
     * 构建镜像
     * @param array|string $version 小版本号
     * @param bool $isLastVersion 当前最新版本
     * @return void
     */
    public function build(array|string $version, $isLastVersion = true)
    {

        $this->isLastVersion = $isLastVersion;

        if (!is_array($version)) {
            $version = [$version];
        }

        foreach ($version as $smallVerion) {

            list($this->bigVersion, $this->smallVersion, $this->lastVersion) = explode(".", $smallVerion);

            $this->pullImage($smallVerion, 'cli');
            $this->pullImage($smallVerion, 'fpm');

            $this->buildImage($smallVerion, 'octane');
            $this->buildImage($smallVerion, 'web');
            //$this->cmds[] = 'docker rmi php:' . $this->bigVersion . '.' . $this->smallVersion . '-cli-alpine';
            //$this->cmds[] = 'docker rmi php:' . $this->bigVersion . '.' . $this->smallVersion . '-fpm-alpine';
            //$this->cmds[] = 'docker rmi php:' . $this->bigVersion . '.' . $this->smallVersion .'.'.$this->lastVersion. '-cli-alpine';
            //$this->cmds[] = 'docker rmi php:' . $this->bigVersion . '.' . $this->smallVersion .'.'.$this->lastVersion. '-fpm-alpine';

            $data = implode(PHP_EOL, $this->cmds);
            if($this->isLastVersion){
                file_put_contents(__DIR__ . '/build_' . $this->bigVersion . '.' . $this->smallVersion . '.bat', $data);
            }else{
                file_put_contents(__DIR__ . '/build_' . $this->bigVersion . '.' . $this->smallVersion .'.'.$this->lastVersion. '.bat', $data);
            }
            file_put_contents(__DIR__ . '/pull.bat', implode(PHP_EOL, $this->images));
            file_put_contents(__DIR__ . '/push.bat', implode(PHP_EOL, $this->push));
            $this->cmds = [];
        }
    }

    protected function pullImage(string $ver, $type = 'cli')
    {
        $this->images[] = 'docker pull php:' . $ver . '-' . $type . '-alpine';
        list($a, $b) = explode('.', $ver);
        if ($this->isLastVersion) {
            $this->images[] = 'docker tag php:' . $ver . '-' . $type . '-alpine php:' . $this->bigVersion . '.' . $this->smallVersion . '-' . $type . '-alpine';
            $this->push[] = 'docker rmi php:' . $this->bigVersion . '.' . $this->smallVersion . '-' . $type . '-alpine';
        }
        $this->images[] = '';
    }

    protected function cleanImage(string $ver, $type = 'cli')
    {
        $this->cmds[] = 'docker rmi php:' . $this->bigVersion . '.' . $this->smallVersion . '-' . $type . '-alpine';
    }

    protected function buildImage($fullVerion, $buildType = 'cli')
    {

        $pushVersion = $this->bigVersion . '.' . $this->smallVersion;

        $dockerFile = 'Dockerfile-'.$pushVersion.'-'.$buildType;

        if (!file_exists($dockerFile)) {
            return;
        }

        $baseImage = $this->namespace . ':' . $buildType . '-' . $fullVerion;

        $this->cmds[] = 'docker build -f '.$dockerFile.' -t ' . $baseImage . ' .';
        $this->cmds[] = 'docker push ' . $baseImage;
        $this->push[] = 'docker push ' . $baseImage;

        if ($this->isLastVersion) {
//            $this->cmds[] = 'docker rmi ' . $this->namespace . ':' . $buildType . '-' . $pushVersion;
            $this->cmds[] = 'docker tag ' . $baseImage . ' ' . $this->namespace . ':' . $buildType . '-' . $pushVersion;
            $this->cmds[] = 'docker push ' . $this->namespace . ':' . $buildType . '-' . $pushVersion;
            $this->push[] = 'docker push ' . $this->namespace . ':' . $buildType . '-' . $pushVersion;
            $this->push[] = 'docker rmi ' . $this->namespace . ':' . $buildType . '-' . $pushVersion;
        }

        $this->cmds[] = '';

        foreach ($this->namespaces as $namespace) {

//            $this->cmds[] = 'docker rmi ' . $namespace . ':' . $buildType . '-' . $fullVerion;
            $this->cmds[] = 'docker tag ' . $baseImage . ' ' . $namespace . ':' . $buildType . '-' . $fullVerion;
            $this->cmds[] = 'docker push ' . $namespace . ':' . $buildType . '-' . $fullVerion;
            $this->cmds[] = 'docker rmi ' . $namespace . ':' . $buildType . '-' . $fullVerion;

            if ($this->isLastVersion) {
                $this->cmds[] = '';
//                $this->cmds[] = 'docker rmi ' . $namespace . ':' . $buildType . '-' . $pushVersion;
                $this->cmds[] = 'docker tag ' . $baseImage . ' ' . $namespace . ':' . $buildType . '-' . $pushVersion;
                $this->cmds[] = 'docker push ' . $namespace . ':' . $buildType . '-' . $pushVersion;
                $this->cmds[] = 'docker rmi ' . $namespace . ':' . $buildType . '-' . $pushVersion;
            }
            $this->cmds[] = '';
        }
        $this->cmds[] = 'docker rmi '.$this->namespace . ':' . $buildType . '-' . $pushVersion;
        if ($this->isLastVersion) {
            $this->cmds[] = 'docker rmi '.$baseImage;
        }

        $this->cmds[] = '';
    }
}

(new Docker())->build($version, true);
