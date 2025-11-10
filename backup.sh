#!/bin/bash

# O diretório de origem agora é o primeiro argumento ($1)
origin_dir="$1"

# O diretório de backup permanece fixo no script
backup_dir=/home/fabio/bkp_tests

# Verificar se o parâmetro de origem foi fornecido
if [ -z "$origin_dir" ]; then
  echo "Uso: $0 <caminho_da_pasta_a_ser_copiada>"
  exit 1
fi

# Verificar se os diretorios de origem e backup existem
if [ ! -d "$origin_dir" ]; then
  echo "Origin folder not found: $origin_dir"
  exit 1
fi

if [ ! -d "$backup_dir" ]; then
  echo "Backup folder not found. Creating $backup_dir..."
  mkdir -p "$backup_dir"
  if [ $? -ne 0 ]; then
    echo "ERROR: Failed to create backup directory $backup_dir"
    exit 1
  fi
fi

# Nome do arquivo zipado, com a datahora atual
timestamp=$(date +'%Y%m%d_%H%M%S')
# Para garantir que o nome do arquivo ZIP seja único e reflita a pasta,
folder_name=$(basename "$origin_dir")
zip_file="${folder_name}_${timestamp}.zip"

# Cria o arquivo .zip do diretório de origem
echo "Creating zipped backup for $origin_dir..."
cd "$(dirname "$origin_dir")" || { echo "Failed to change directory."; exit 1; }
zip -r "$backup_dir/$zip_file" "$folder_name"

echo "DONE! Saved in $backup_dir/$zip_file"