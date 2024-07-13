kd-create:
	kind create cluster --name stack

kd-delete:
	kind delete clusters stack

kd-reset: kd-delete kd-create
