# demo-code

#### 介绍
基于Tekton构建的python Flask API案例项目

```
git clone https://github.com/englandbaron/demo-code
```

#### 项目说明

API接口如下：
 - /healthz: 服务健康状态
 - /api/v1/index: 业务接口

代码目录结构:

```
|- Dockerfile
|- prepare_build.sh: CI 预执行脚本
|- business/: 业务目录
|- main.py: main主函数入口
|- requirements.txt
```
#### 本地执行方式

```
python3 -m virtualenv venv && . venv/bin/activate
python main.py
```

#### Docker & Tekton 构建

```
执行脚本:

docker build -t docker.io/library/demo-code:latest .
```