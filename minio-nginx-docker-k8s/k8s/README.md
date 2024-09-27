# Estrutura do Repositório

minio-nginx-k8s/
│
├── .gitlab-ci.yml            # Configuração da pipeline CI/CD para GitLab
├── README.md                 # Documentação do projeto
├── k8s/                      # Diretório contendo arquivos de configuração do Kubernetes
│   ├── minio-deployment.yaml  # Deployment do MinIO
│   ├── minio-service.yaml     # Service do MinIO
│   ├── nginx-deployment.yaml   # Deployment do NGINX
│   ├── nginx-service.yaml      # Service do NGINX
│   └── secret.yaml             # Secrets para o MinIO
├── scripts/                  # Scripts de automação
│   └── deploy.sh              # Script para implantar no Kubernetes
└── .env                      # (Opcional) Variáveis de ambiente, pode ser substituído por ConfigMaps e Secrets

# MinIO e NGINX em Kubernetes

Este repositório contém a configuração para implantar um ambiente MinIO com NGINX em Kubernetes.

## Estrutura do Repositório

- `k8s/`: Contém os arquivos de configuração do Kubernetes.
- `scripts/`: Contém scripts de automação.
- `.gitlab-ci.yml`: Configuração da pipeline CI/CD.

## Como Implantar

1. Clone o repositório.
2. Certifique-se de que o `kubectl` está configurado corretamente.
3. Execute o script de deploy:

```bash
./scripts/deploy.sh

Os valores de MINIO_ROOT_USER e MINIO_ROOT_PASSWORD devem ser codificados em base64. Você pode codificá-los usando o seguinte comando:

echo -n 'your_username' | base64
echo -n 'your_password' | base64

Depois de criar o arquivo, aplique-o ao seu cluster:

kubectl apply -f k8s/secret.yaml

Usando a Linha de Comando
Você pode criar um Secret diretamente usando o comando kubectl:

kubectl create secret generic minio-secrets \
  --from-literal=MINIO_ROOT_USER=your_username \
  --from-literal=MINIO_ROOT_PASSWORD=your_password \
  --namespace=minio-setup





Considerações Finais


. Segurança: Não inclua informações sensíveis no repositório. Use Secrets do Kubernetes para gerenciar senhas e tokens.
. Configurações de Rede: Certifique-se de que as configurações de rede (como LoadBalancer) estão de acordo com o seu provedor de Kubernetes.
. Testes e Validações: Adicione etapas de teste na sua pipeline CI/CD para validar os deployments.