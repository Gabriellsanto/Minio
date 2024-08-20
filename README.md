# Minio
Para rodar o MinIO, siga estes passos README.md


Crie o arquivo docker-compose.yml

Crie o diretório e o arquivo de configuração:

Crie o diretório /meu-projeto-minio/minio/data para armazenar os dados.
mkdir meu-projeto-minio
cd meu-projeto-minio
mkdir minio
cd minio
mkdir data

Crie o arquivo minio/.env com as variáveis de ambiente necessárias, por exemplo:
cd minio
vi .env
Insira o conteudo 

MINIO_ROOT_USER=seu-usuario
MINIO_ROOT_PASSWORD=sua-senha


Execute o Docker Compose:
docker-compose up -d

Isso iniciará o serviço MinIO, e você poderá acessá-lo nos endereços http://localhost:9000 para a API e http://localhost:9001 para o console de administração.

