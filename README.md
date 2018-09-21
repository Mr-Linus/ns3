# NS3

本项目将教你如何在你的电脑上安装 `NS3` 网络仿真模拟器。

目前提供两种方式

- Docker 安装
- Ubuntu 安装

### Docker 安装

手写根据官方文档在你的本机或虚拟机上安装Docker，安装流程请参考 [Docker 安装流程](https://note.geekfan.top/2018/06/15/Docker-faq/#%E5%AE%89%E8%A3%85%E3%80%81%E9%85%8D%E7%BD%AE%E9%97%AE%E9%A2%98-8)。

安装完 Docker 的同学可以直接在终端运行以下命令拉取镜像：

```bash
docker pull registry.cn-hangzhou.aliyuncs.com/geekcloud/ns3:latest
```

执行完毕后执行以下命令开启 NS3 容器：

```bash
docker run -it  registry.cn-hangzhou.aliyuncs.com/geekcloud/ns3:latest /bin/bash
```

测试 NS3 容器是否运行成功：

```bash
cd source/ns-3.28 && ./waf --pyrun examples/tutorial/first.py
```

如果你看见如下输出，则说明你已经成功运行 NS3：

```
Waf: Entering directory `/source/ns-3.28/build'
Waf: Leaving directory `/source/ns-3.28/build'
Build commands will be stored in build/compile_commands.json
'build' finished successfully (5.179s)
At time 2s client sent 1024 bytes to 10.1.1.2 port 9
At time 2.00369s server received 1024 bytes from 10.1.1.1 port 49153
At time 2.00369s server sent 1024 bytes to 10.1.1.1 port 49153
At time 2.00737s client received 1024 bytes from 10.1.1.2 port 9
```



### Ubuntu 安装

如果你的机器或虚拟机上已经安装Ubuntu系统你不妨试试此安装方法。

首先将本项目克隆到本地：

```bash
git clone https://github.com/Mr-Linus/ns3.git
```

进入脚本目录：

```bash
cd bash
```

安装 NS3 环境依赖：

```bash
chmod 755 * && ./install-ns-3-env.sh
```

这个过程会非常漫长，因为 NS3 需要相当多的依赖包。

安装 NS3 的 3.28 版本：

```bash
./install-ns-3.sh
```

这个过程也会相当漫长，当你看见最后输出的 Building ns3 ==> OK 时说明你已经成功安装 NS3 。

测试 NS3：

```bash
cd source/ns-3.28 && ./waf --pyrun examples/tutorial/first.py
```

如果你看见如下输出，则说明你已经成功运行 NS3：

```
Waf: Entering directory `/source/ns-3.28/build'
Waf: Leaving directory `/source/ns-3.28/build'
Build commands will be stored in build/compile_commands.json
'build' finished successfully (5.179s)
At time 2s client sent 1024 bytes to 10.1.1.2 port 9
At time 2.00369s server received 1024 bytes from 10.1.1.1 port 49153
At time 2.00369s server sent 1024 bytes to 10.1.1.1 port 49153
At time 2.00737s client received 1024 bytes from 10.1.1.2 port 9
```

