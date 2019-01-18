# Description

Ansible Playbook that will create a Rancher Master and a defined count of workers.

Before you start make sure to create the group_vars/servers.yml from the server.yaml.example file.

To run this, you need to do something like this:

```
export HCLOUD_TOKEN=hetzner-token-goes-here
ansible-playbook -i $(which hcloud_inventory) site.yml
```

It also depends on [hcloud-hetzner](https://github.com/thetechnick/hcloud-ansible)
