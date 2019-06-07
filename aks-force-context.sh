# AKS Context Utility
#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Usage:"
    echo "   force-context [yourClusterName] [yourResourceGroupName]"
    az aks list -o table
    exit 1
fi

az aks get-credentials -n $1 -g $2
kubectl config get-contexts
kubectl config use-context $1
