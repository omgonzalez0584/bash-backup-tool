#! /bin/bash
#Script make backup of the logs files
#
pathdir=/var/log/
logsdate="logs"-$(date +'%Y-%m-%d').tar.gz

#empaquetando directorio 
tar -czvf $logsdate $pathdir 
