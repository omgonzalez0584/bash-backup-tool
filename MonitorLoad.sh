#! /bin/bash
#Monitor de carga del sistema

echo "Estado de carga del sistema"

loadAvg=$(uptime)
core=$(nproc)
Arreglo=()
if [ $core -eq 1 ];then
	echo "Este servidor tiene $core core"
else
	echo "Este servidor tiene $core cores"
fi

for word in $loadAvg
do
  Arreglo+=($word)
done
oneMin=${Arreglo[7]}
fiveMin=${Arreglo[8]}
FifteenMin=${Arreglo[9]}

 


echo "$oneMin"
echo "$fiveMin"
echo "$FifteenMin"


echo "$loadAvg"



