#! /usr/bin/env Rscript

BiocManager::install(c(
  "keras",
  "IRkernel",
  "lime",
  "reticulate",
  "sparklyr",
  "tensorflow",
  "tfestimators",
  "tfdatasets"
), quiet = TRUE, update = FALSE)
reticulate::py_discover_config()
IRkernel::installspec()
keras::is_keras_available()
