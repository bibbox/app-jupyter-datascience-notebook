# Jupyter Datascience Notebook BIBBOX application

## Hints
* approx. time with medium fast internet connection: **20 minutes**
* initial user/password: none during the developmnt mode'>'**

## Docker Images Used
 * [jupyter/datascience-notebook](https://hub.docker.com/r/jupyter/datascience-notebook/) 
 
## Standalone Installation 

To install the app locally execute the commands:

`git clone https://github.com/bibbox/app-jupyter-datascience-notebook`

`cd app-jupyter-datascience-notebook`

`docker-compose up -d or docker-compose up to see Logs`

After the Installation open "http://localhost:8888. And enter the Jupyther Token ("vendetta" see docker-compose.yml) 

You can run the Demo.ipynb from the folder system. The folders contain the Python sources until the PyPi Package is complete.

If necessary change the ports in the environment file .env and the volume mounts in `docker-compose.yml`. 

## Install Environment Variables

## Mounted Volumes

* the data folder  _/home/jovyan/work_ will be mounted to _data/work_ in your working directory
