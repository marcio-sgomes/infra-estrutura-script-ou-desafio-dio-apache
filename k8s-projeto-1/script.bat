echo "Criando os servicos no cluster..."
kubectl apply -f ./services.yml

echo "Criando os deployments..."
kubectl apply -f ./deployment.yml