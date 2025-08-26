#! /bin/bash
#This Script make backup of the logs files
#
#Variables 
pathdir=/var/log/
logsdate="logs"-$(date +'%Y-%m-%d').tar.gz

#Compressing logs directory 
echo "Generando el archivo de logs.."
tar -czf $logsdate $pathdir 
sleep 3
echo "listo..!"

#Creating BackUpDirectory
if [ -d /backups ]
then 
    mv $logsdate /backups
else
   varDir=$(mkdir /backups)
   mv $logsdate /backups
fi



