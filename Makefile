kd-create:
	kind create cluster --name stack

kd-delete:
	kind delete clusters stack

kd-reset: kd-delete kd-create

install-cnpg:
	helm upgrade --install cnpg \
		 --namespace cnpg-system \
		 --create-namespace \
		 cnpg/cloudnative-pg

install-db: install-cnpg
	helm install postgres ./postgres
