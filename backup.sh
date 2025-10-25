origin_dir=/home/vii/Documents/CodeProjects/serve-me
backup_dir=/home/vii/bkp

# Nome do arquivo zipado, com a datahora atual
timestamp=$(date +'%Y%m%d_%H%M%S')
zip_file="$timestamp.zip"

# Cria o arquivo .zip do diretório de origem
echo "Creating zipped backup..."
zip -r "$backup_dir/$zip_file" "$origin_dir"
echo "DONE! Saved in $backup_dir/$zip_file"