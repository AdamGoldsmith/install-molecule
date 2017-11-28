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
DEMO_PROMPT="${GREEN}\u@${NICKNAME}${BLACK}: ${BLACK}\$ "

# hide the evidence
clear


# put your demo awesomeness here
pe "sudo yum install gcc python-devel openssl-devel libffi-devel python-pip"
pe "sudo pip install --upgrade pip"
pe "sudo pip install ansible"
pe "sudo pip install docker"
pe "sudo pip install molecule"

