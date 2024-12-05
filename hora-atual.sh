HORA=$(date +%H)
#HORA=$1
MIN=$(date +%M)

#Considerando períodos para que definir se é antes de meio dia ou pós meio dia e seja apresentado bom dia, boa tarde ou boa noite.
if [ $HORA -ge 06 -a $HORA -lt 12 ]
then
  echo "Bom dia!"
elif [ $HORA -ge 12 -a $HORA -lt 18 ]
then
  echo "Boa tarde!"
else
  echo "Boa noite!"
fi

#Para definir se é AM ou PM.
if [ $HORA -ge 12 ]
then 
  AMPM=PM
else
  AMPM=AM
fi

#Para reduzir a hora
if [ $HORA -gt 12 ]
then
  HORA=$(expr $HORA - 12)
fi

echo
echo "A hora atual é: $HORA:$MIN $AMPM"
