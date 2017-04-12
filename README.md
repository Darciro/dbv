# Versionamento de Banco de dados
Scripts responsáveis por criar um dump com as informações contidas no banco de dados e importa-las de forma 
simples usando CLI.

## Configurações necessárias
É necessário alterar as informações referentes ao banco de dados nos arquivos executáveis (*db-backup.sh* e *db-restore.sh*), da seguinte maneira:

```
USER="usuario"
PASS="senha"
DB="bancodedados"
```

Além disso, é preciso alterar a URL do ambiente para aonde será enviado a cópia do banco de dados. Para tanto, configure o arquivo *db-update.sql* (localizado no diretório **data**), alterando os campos necessários, conforme exemplo abaixo: 

```
USE bancodedados
UPDATE wp_options SET option_value="http://enderecodedeploy.com.br" WHERE option_name="siteurl";
UPDATE wp_options SET option_value="http://enderecodedeploy.com.br" WHERE option_name="home";
```

## Executando

Para criar uma cópia do banco de dados (A.K.A. gerar um dump), execute o script *db-backup.sh* (conforme mostrado abaixo). Este comando criará um arquivo no diretório **data** (*db-backup.sql*), contendo o SQL referente ao banco de dados.
```
./db-backup.sh
```
Apartir desse momento vocẽ já pode enviar os arquivos através do seu VCS (Version Control System).

Já no ambiente de deploy (produção ou homologação), execute a atualização dos arquivos (pull, update, etc) e em seguida execute o script *db-restore.sh* (conforme mostrado abaixo) para importar os dados.
```
./db-restore.sh
```

Pronto, sua aplicação possui bancos de dados sincronizados!