kd-create:
	kind create cluster --name stack

kd-delete:
	kind delete clusters stack

kd-reset: kd-delete kd-create

install-cnpg-controller:
	kubectl apply --server-side -f \
  	https://raw.githubusercontent.com/cloudnative-pg/cloudnative-pg/release-1.23/releases/cnpg-1.23.2.yaml

install-cnpg-cluster:
	kubectl apply -f ./postgres/cluster.yaml
