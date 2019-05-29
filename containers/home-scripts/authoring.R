BiocManager::install(c(
  "blogdown",
  "DiagrammeR",
  "DT",
  "flexdashboard",
  "knitcitations",
  "learnr",
  "revealjs",
  "xaringan"
), quiet = TRUE, update = FALSE)
try(webshot::install_phantomjs())
remotes::install_github("rstudio/gt", build = TRUE, build_opts = "", force = TRUE, quiet = TRUE)
remotes::install_github("rstudio/distill", build = TRUE, build_opts = "", force = TRUE, quiet = TRUE)
