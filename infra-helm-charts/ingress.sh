# install ingress
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm upgrade -i ngx-ingres ingress-nginx/ingress-nginx -f ingress.yaml

#// to connect NGINX ingress to argocd-server
kubectl create ns argocd
# create a pod argocd-dev
kubectl apply -f argocd-dev.yml -n argocd