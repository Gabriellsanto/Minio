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
