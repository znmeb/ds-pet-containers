#! /usr/bin/env Rscript

BiocManager::install(c(
  "keras",
  "lime",
  "reticulate",
  "RPostgres",
  "sparklyr",
  "tensorflow",
  "tfestimators",
  "tfdatasets"
), quiet = TRUE, update = FALSE)
reticulate::py_discover_config()
keras::is_keras_available()
