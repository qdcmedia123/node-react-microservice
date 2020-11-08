docker build -t bharat/posts .
docker run [image id or image tag]
docker run -it [image id or image tag] [cmd]
docker ps 
docker exec -it [container id][cmd]
docker logs [container id]

#Kubernets 
minikube kubectl get pods 
kubectl exec -it [pod_name][cmd]
		logs [pod_name]
		delete pod [pode_name]
		apply -- -f [config file name]
		descript pd [pod_name]