
#https://github.com/kubernetes/minikube/issues/4333
minikube start

minikube kubectl version


# fuck that macbook commmand udemy did not work while creating resource 
#  minikube kubectl apply  -f posts.yaml (Teacher was suing in macbook)

minikube kubectl apply -- -f posts.yaml

# get the all running pods 
minikube kubectl get pods

# get inside the pod container by its name 
minikube kubectl exec -- -it [pod_name] sh

#get the logs for specific pod by name 
minikube kubectl logs [pod_name]

#delete pod [pode_name]
minikube kubectl delete pod [pode_name]

#describe 
minikube kubectl descript pd [pod_name]

# create alias which will help you for short command 
gedit ~/.bashrc

alias mk='minikube kubectl'

#source ~/.bashrc

# add the aliase 
# mk = minikube kubectl
#delete deployment 
mk delete deployment posts-depl