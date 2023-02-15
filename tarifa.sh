#!/bin/bash

# Pedimos al usuario que introduzca el número de llamadas que tiene previsto hacer
echo "Introduce el número de llamadas que tienes previsto hacer:"
read num_llamadas

# Calculamos el coste de cada una de las tarifas
coste_tarifa1=100
coste_tarifa2=$((50 + num_llamadas))
coste_tarifa3=$((20 + (2 * num_llamadas)))

# Comparamos los costes de las tres tarifas y mostramos la más conveniente
if [ $coste_tarifa1 -le $coste_tarifa2 ] && [ $coste_tarifa1 -le $coste_tarifa3 ]
then
  echo "La Tarifa 1 es la más conveniente para ti. El coste total es de 100€."
elif [ $coste_tarifa2 -le $coste_tarifa1 ] && [ $coste_tarifa2 -le $coste_tarifa3 ]
then
  echo "La Tarifa 2 es la más conveniente para ti. El coste total es de $coste_tarifa2€."
else
  echo "La Tarifa 3 es la más conveniente para ti. El coste total es de $coste_tarifa3€."
fi
