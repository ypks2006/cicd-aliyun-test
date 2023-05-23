FROM centos:7.9.2009
# 维护者信息
LABEL maintainer="zxp169@163.com"
# 安装Nginx
RUN yum install -y nginx
# 修改Nginx首页信息
RUN echo "Hello! This is nginx server " > /usr/share/nginx/html/index.html
# 对外暴露80端口
EXPOSE 80
# 启动Nginx
CMD ["nginx", "-g", "daemon off;"]

