install-cnpg:
	helm upgrade --install cnpg \
		 --namespace cnpg-system \
		 --create-namespace \
		 cnpg/cloudnative-pg
