FROM rocker/rstudio:4.4.2

RUN Rscript -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN Rscript -e "remotes::install_version('ggplot2', version = '3.4.4', repos = 'http://cran.rstudio.com')"
