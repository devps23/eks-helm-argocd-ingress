if [ "$1" == "install" ]; then
 kubectl create namespace argocd
 kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
# kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'

 sleep 10

 echo url - https://${kubectl get svc -n argocd argocd-server | awk '{print $4}' | tail -1}
 echo username - admin
 echo password - $(argocd admin initial-password -n argocd | head -1)
fi

if [ "$2" == "jobs" ]; then
    argocd login $(kubectl get ingress -A | grep argocd | awk '{print$4}') --username admin --password $(argocd admin initial-password -n argocd | head -1) --insecure --grpc-web
    for app in backend frontend ; do
    argocd app create ${app} --repo https://github.com/devps23/expense-helm-chart.git --path chart --dest-server https://kubernetes.default.svc --dest-namespace default.svc --grpc-web --values values/${app}.yml
    done
fi

