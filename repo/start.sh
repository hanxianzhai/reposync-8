#!/bin/bash

#同步软件包

echo 开始从mirrors.aliyun.com同步数据
reposync -np /data/repo/CentOS/8/x86_64/
echo 数据同步结束

#更新元数据

echo 开始更新元数据
createrepo --update /data/repo/CentOS/8/x86_64/base/
createrepo --update /data/repo/CentOS/8/x86_64/extras/
createrepo --update /data/repo/CentOS/8/x86_64/AppStream/
createrepo --update /data/repo/CentOS/8/x86_64/epel/
createrepo --update /data/repo/CentOS/8/x86_64/epel-modular/