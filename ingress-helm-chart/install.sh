# install nginx ingress
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
# create namespace with argocd
kubectl create namespace argocd




