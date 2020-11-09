
#https://github.com/kubernetes/minikube/issues/4333
minikube start

minikube kubectl version


# fuck that macbook commmand udemy did not work while creating resource 
#  minikube kubectl apply  -f posts.yaml (Teacher was suing in macbook)

minikube kubectl apply -- -f posts-depl.yaml

# get the all running pods 
minikube kubectl get pods

# get inside the pod container by its name 
minikube kubectl exec -- -it [pod_name] sh

#get the logs for specific pod by name 
minikube kubectl logs [pod_name]

#delete pod [pode_name]
minikube kubectl delete pod [pode_name]

#describe 
minikube kubectl description pd [pod_name]

# create alias which will help you for short command 
gedit ~/.bashrc

alias mk='minikube kubectl'

#source ~/.bashrc

# add the aliase 
# mk = minikube kubectl
#delete deployment 
mk delete deployment posts-depl

#rollout the deployment 
minkube rollout restart deployment [name_of_deployment] # eg posts-depl

# get the ip address of minikube 
minikube ip
# 192.168.49.2

#mk apply -- -f posts-srv.yaml

#list all the services that is in post services
mk get services

: '
kubernetes   ClusterIP   10.96.0.1    <none>        443/TCP          5d19h
posts-srv    NodePort    10.98.2.22   <none>        4000:31449/TCP   43s

'

# Describe the services 
mk describe service name[posts-srv]

: '
Name:                     posts-srv
Namespace:                default
Labels:                   <none>
Annotations:              <none>
Selector:                 app=posts
Type:                     NodePort
IP:                       10.98.2.22
Port:                     posts  4000/TCP
TargetPort:               4000/TCP
NodePort:                 posts  31449/TCP
Endpoints:                172.17.0.4:4000
Session Affinity:         None
External Traffic Policy:  Cluster
Events:                   <none>
'

# To access the service endpoints 
# minikube ip
# then use ip with something like this 
# 192.168.49.2:31449/posts