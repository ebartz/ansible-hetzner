# Description

Ansible Playbook that will create a Rancher Master and a defined count of workers.

Before you start make sure to create the `group_vars/servers.yml` from the `server.yaml.example` file.

To run this, you need to do something like this:

## Requirements

* Install Ansible 2.8 or newer
* Install hcloud Python module (`pip install hcloud-python`)
* Enable hcloud inventory in Ansible configuration (explained [here](https://docs.ansible.com/ansible/latest/plugins/inventory.html))

## Usage

```
export HCLOUD_TOKEN=hetzner-token-goes-here
ansible-playbook -i hcloud.yml site.yml
```

