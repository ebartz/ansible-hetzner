
# Description

Ansible Playbook that will create a Rancher Master and a defined count of workers.

Before you start make sure to create the `group_vars/servers.yml` from the `server.yaml.example` file.

To run this, you need to do something like this:


# Requirements

* Install Ansible 2.8 or newer
* Install required Python modules (`go to folder root and execute pip install -r pyrequirements.txt`)
* Enable hcloud inventory in Ansible configuration (explained [here](https://docs.ansible.com/ansible/latest/plugins/inventory.html))

# Usage
## Install Hetzner environment
### Spawn Env at Hetzner

* rename all.yml.example and servers.yml.example and fill in information

```
export HCLOUD_TOKEN=hetzner-token-goes-here
ansible-playbook -i hcloud.yml site.yml
```
### Destroy Servers 
```
export HCLOUD_TOKEN=hetzner-token-goes-here
ansible-playbook -i hcloud.yml site.yml -e hetzner_serverstate=absent
```
### Cleanup Rancher Installation on Servers

```
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i hcloud.yml cleanup.yml -e 'ansible_python_interpreter=/usr/bin/python3'
```

## Install local Helm on Master Server

If it is necessary you can install Helm localy on Masterserver

ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i hcloud.yml helm.yml -e 'ansible_python_interpreter=/usr/bin/python3'

## Install in existing environment

* rename inventory.yml.example to inventory.yml and fill information
* Execute:   
    ```
    ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inventory.yml site_local.yml -e 'ansible_python_interpreter=/usr/bin/python3'
    ```

### Cleanup Rancher Installation on Servers

```
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inventory.yml cleanup.yml -e 'ansible_python_interpreter=/usr/bin/python3'
```

### Install local Helm on Master Server

If it is necessary you can install Helm localy on Masterserver

ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inventory.yml helm.yml -e 'ansible_python_interpreter=/usr/bin/python3'

