FROM ubuntu:xenial

RUN apt-get update  \
	&& apt-get install -y software-properties-common

RUN apt-add-repository ppa:ansible/ansible

RUN apt-get update \
	&& apt-get install -y ansible curl \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /mnt/ansible

WORKDIR /mnt/ansible

ENTRYPOINT ["ansible-playbook"]
