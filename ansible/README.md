# Description

Playbook to prepare a fedora-based distro and then install molecule for writing Ansible tests - not complete yet

# Requires

Ansible 2.7 (or later) for reboot module

# To run it

```
ansible-galaxy install -r ./roles/requirements.yml
ansible-playbook playbooks/molecule.yml
```

# Author

Adam Goldsmith, 2018

# Licence

MIT 2018
