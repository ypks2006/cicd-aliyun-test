FROM centos:7.9.2009
# 维护者信息
LABEL maintainer="zxp169@163.com"
# 将Dockerfile上下文中的nginx.repo复制到容器中的yum源定义文件位置
COPY ./nginx.repo /etc/yum.repos.d/
RUN yum makecache
# 安装Nginx
RUN yum install -y nginx
# 修改Nginx首页信息
RUN echo "Hello! This is nginx server " > /usr/share/nginx/html/index.html
# 对外暴露80端口
EXPOSE 80
# 启动Nginx
CMD ["nginx", "-g", "daemon off;"]

