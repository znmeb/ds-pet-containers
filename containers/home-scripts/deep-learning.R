BiocManager::install(c(
  "keras",
  "lime",
  "reticulate",
  "sparklyr",
  "tensorflow",
  "tfestimators",
  "tfdatasets"
), quiet = TRUE, update = FALSE)
keras::install_keras()
keras::is_keras_available()
