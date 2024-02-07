FROM rocker/binder:latest
FROM ru1ma/your-image-name


# 可选：安装额外的R包
RUN R -e "install.packages(c('ggplot2', 'dplyr'), repos='http://cran.rstudio.com/')"

# 可选：安装JupyterLab（如果你的基础镜像没有包含）
RUN pip install jupyterlab