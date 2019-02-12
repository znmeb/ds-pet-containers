#! /usr/bin/env Rscript

for (itry in 1:10) {
  if (
    print(DBI::dbCanConnect(
      drv = RPostgres::Postgres(),
      host = "localhost",
      port = 5432,
      user = "postgres",
      password = Sys.getenv("POSTGRES_PASSWORD"),
      dbname = "postgres"
    ))) break
  Sys.sleep(3)
}
