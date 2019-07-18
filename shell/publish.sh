#!/bin/bash

#################
## Publish images to user accessible portions of their respective cloud providers. 
##
## Minikube is intentionally omitted since that's not intended for end user consumption and is just used for running tests.
## No real functional reason this file is separate from build.sh outside of letting Jenkins show this as being its own stage
## since it takes so long (lets build initiators tell progress is being made).
#################

set -x

ansible-playbook ansible/${targetEnvironment}-provision.yml > ansible-publish-${targetEnvironment}.log 2>&1
