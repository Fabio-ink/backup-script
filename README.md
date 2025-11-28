# Roteiro de Backup

Este projeto contém um script de shell simples para criar um backup compactado de um diretório especificado.

## Descrição

O script `backup.sh` usa o caminho de um diretório de origem como argumento e cria um arquivo `.zip` desse diretório. O arquivo é marcado com data e hora e salvo em um local de backup predefinido (Exemplo: `/home/username/bkp`).

## Uso

Para executar o script, você precisa fornecer o caminho para o diretório do qual deseja fazer o backup.

### Pré-requisitos

- O `zip` deve estar instalado em seu sistema.
- O script deve ser executado em um ambiente do tipo Unix (Linux, macOS).

### Execução

1.  Certifique-se de que o script seja executável:
    ```bash
    chmod +x backup.sh
    ```

2.  Execute o script, passando o diretório de origem como argumento:
    ```bash
    ./backup.sh /caminho/para/seu/diretorio
    ```

    Substitua `/caminho/para/seu/diretorio` pelo caminho real da pasta da qual você deseja fazer o backup.

### Exemplo

```bash
./backup.sh /home/fabio/documentos
```

Este comando criará um arquivo zip como `documentos_20251110_103000.zip` dentro do diretório `/home/fabio/bkp_tests`.
