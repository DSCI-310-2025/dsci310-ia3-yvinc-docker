FROM rocker/rstudio:4.4.2

RUN Rscript -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN Rscript -e "remotes::install_version('ggplot2', version = '3.4.4', repos = 'http://cran.rstudio.com')"

RUN Rscript -e "print('I didn't get enough sleep last night but I can't fall back asleep so I'm testing if this is working!')"
