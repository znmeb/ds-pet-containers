#! /usr/bin/env Rscript

install.packages(c(
  "acs",
  "ggmap",
  "mapdeck",
  "RPostgres",
  "stplanr",
  "tidycensus",
  "tidytransit",
  "tmap"),
  quiet = TRUE, update = FALSE)
remotes::install_github("hrbrmstr/lodes", force = TRUE, build = TRUE, build_opts = "", quiet = TRUE)
