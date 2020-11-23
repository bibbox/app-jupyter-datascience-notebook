# Jupyter Datascience Notebook BIBBOX application

## Hints
* approx. time with medium fast internet connection: **20 minutes**
* initial user/passwordd: none during the developmnt mode'>'**

## Docker Images Used
 * [jupyter/datascience-notebook](https://hub.docker.com/r/jupyter/datascience-notebook/) 
 
## Standalone Installation 

To install the app locally execute the commands:

`git clone https://github.com/bibbox/app-jupyter-datascience-notebook`

`cd aapp-jupyter-datascience-notebook`

`mkdir -p data/work`

`docker-compose up -d`

After the Installation open "localhost:8065/install/install.php" in browser to set up SeedDMS.

The dafault port of the app SeedDMS is 8065.

If necessary change the ports in the environment file .env and the volume mounts in `docker-compose.yml`.



## Install Environment Variables

## Mounted Volumes

* the data folder  _/home/jovyan/work_ will be mounted to _data/work_ in your working directory
