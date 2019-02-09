#! /bin/env/Rscript

print(DBI::dbCanConnect(
  drv = RPostgres::Postgres(),
  host = "postgis",
  port = 5432,
  user = "postgres",
  password = Sys.getenv("POSTGRES_PASSWORD"),
  dbname = "postgres"
))
