#!/bin/bash

# Obtenemos los argumentos de línea de comandos
GITHUB_VARS=$1
FILE_PATH=$2
PREFIX=$3
SUFFIX=$4

# Leemos el contenido del archivo
FILE_CONTENTS=$(cat $FILE_PATH)

# Iteramos sobre las claves de GITHUB_VARS y reemplazamos los valores correspondientes en FILE_CONTENTS
for key in $(echo $GITHUB_VARS | jq -r 'keys[]'); do
  value=$(echo $GITHUB_VARS | jq -r ".$key")
  FILE_CONTENTS=${FILE_CONTENTS//$PREFIX$key$SUFFIX/$value}
done

# Sobrescribimos el contenido del archivo con el contenido actualizado
echo "$FILE_CONTENTS" > $FILE_PATH
