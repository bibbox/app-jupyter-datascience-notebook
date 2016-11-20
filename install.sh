#!/bin/bash
#
# SCRIPT TO INSTALL A WORDPRESS INSTANCE WITHIN A BIBBOX SERVER
#
#
echo "Installing Jupyter BIBBOX Application"
echo "installing from $PWD"

PROGNAME=$(basename $0)

error_exit()
{
	echo "ERROR in ${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
	clean_up 1
}

 #ADD CUSTOM CHECKS AN LOSs as YOU LIKE
checkParametersAndWriteLog() 
{
    echo "Setup parameters:"
    echo "Jupyter password: $JUPYTER_PASSWORD "
}

updateConfigurationFile()
{
    echo "Create and Update config files"  
    if  [[ ! -f "$folder/docker-compose.yml" ]]; then
        cp docker-compose-template.yml "$folder/docker-compose.yml"
    fi
  # SAME IN EVERY INSTALL.SH / DONT CHANGE  
    sed -i  "s/§§INSTANCE/${instance}/g" "$folder/docker-compose.yml"
    sed -i  "s#§§FOLDER#${folder}#g" "$folder/docker-compose.yml"
    sed -i  "s/§§PORT/${port}/g" "$folder/docker-compose.yml"
  # CHANGE  
  # TODO special characters in passwords 
    sed -i "s#§§JUPYTER_PASSWORD #${JUPYTER_PASSWORD}#g" "$folder/docker-compose.yml"
}

createFolders()
{
    echo "Create folders within $folder"
    if [[ ! -d "$folder" ]]; then
        echo "Creating Data Folder"
        mkdir -p "$folder/home/jovyan/work"
    fi
}

#
# MAIN
while [ "$1" != "" ]; do
    case $1 in
        -i | --instance )       shift
                                instance=$1
                                ;;
        -f | --folder )         shift
                                folder=$1
                                ;;
        -p | --port )           shift
                                port=$1
                                ;;
        --JUPYTER_PASSWORD ) shift
                                JUPYTER_PASSWORD=$1
                                ;;
    esac
    shift
done


# SAME IN EVERY INSTALL.SH / DONT CHANGE
checkParametersAndWriteLog
createFolders
updateConfigurationFile
