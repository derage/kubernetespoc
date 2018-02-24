up:
	minikube config set kubernetes-version v1.8.0
	minikube start --memory 8192 --cpus 2
	minikube addons enable kube-dns || true
	
install:
	brew cask install minikube

clean:
	minikube delete

build:
	./bin/build-and-push

deploy:
	kubectl apply -f ./kubernetes/hardway
	kubectl expose deployment kubernetespoc --type=NodePort
	minikube service list
