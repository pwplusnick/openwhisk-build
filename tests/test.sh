#!/usr/bin/env bash

if [[ -z $1 ]]; then
    COMMAND="apply"
else
    COMMAND=$1
fi

#kubectl $COMMAND -f tasks/install-deps.yaml
kubectl $COMMAND -f tasks/python/01-install-deps.yaml
#kubectl $COMMAND -f tests/taskrun-install-npm-packages.yaml
kubectl $COMMAND -f tests/taskrun-install-pip-packages.yaml
# Get the status of taskrun
# kubectl get taskrun.tekton.dev/taskrun-install-npm-packages -o json | jq .status.conditions[].status
# kubectl get taskrun.tekton.dev/taskrun-install-npm-packages-without-path -o json | jq .status.conditions[].status

#kubectl $COMMAND -f tasks/javascript/build-archive.yaml
#kubectl $COMMAND -f tests/javascript/taskrun-build-archive.yaml

