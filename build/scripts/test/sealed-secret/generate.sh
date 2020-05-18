#!/bin/bash
# Create Secret

# Linux
KUBESEAL=kubeseal

kubectl apply -f ./a-secret.yaml --dry-run -o json > ./source-secret.json
kubeseal --controller-namespace sealed-secrets --controller-name sealed-secret-controller-sealed-secrets < ./source-secret.json > ./a-secret.json
rm ./source-secret.json
