FROM rocker/rstudio:latest



# 安装R包
RUN R -e "install.packages(c('ggplot2', 'dplyr'), repos='http://cran.rstudio.com/')"

# 可选：复制本地的R脚本并执行
# COPY install_packages.R /install_packages.R
# RUN Rscript /install_packages.R

# 其他配置...


FROM ru1ma/your-image-name
FROM ubuntu:latest
WORKDIR /app
COPY . /app
CMD ["your-command-here"]





