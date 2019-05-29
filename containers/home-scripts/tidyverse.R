BiocManager::install(c(
  "snakecase",
  "RPostgres"), quiet = TRUE, update = FALSE)
try(tinytex::install_tinytex())
