#! /bin/bash
#This Script make backup of the logs files
set -euo pipefail
#
#Variables 
pathdir=/var/log/
logsdate="logs"-$(date +'%Y-%m-%d').tar.gz

#Compressing logs directory 
echo -e "\nGenerando el archivo de logs.."
tar -czf "$logsdate" "$pathdir" 
echo -e "\nArchivo creado correctamente"
ls -l $logsdate

#Creating backups Directory
mkdir -p /backups
mv $logsdate /backups
echo -e "\nBackup creado en la ruta /backups/$logsdate"
ls -l /backups


