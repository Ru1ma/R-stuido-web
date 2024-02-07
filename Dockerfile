FROM rocker/binder:latest

# 设置工作目录
WORKDIR /home/jovyan

# 安装R包
RUN R -e "install.packages(c('ggplot2', 'dplyr', 'shiny'), repos='http://cran.rstudio.com/')"

# 复制你的代码和数据到镜像中（根据需要调整路径）
COPY . /home/jovyan

# 配置容器启动时执行的命令（根据需要选择）
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]


FROM ru1ma/your-image-name
FROM ubuntu:latest
WORKDIR /app
COPY . /app
CMD ["your-command-here"]









