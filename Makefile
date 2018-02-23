up:
	minikube config set kubernetes-version v1.8.0
	minikube start --memory 8192 --cpus 2
	minikube addons enable kube-dns || true


install:
	brew cask install minikube

clean:
	minikube delete
