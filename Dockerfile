FROM r-base:4.0.3

RUN apt update && \
    apt install -y \
        git pandoc texlive-luatex texlive-latex-extra \
        libcurl4-openssl-dev libxml2-dev libssl-dev
RUN R -e 'install.packages("devtools")' && \
    R -e 'install.packages("BiocManager")' && \
    R -e 'install.packages(c("data.table", "ggplot2", "UpSetR"))' && \
    R -e 'install.packages(c("rmarkdown", "knitr", "kableExtra"))' && \
    R -e 'BiocManager::install("ComplexHeatmap")'
