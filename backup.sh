origin_dir=/home/vii/Documents/CodeProjects/serve-me
backup_dir=/home/vii/bkp_tests

# Verificar se os diretorios de origem e backup existem
if [ ! -d "$origin_dir" ]; then
  echo "Origin folder not found"
  exit 1
fi

if [ ! -d "$backup_dir" ]; then
  echo "Backup folder not found"
  exit 1
fi

# Nome do arquivo zipado, com a datahora atual
timestamp=$(date +'%Y%m%d_%H%M%S')
zip_file="$timestamp.zip"

# Cria o arquivo .zip do diretório de origem
echo "Creating zipped backup..."
cd "$(dirname "$origin_dir")" || exit 1
zip -r "$backup_dir/$zip_file" "$(basename "$origin_dir")"

echo "DONE! Saved in $backup_dir/$zip_file"