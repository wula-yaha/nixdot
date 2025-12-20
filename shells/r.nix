{ pkgs, ... }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    R
    rstudio
    rPackages.tidyverse
    rPackages.survival
    rPackages.ggplot2
    rPackages.ggvis
    rPackages.DBI
    rPackages.car
    rPackages.mgcv
    rPackages.nlme
    rPackages.zoo
    rPackages.xts
    rPackages.devtools
    rPackages.plotly
    rPackages.multcomp
    rPackages.glmnet
    rPackages.glmnetUtils
    rPackages.lme4
    rPackages.randomForest
    rPackages.e1071
    rPackages.caret
    rPackages.prediction
    rPackages.xgboost
    rPackages.mlr3
    rPackages.tidymodels
    rPackages.keras
    rPackages.dplyr
    rPackages.qcc
    rPackages.timeSeries
    rPackages.faraway
    rPackages.tidyr
    rPackages.stringr
    rPackages.lubridate
  ];
  shellHook = ''
    echo ""
    echo "================================"
    echo "= Welcome to R Dev Environment ="
    echo "================================"
    echo ""
    echo "Use 'rstudio > /dev/null 2>&1 &' to launch RStudio"
  '';
}
