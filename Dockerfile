#使用 ubuntu 22.4 作为基础镜像
Bash
2
d
6
8
FROM ubuntu:22.84
#安装 shellinabox
RUN apt-get update && \
apt-get install -y shellinabox && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
0
10
41
# 设置 root 用户的密码为root'
RUN echo 'root:root" chpasswd
12
13
14
15
16
么
# 暴露 22 端口
EXPOSE 22
#启动 Shellinabox
CMD ["/usr/bin/shellinaboxd"，"-t"，"-s"，"/:LOGIN"]
