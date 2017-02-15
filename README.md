# docker-ansible-playbook

Dockerfile to execute ansible playbook from container.

##How to use

To execute ansible use the command:

```docker run --rm -it v `pwd`:/mnt/ansible dbravin/docker-ansible-playbook site.yml```
## SSH keys

To use local ssh keys use:

``` docker run --rm -it -v ~/.ssh/id_rsa:/root/.ssh/id_rsa -v ~/.ssh/id_rsa.pub:/root/.ssh/id_rsa.pub -v `pwd`:/mnt/ansible dbravin/docker-ansible-playbook site.yml ```

## Common option for ansible playbook 

``` -v -K -i hosts site.yml ```

- -v verbose mode
- -K ask for privilege escalation password
- -i specify inventory host path
