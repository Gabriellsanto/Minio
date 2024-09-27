# MinIO e NGINX com Docker

Este repositório contém uma configuração Docker para um cluster MinIO com NGINX como balanceador de carga.

## Estrutura do Projeto

minio-nginx-docker-k8s/
│
├── .gitlab-ci.yml           # Configuração da pipeline CI/CD
├── README.md                # Documentação do projeto
├── docker-compose.yaml      # Definições Docker Compose para MinIO e NGINX
├── .env                     # Arquivo de variáveis de ambiente para o MinIO
├── nginx/                   # Configuração do NGINX
│   └── nginx.conf           # Arquivo de configuração do NGINX
└── scripts/                 # Scripts de automação
    └── test.sh              # Script de teste


## Pré-requisitos

- Docker
- Docker Compose

## Configuração

1. Clone este repositório:

   ```bash
   git clone https://
   cd minio-nginx-docker

2. Crie um arquivo .env baseado no .env.example:

cp .env.example .env

    2.1 Edite o arquivo .env para definir suas chaves de acesso do MinIO.

3. Inicie os serviços:

docker-compose up -d

    3.1 Acessando o MinIO
    . O MinIO estará acessível em: http://localhost:9000
    . O console do MinIO estará acessível em: http://localhost:9001

        3.1.1 Parar os Serviços

        Para parar os serviços, execute:

        docker-compose down


## Contribuição
Sinta-se à vontade para abrir problemas ou enviar solicitações de pull.

4. Arquivo .env
O arquivo .env deve conter as variáveis necessárias para sua configuração, como:

# .env
MINIO_ACCESS_KEY=minio
MINIO_SECRET_KEY=minio123

5. Arquivo nginx/nginx.conf
A configuração do NGINX. Certifique-se de que esteja correto e adequado às suas necessidades.

https://resources.min.io/c/installing-and-running-minio-on-docker-multi-drive-docker-compose?x=p9k0ng



6. Script de Teste scripts/test.sh
Você pode adicionar um script simples para testar se os serviços estão rodando corretamente. Um exemplo pode ser:

#!/bin/bash

# Verifica se o MinIO está acessível
if curl -s http://localhost:9000/ > /dev/null; then
  echo "MinIO está rodando."
else
  echo "MinIO não está acessível."
fi

# Verifica se o NGINX está acessível
if curl -s http://localhost:80/ > /dev/null; then
  echo "NGINX está rodando."
else
  echo "NGINX não está acessível."
fi


Não se esqueça de dar permissão de execução ao script:

chmod +x scripts/test.sh


# Conclusão
Com essa estrutura organizada e os exemplos de conteúdo, você terá um repositório bem estruturado para o seu projeto MinIO com NGINX.


