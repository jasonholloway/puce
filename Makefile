
.PHONY: build run

image.v: src
	docker build -t ansi src
	echo ansi > image.v

build: image.var

# export SSHKEY="$(cat ~/.ssh/id_rsa)"
# export SSHPASS='wibble'
run: image.v
	docker run \
		-e SSHKEY \
		-e SSHPASS \
		-v ${PWD}/hosts:/etc/ansible/hosts \
		--network=host \
		$$(cat image.v) \
		ansible all -m ping
