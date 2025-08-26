#! /bin/bash
#This Script make backup of the logs files
#
#Variables 
pathdir=/var/log/
logsdate="logs"-$(date +'%Y-%m-%d').tar.gz

#Compressing logs directory 
echo "Generando el archivo de logs.."
tar -czf "$logsdate" "$pathdir" 
echo "Archivo creado correctamente"
ls -l $logdate

#Creating BackUpDirectory
if [ -d /backups ]
then 
    mv $logsdate /backups
else
   mkdir /backups
   mv $logsdate /backups
fi



