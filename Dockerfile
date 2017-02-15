FROM centos:latest


RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install bash-completion && \
    yum -y install ansible && \
    yum -y install PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools git python-pip


RUN yum install -y sshpass

RUN mkdir -p /mnt/ansible

WORKDIR /mnt/ansible

ENTRYPOINT ["ansible-playbook"]