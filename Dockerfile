FROM armv7/armhf-ubuntu:14.04.3

#ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
        && apt-get upgrade -y \
        && apt-get install -y vim software-properties-common

RUN apt-add-repository -y ppa:ansible/ansible

RUN apt-get update \
        && apt-get install -y ansible

RUN mkdir -p /mnt/ansible

WORKDIR /mnt/ansible

ENTRYPOINT ["ansible-playbook"]