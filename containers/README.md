# The `silver-potato` Project - M. Edward (Ed) Borasky

## Images
* postgis: PostgreSQL 11 + PostGIS 2.5 + pgRouting 2.6, all from [PostgreSQL Global Development Group](https://wiki.postgresql.org/wiki/Apt)
* pgadmin4: minor extensions of [official pgAdmin4 image](https://hub.docker.com/r/dpage/pgadmin4/)
* rstats: [rocker/tidyverse](https://hub.docker.com/r/rocker/tidyverse) with optional [Miniconda3](https://docs.conda.io/en/latest/miniconda.html)

## Quick start
1. Clone <https://github.com/znmeb/silver-potato.git> and `cd` into `containers`.
2. Copy `sample.env` to `.env`, then change all the passwords in `.env'.
3. To run from Docker Hub images, type `docker-compose up -d`. This will download the images if you don't have them. Then it will create the containers and attach them to the host network `localhost`.
    * postgis: the service is listening on ***<http://localhost:5435>***, not the PostgreSQL default, 5432. This avoids port conflicts with any PostgreSQL services you may already have running.
    * pgadmin4: the service is listening on <http://localhost:8686>. First, log in with the email address and password you set for `pgadmin4` in `.env`. Then, click on the `Servers` tab in the tree on the left panel. It will ask you for the `postgres` password you set in `.env`. Then it will connect to the `postgis` container.
    * rstats: the service is listening on <http://localhost:8787>. Log in as `rstudio` with the password you set in `.env`.
4. Jupyter and Python deep learning stack: `silver-potato` now has scripts to install a Jupyter data science / machine learning stack.
    1. Browse to RStudio Server at <http://localhost:8787>.
    2. Go to the `Terminal` tab and type `scripts/jupyter.bash`. This will
        - Install Miniconda3.
        - Create a Conda environment called `r-tensorflow` with the Jupyter stack, `keras`, `tensorflow`, `pytorch-cpu` and `torchvision-cpu`.
        - Install the R packages that support R kernels in Jupyter notebooks and the R interface to `keras` and `tensorflow`.
        - Test that all the infrastructure works.
    3. The installation will take some time because of the number of Python and R packages it needs to download and install in `r-tensorflow` and the local R library. Once it completes, type `scripts/start-jupyter.bash` to open a Jupyter notebook server on <http://localhost:8888>. The script will ask you to set a notebook password. Both Python 3 and R notebooks are available.
5. To stop the services, type `docker-compose stop`. To start them back up again, type `docker-compose start`. If you're using the Jupyter notebook server, you'll need to restart it using the RStudio Server terminal.
