# eks-helm-argocd-ingress
NGINX ingress:
==============
* NGINX Ingress Controller is a specialized software component that integrates with Kubernetes to manage and route incoming HTTP and HTTPS traffic to applications running within a Kubernetes cluster.
* to create Loadbalancer for each and every service in aws 
* for one service only one LoadBalancer is created, if there are multiple services to create multi loadbalancers.this is not a good,so to overcome this problem we use NGINX ingress.
* NGINX ingress provide Loadbalancer for all services and distribute traffic to particular services.

step1:
======
* Install NGINX ingress

step2:
======

* https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
the above url is a argocd to install 
this is a yaml file 
this is a manifest data, to provide detailed information about argocd

* kubectl apply -f argocd-ingress-dev.yaml
created a pod
* Now pass the values to the controller which type of LoadBalancer to use

* to remove helm repo
helm repo remove ingress-nginx
* helm repo list
* history | grep docker | grep vault

to delete all deployment at a time use the below command:
kubectl delete -f ingress-helm-chart/argocd-ingress-dev.yaml -n default

kubectl delete deploy backend

bash -x argo.sh, to know previous data

docker run -it docker.io/redhat/ubi9 , to exec into a bash / sh
