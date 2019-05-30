#! /usr/bin/env Rscript

BiocManager::install(c(
  "Anthropometry",
  "baseballDBR",
  "BradleyTerry2",
  "Lahman",
  "mlbgameday",
  "mvglmmRank",
  "pitchRx",
  "PlayerRatings",
  "SportsAnalytics"
), quiet = TRUE, update = FALSE)
remotes::install_github(
  "znmeb/dfstools", force = TRUE, build = TRUE, build_opts = ""
)
