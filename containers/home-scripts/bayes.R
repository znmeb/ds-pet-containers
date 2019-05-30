#! /usr/bin/env Rscript

BiocManager::install(c(
  "brms",
  "rjags",
  "rstan",
  "rstanarm",
  "rstantools"
), quiet = TRUE, update = FALSE)

# R-INLA
install.packages(
  "INLA",
  repos = c(
    getOption("repos")[["CRAN"]],
    INLA = "https://inla.r-inla-download.org/R/stable"
  ),
quiet = TRUE)

# Textbooks
remotes::install_github("rmcelreath/rethinking", build = TRUE, build_opts = "", force = TRUE, quiet = TRUE)
remotes::install_github("julianfaraway/brinla", build = TRUE, build_opts = "", force = TRUE, quiet = TRUE)
