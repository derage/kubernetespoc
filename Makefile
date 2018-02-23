up:
	minikube config set kubernetes-version v1.8.0
	minikube start --memory 8192 --cpus 2

install:
	brew cask install minikube
	minikube config set kubernetes-version v1.8.0
