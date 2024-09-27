#!/bin/bash

NAMESPACE="minio-setup"

# Criar namespace, se não existir
kubectl create namespace $NAMESPACE || true

# Aplicar os arquivos YAML
kubectl apply -f ../k8s/minio-deployment.yaml -n $NAMESPACE
kubectl apply -f ../k8s/minio-service.yaml -n $NAMESPACE
kubectl apply -f ../k8s/nginx-deployment.yaml -n $NAMESPACE
kubectl apply -f ../k8s/nginx-service.yaml -n $NAMESPACE

echo "Deploy no Kubernetes concluído!"
