default: up deploy

up:
	minikube config set kubernetes-version v1.8.0
	minikube start --memory 8192 --cpus 2
	minikube addons enable kube-dns || true

install:
	brew install kops || brew upgrade kops
	brew cask install minikube
	curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.8.0/bin/darwin/amd64/kubectl
	chmod +x ./kubectl
	sudo mv ./kubectl /usr/local/bin/kubectl
clean:
	minikube delete

build:
	./bin/build-and-push

deploy:
	kubectl apply -f ./kubernetes/hardway
	kubectl expose deployment kubernetespoc --type=NodePort
	minikube service list
