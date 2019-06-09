#! /usr/bin/env Rscript

Sys.setenv(
  PATH = sprintf("/home/rstudio/miniconda3/envs/r-tensorflow/bin:%s", Sys.getenv("PATH"))
)
BiocManager::install(c(
  "IRkernel",
  "keras",
  "lime",
  "reticulate",
  "RPostgres",
  "sparklyr",
  "tensorflow",
  "tfestimators",
  "tfdatasets"
), quiet = TRUE, update = FALSE)
IRkernel::installspec()
reticulate::py_discover_config()
keras::is_keras_available()
