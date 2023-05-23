FROM centos:7.9.2009
# 安装Nginx
RUN yum install -y nginx
# 修改Nginx首页信息
RUN echo "Hello! This is ng11in2222222222222x server " > /usr/share/nginx/html/index.html
# 对外暴露80端口
EXPOSE 80
# 启动Nginx
CMD ["nginx", "-g", "daemon off;"]

