#!/bin/bash
set -e

# always set this for scripts but don't declare as ENV..
export DEBIAN_FRONTEND=noninteractive

## Custum install packages
install2.r  --error -r $CRAN --skipinstalled \
    GGally \
    ggridges \
    RColorBrewer \
    scales \
    viridis 

install2.r  --error -r $CRAN --skipinstalled \
    flexdashboard \
    plotly \
    odbc \
    lubridate \
    RSelenium \
    RJSONIO \
    crosstalk \
    forecast \
    igraph \
    visNetwork \
    linkcomm 

install2.r  --error -r $CRAN --skipinstalled \
    config \
    doParallel \
    DT \
    data.table \
    foreach \
    formattable \
    glue \
    here \
    Hmisc \
    httr \
    jsonlite \
    kableExtra \
    logging \
    MASS \
    microbenchmark \
    openxlsx \
    pkgdown \
    rlang \
    RPushbullet \
    roxygen2 \
    stringr \
    styler \
    testthat \
    usethis \
    magrittr \
    summarytools \
    FactoMineR \
    factoextra \
    ggpubr \
    explor \
    scatterD3 \
    rlist \
    pipeR \
    R.utils \
    UpSetR \
    colourpicker \
    patchwork \
    sodium \
    arrow 

install2.r  --error -r $CRAN --skipinstalled \
    caret \
    car \
    tidymodels \
    MLmetrics \
    pROC \
    arm \
    e1071 \
    elasticnet \
    glmnet \
    kernlab \
    lme4 \
    ltm \
    mboost \
    randomForest \
    ranger \
    rpart \
    survival \
    xgboost

rm -rf /tmp/downloaded_packages
rm -rf /var/lib/apt/lists/*
