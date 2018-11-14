## Demo-magic script to install molecule

### Requirements

Git

`sudo yum install git`

[demo-magic](https://github.com/paxtonhare/demo-magic.git)

```
git clone https://github.com/paxtonhare/demo-magic.git
sudo yum install pv
```

### Running it

```
git clone https://github.com/AdamGoldsmith/install-molecule.git
cd install-molecule
./install-molecule.sh
```

### Asciinema of installation (yes you can select the text!)

<a href="https://asciinema.org/a/4Mfi4jienIUNT3V1wG81tGaCE?autoplay=1"><img src="https://asciinema.org/a/4Mfi4jienIUNT3V1wG81tGaCE.png" title="Installation video" alt="Installation video" width="640"/></a>

### Tested on

* Centos 7.4

### Ansible Playbook

Added an Ansible playbook under the ansible directory
* Tested on CentOS 7.5

Add host information to ansible/inv.d/inventory first

```
cd ansible
ansible-playbook playbooks/molecule.yml
```

### Author

*Adam Goldsmith*

