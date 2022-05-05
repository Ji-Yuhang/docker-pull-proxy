# docker-pull-proxy

有一些海外镜像（gcr.io docker.io）很难拉取，可以通过此仓库自动把指定 docker 镜像上传到我们的私有仓库

## 使用方式

当需要将某个镜像如 nginx:alpine 上传到私有仓库 registry.cn-beijing.aliyuncs.com/ijx-public/nginx:alpine

### 第一步
修改 `trigger.txt` 内容为
```
nginx:alpine registry.cn-beijing.aliyuncs.com/ijx-public/nginx:alpine
```
并提交

### 第二步
提交 github 后，会触发 actions，等待 actions build 成功

### 第三步
若 build 成功，可以在本地拉取私有仓库的镜像，使用脚本自动修改 tag
```
curl -s https://github.jiyuhang.workers.dev/https://raw.githubusercontent.com/Ji-Yuhang/docker-pull-proxy/main/tag.sh -o tag.sh

sh tag.sh
```

若需要 ansible ，可以使用如下脚本
```
curl -s https://github.jiyuhang.workers.dev/https://raw.githubusercontent.com/Ji-Yuhang/docker-pull-proxy/main/ansible.sh -o ansible.sh

sh ansible.sh
```

## TODO
- [] 查找并拉取已存在过的镜像
- [] 增加成功监听机制