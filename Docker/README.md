# MinIO Distributed Setup with NGINX Load Balancing

Este projeto utiliza o MinIO distribuído com 4 nós (containers) em Docker, juntamente com um container NGINX para realizar balanceamento de carga. O NGINX distribui o tráfego entre os nós do MinIO para garantir alta disponibilidade e distribuição de dados.

## Estrutura do Projeto

- **MinIO**: 4 instâncias configuradas para trabalhar em modo distribuído.
- **NGINX**: Balanceador de carga que distribui o tráfego entre as instâncias MinIO.
- **Docker Compose**: Orquestra todos os containers necessários para o ambiente funcionar corretamente.
  
## Pré-requisitos

Certifique-se de que você tenha os seguintes itens instalados antes de rodar o projeto:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Arquivos Importantes

- **`docker-compose.yaml`**: Define os serviços MinIO e NGINX e como eles são configurados.
- **`./minio/.env`**: Contém as variáveis de ambiente para configurar o usuário root e a senha do MinIO.
- **`./nginx/nginx.conf`**: Arquivo de configuração do NGINX para fazer o balanceamento de carga entre os containers MinIO.

## Como Usar

### 1. Clone o repositório

```bash
git clone <url-do-repositorio>
cd <nome-do-diretorio>


2. Configurar o arquivo .env

No diretório minio, existe um arquivo .env que define as credenciais de acesso do MinIO. Verifique se o conteúdo é adequado:

MINIO_ROOT_USER=minioadmin
MINIO_ROOT_PASSWORD=minioadmin123

Você pode modificar esses valores conforme necessário.

3. Configuração do NGINX
No diretório nginx, você encontrará o arquivo nginx.conf. Esse arquivo contém a configuração para o balanceamento de carga entre as instâncias do MinIO. O balanceamento é feito através de um upstream, que distribui as requisições entre os quatro containers MinIO.

4. Rodar o ambiente
Agora você está pronto para rodar os containers:

docker-compose up -d

Esse comando inicializa os containers em segundo plano.

5. Verificar o funcionamento
Verifique se os containers estão rodando corretamente:

docker ps

Você deve ver os containers minio1, minio2, minio3, minio4 e nginx ativos.

6. Acessar o Console do MinIO
O console web do MinIO pode ser acessado em http://localhost:9001. Use o usuário e a senha definidos no arquivo .env.

7. Parar o ambiente
Para parar os containers, basta rodar:

docker-compose down

Personalizações
Se você quiser alterar as portas de exposição dos containers, edite a seção ports no arquivo docker-compose.yaml.
O arquivo nginx.conf pode ser ajustado para alterar a estratégia de balanceamento de carga, como round-robin, least-connections, etc.
Licença
Este projeto está sob a licença MIT. Sinta-se à vontade para modificar e distribuir como desejar.


### O que este `README.md` cobre:
1. **Descrição geral**: Explica o propósito do projeto e a configuração distribuída do MinIO com NGINX.
2. **Pré-requisitos**: Menciona as ferramentas necessárias para rodar o projeto.
3. **Configuração passo a passo**: Instruções sobre como clonar, configurar e rodar o projeto.
4. **Personalização**: Explicação de como alterar as portas e ajustar a configuração do NGINX.
5. **Licença**: Um exemplo de nota sobre a licença.

Licença do MinIO
Este projeto utiliza MinIO, que está sob a licença AGPL v3.0.
