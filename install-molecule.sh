#!/usr/bin/env bash

########################
# include the magic
########################
. /usr/local/bin/demo-magic.sh


########################
# Configure the options
########################

#
# speed at which to simulate typing. bigger num = faster
#
# TYPE_SPEED=20

#
# custom prompt
#
# see http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/bash-prompt-escape-sequences.html for escape sequences
#
DEMO_PROMPT="${GREEN}\u@${NICKNAME}${BLUE}: ${COLOR_RESET}\$ "

# Clear the screen
clear


# Start the installation of molecule including its dependencies
pe "sudo yum install -y gcc python-devel openssl-devel libffi-devel python-pip"
pe "sudo pip install --upgrade pip"
pe "sudo pip install ansible"
pe "sudo pip install docker-py"
pe "sudo pip install molecule"
pe "sudo yum install -y yum-utils device-mapper-persistent-data lvm2"
pe "sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo"
pe "sudo yum-config-manager --enable docker-ce-edge"
pe "sudo yum-config-manager --enable docker-ce-test"
pe "sudo yum -y install docker-ce"
pe "sudo systemctl start docker"
pe "sudo systemctl enable docker"

#p "An example of initialising a new role called foo using driver docker"
pe "molecule init role --role-name molecule-test --driver-name docker"

