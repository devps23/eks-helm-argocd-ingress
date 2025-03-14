helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
# service for nlb
helm upgrade -i ngx-ingres ingress-nginx/ingress-nginx -f ingress.yaml
kubectl create namespace -n argocd
kubectl apply -f argocd-ingress-dev.yaml -n argocd


